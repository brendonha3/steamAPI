component displayname="Steam service" accessors="true" {

    function init ( struct fw ) {
        variables.fw = fw;
        return this;
    }

    function getSteamSummary( required numeric steamID ) {
        cfhttp( result="result", method = "GET", charset = "utf-8", url = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=E8E987E032FE559B7E1D84E7C85E2317&steamids=#arguments.steamID#");
        return result;
    }

}