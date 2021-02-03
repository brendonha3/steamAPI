component name="Steam controller" accessors="true" {

    property steamService;

    function init ( struct fw ) {
        variables.fw = fw;
        return this;
    }

	public void function default( struct rc ) {
		variables.fw.redirect( action='steam.display', append='none');
	}

    function display ( struct rc ) {
        param name="rc.steamID" default="76561197972547940";
        rc.steamRequest = steamService.getSteamSummary( rc.steamID );
        rc.steamJSON = deserializeJSON(rc.steamRequest.filecontent);
        rc.steamResult = rc.steamJSON.response.players[1];
        rc.subtitle = "Steam query";
    }
}