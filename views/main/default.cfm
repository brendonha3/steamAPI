<cfoutput>
    <div class="grid">
        <header>
            <a href="#buildURL( action = 'steam.display' )#">Steam API Project</a>
        </header>

        <aside class="sidebar-left">
            Left Sidebar
        </aside>

        <div class="box">
            <div class="box-header">
                Box 1
            </div>
            <div class="box-body">
                Box 1 body
            </div>
        </div>

        <div class="box">  
            <div class="box-header">
                Box 2
            </div>
            <div class="box-body">
                Box 2 body
            </div>
        </div>
        
        <div class="box">
            <div class="box-header">
                Box 3
            </div>
            <div class="box-body">
                Box 3 body
            </div>
        </div>

        <div class="box">
            <div class="box-header">
                Box 4
            </div>
            <div class="box-body">
                Box 4 body
            </div>
        </div>

        <div class="box">
            <div class="box-header">
                Box 5
            </div>
            <div class="box-body">
                Box 5 body
            </div>
        </div>

        <div class="box">
            <div class="box-header">
                Box 6
            </div>
            <div class="box-body">
                Box 6 body
            </div>
        </div>
        
        <div class="box">
            <div class="box-header">
                Box 7
            </div>
            <div class="box-body">
                Box 7 body
            </div>
        </div>
        
        <div class="box">
            <div class="box-header">
                Box 8
            </div>
            <div class="box-body">
                Box 8 body
            </div>
        </div>
        
        <div class="box">
            <div class="box-header">
                Box 9
            </div>
            <div class="box-body">
                Box 9 body
            </div>
        </div>
    </div>

    <cfdump var="#rc#" />

    <cfhttp result="result" method="GET" charset="utf-8" url="http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=E8E987E032FE559B7E1D84E7C85E2317&steamids=76561197972547940" />

    <cfdump var="#result#" />

</cfoutput>