<cfoutput>

    <cfdump var="#rc.steamResult#" />

    <div class="grid">
        <header>
            <h1>Steam API Project</h1>
        </header>

        <aside class="sidebar-left">
            Left Sidebar
        </aside>

        <div class="box">
            <div class="box-header">
                <a href="#rc.steamResult.profileurl#"><p>#rc.steamResult.personaname#</p></a>
            </div>
            <div class="box-body">
                <img src="#rc.steamResult.avatarfull#" alt="Steam Avatar">
            </div>
        </div>

        <div class="box">  
            <div class="box-header">
                <p>Currently playing</p>
            </div>
            <div class="box-body">
                <a href="https://store.steampowered.com/app/#rc.steamResult.gameid#"><p>#rc.steamResult.gameextrainfo#</p></a>
            </div>
        </div>
        
        <div class="box">
            <div class="box-header">
                <p>Box 3</p>
            </div>
            <div class="box-body">
                <p>Box 3 body</p>
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
                <p>#rc.steamResult.locstatecode#, #rc.steamResult.loccountrycode#</p>
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
