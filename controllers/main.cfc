component name="Main controller" output="false" {

    function init ( struct fw ) {
        variables.fw = fw;
        return this;
    }

	public void function default( struct rc = {} ) {
		param name="rc.steamID" default="76561197972547940";
	}

}