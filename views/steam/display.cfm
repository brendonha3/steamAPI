<cfoutput>

    <div class="grid">
        <header>
            <h1>Steam API Project</h1>
        </header>

        <aside class="sidebar-left">
            Left Sidebar
        </aside>

        <div class="box">
            <div class="box-header">
                <a href="#rc.profileURL#"><p>#rc.personaName#</p></a>
            </div>
            <div class="box-body">
                <img src="#rc.avatarFull#" alt="Steam Avatar">
            </div>
        </div>

        <div class="box">  
            <div class="box-header">
                <p>Currently playing</p>
            </div>
            <div class="box-body">
                <a href="https://store.steampowered.com/app/#rc.gameID#"><p>#rc.gameExtraInfo#</p></a>
            </div>
        </div>
        
        <div class="box">
            <div class="box-header">
                <p>Top recently played</p>
            </div>
            <div class="box-body-list">
                <cfloop index="i" from="1" to="3">
                    <ul>#rc.recentlyPlayed[i].name# #createTimeSpan(0, 0, #rc.recentlyPlayed[i].playtime_2weeks#, 0)#</ul>
                </cfloop>
            </div>
        </div>

        <div class="box">
            <div class="box-header">
                <p>Box 4</p>
            </div>
            <div class="box-body">
                <p>Box 4 body</p>
            </div>
        </div>

        <div class="box">
            <div class="box-header">
                <p>Location</p>
            </div>
            <div class="box-body">
                <p>#rc.locStateCode#, #rc.locCountryCode#</p>
            </div>
        </div>

        <div class="box">
            <div class="box-header">
                <p>Box 6</p>
            </div>
            <div class="box-body">
                <p>Box 6 body</p>
            </div>
        </div>
        
        <div class="box">
            <div class="box-header">
                <p>Box 7</p>
            </div>
            <div class="box-body">
                <p>Box 7 body</p>
            </div>
        </div>
        
        <div class="box">
            <div class="box-header">
                <p>Box 8</p>
            </div>
            <div class="box-body">
                <p>Box 8 body</p>
            </div>
        </div>
        
        <div class="box">
            <div class="box-header">
                <p>Box 9</p>
            </div>
            <div class="box-body">
                <p>Box 9 body</p>
            </div>
        </div>
    </div>
</cfoutput>
