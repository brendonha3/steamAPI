component name="Steam controller" accessors="true" {

    property steamService;

    function init ( struct fw ) {
        variables.fw = fw;
        return this;
    }

	public void function default ( struct rc ) {
		variables.fw.redirect( action='steam.display', append='none');
	}

    function display ( struct rc ) {
        param name="rc.steamID" default="76561197972547940";
        if ( structKeyExists( rc, 'steamID' ) && rc.steamID > 0 ) {
            var steam = steamService.getSteamSummary( rc.steamID );
            rc.recentlyPlayed = steamService.getSteamRecentlyPlayed( rc.steamID );
            rc.profileURL = steam.profileurl;
            rc.personaName = steam.personaname;
            rc.avatarFull = steam.avatarfull;
            rc.locStateCode = steam.locstatecode;
            rc.locCountryCode = steam.loccountrycode;
            if ( structKeyExists( steam, 'gameid') ) {
                rc.gameID = steam.gameid;
                rc.gameExtraInfo = steam.gameextrainfo;
            } else {
                rc.gameID = '0';
                rc.gameExtraInfo = 'Not playing.';
            }
        } else {
            rc.profileURL = 'https://www.steampowered.com';
            rc.personaName = 'No steamID provided.';
            rc.avatarFull = 'https://steamuserimages-a.akamaihd.net/ugc/868480752636433334/1D2881C5C9B3AD28A1D8852903A8F9E1FF45C2C8/';
            rc.locStateCode = 'No where';
            rc.locCountryCode = 'Somewhere';
            rc.gameID = '0';
            rc.gameExtraInfo = 'No player.';
        }
        rc.subtitle = "Steam query";
    }
}