component displayname="Steam service" accessors="true" {

    function init ( struct fw ) {
        variables.fw = fw;
        return this;
    }

    function getSteamSummary( required numeric steamID ) {
        cfhttp( result="rawSummaryJSON", method = "GET", charset = "utf-8", url = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=E8E987E032FE559B7E1D84E7C85E2317&steamids=#arguments.steamID#");
        var summaryJSON = deserializeJSON(rawSummaryJSON.filecontent);
        var summaryResult = summaryJSON.response.players[1];
        return summaryResult;
    }

    function getSteamRecentlyPlayed ( required numeric steamID ) {
        cfhttp( result="rawRecentlyJSON", method = "GET", charset = "utf-8", url = "http://api.steampowered.com/IPlayerService/GetRecentlyPlayedGames/v0001/?key=E8E987E032FE559B7E1D84E7C85E2317&steamid=#arguments.steamID#&format=json");
        var recentlyJSON = deserializeJSON(rawRecentlyJSON.filecontent);
        var recentlyResult = recentlyJSON.response.games;
        return recentlyResult;
    }

}