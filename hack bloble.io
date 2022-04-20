// ==UserScript==
// @name         ULTRONSCRIPT V4 - ORIGINAL
// @namespace    http://tampermonkey.net/
// @version      0.4
// @description  try to take over the world!
// @author       NeutroX
// @author       Moderno
// @match        http://bloble.io/*
// @grant        none
// @icon         https://media.discordapp.net/attachments/787052568132059147/802241483154522152/unknown.png
// ==/UserScript==
var IDjogador = 0;
var SkinBots = 0;

/*novo*/
var ThemeSelect = document.createElement('ThemeSelect');
var Theme=document.createElement("style");Theme.innerText=`#menuContainer{background:url("https://bit.ly/2CLHd93")fixed top no-repeat}#userNameInput{font-family:'regularF';font-size:30px;border-radius:8px;color:#ffffff;padding:10px;height:30px;width:500px;padding-left:20px;border:none;margin-left:10px}#enterGameButton{font-family:'regularF';padding-top:180px;font-size:30px;padding:0px;color:#ffffff;height:40px;width:120px;border:none;cursor:pointer;margin-left:0px;border-radius:8px}#skinSelector{position:top;display:inline-block;font-family:'regularF';font-size:24px;border:none;border-radius:8px;color:#ffffff;cursor:pointer}#leaderboardContainer{position:absolute;top:0px;right:0px;padding:10px;font-family:'regularF';font-size:24px;border-radius:5px;color:#ffffff}.leaderYou{display:inline-block;max-width:150px;margin-left:10px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;-o-text-overflow:ellipsis}.leader{color:#ffffff75;display:inline-block;max-width:150px;margin-left:10px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;-o-text-overflow:ellipsis}.upgradeInfo{margin-top:10px;padding:10px;background-color:#28282850;border-radius:8px;font-family:'regularF';max-width:200px;overflow:auto;cursor:pointer;pointer-events:all}.unitInfoDesc{font-size:14px}.unitInfoLimit{display:inline-block;float:right;text-align:right;padding-top:0px;font-size:18px}.unitInfoType{padding-top:0px;font-size:18px;float:left}.unitInfo{padding:10px;background-color:#28282850;border-radius:8px;font-family:'regularF';max-width:250px;overflow:auto}.unitInfoCost{font-size:16px}.unitInfoName{font-size:24px}#chatListWrapper{border-radius:4px 4px 0px 0px;height:200px}.memberscolor{color:#ff0000ab}.unitItem{pointer-events:all;margin-left:10px;position:relative;display:inline-block;width:69px;height:65px;border-radius:12px;cursor:pointer}#chatBox{FONT-VARIANT-EAST-ASIAN:JIS83;position:absolute;bottom:0px;right:10px;width:300px;overflow:hidden}#chatInput{font-family:'regularF';font-size:20px;padding:5px;width:100%;pointer-events:all;outline:none;border:white;box-sizing:border-box;border-radius:1px 1px 18px 18px}#scoreContainer{display:inline-block;padding:10px;font-family:"regularF";font-size:24px;border-radius:5px;color:#ffffff}#joinTroopContainer{display:inline-block;padding:10px;font-family:"regularF";font-size:18px;border-radius:15px;color:#ffffff50}#joinTroopContainer{display:inline-block;padding:12px;font-family:"regularF";font-size:18px;border-radius:5px;color:#ffffff}#TotalMembers{display:inline-block;padding:10px;font-family:"regularF";font-size:18px;border-radius:15px;color:#ffffff50}#TotalMembers{display:inline-block;padding:12px;font-family:"regularF";font-size:18px;border-radius:5px;color:#ffffff}`;
function Theme00(){var NormalTheme=document.createElement("style");NormalTheme.innerText=`#noobscriptUI>div>div,.buttonClass{border: 0.5px solid #fafafa50}.upgradeInfo,.unitInfo {border: 0.5px solid #000; }#userNameInput{background-color:#ffffff}.greyMenuText{color:rgba(255,255,255,0.5)}#enterGameButton{background-color:#ff6060}#sellButton {border: 0.5px solid #000; }#skinSelector{background-color:#5783e0}#leaderboardContainer{background-color:rgba(40,40,40,0.5);border: 1px solid #000;}.botao {color: #greyMenuText;}.leaderYou{color:#ffffff60}.unitInfoDesc{color:#d1d1d1}.unitInfoLimit{color:#b2b2b2}.unitInfoType{color:#b2b2b2}.unitInfoCost{color:#fff}.unitInfoName{color:#fff}#chatListWrapper{background-color:rgba(60,60,60,0.6);border: 1px solid #000;}.chatText{color:rgba(255,255,255,0.65)}.unitItem{background-color:rgba(40,40,40,0.5)}#chatInput{background-color:rgba(30,30,30,0.6);color:#fff;border: 1px solid #000;}#scoreContainer{background-color:rgba(40,40,40,0.5);color: #000}#joinTroopContainer{background-color:rgba(40,40,40,0.5);color: #000}#TotalMembers{background-color:rgba(40,40,40,0.5);color: #000}.spanLink{color:#000}`;document.head.appendChild(NormalTheme);function ThemeNormal(){indicatorColor="#00000010",backgroundColor="#ebebeb",darkColor="#666666",outerColor="#d0d0d0",turretColor="#A8A8A8aa",bulletColor="#A8A8A8aa",redColor="#ff000025",targetColor="#A8A8A810"};ThemeNormal();window.addChatLine=function(a,d,c){if(player){var b=getUserBySID(a);if(c||0<=b){var g=c?"SERVER":users[b].name;var k=c?"SERVER":users[b].chatText;c=c?"#fff":playerColors[users[b].color]?playerColors[users[b].color]:playerColors[0];player.sid==a&&(c=player.color);b=document.createElement("li");b.className=player.sid==a?"chatme":"chatother";b.innerHTML='<span style="color:'+c+'" onclick=goto2('+a+');>'+g+' =></span> <span class="chatText">'+d+"</span>";20<chatList.childNodes.length&&chatList.removeChild(chatList.childNodes[0]);chatList.appendChild(b)}}}};
function Theme01(){var RedTheme=document.createElement("style");RedTheme.innerText=`#noobscriptUI>div>div,.buttonClass{border: 0.5px solid #ff0000ab}.upgradeInfo,.unitInfo {border: 0.5px solid #000; }#userNameInput{background-color:#ff000050}.greyMenuText{color:#ff0000ab}#enterGameButton{background-color:#ff000050}#sellButton {border: 0.5px solid #000; }#skinSelector{background-color:#ff000050}#leaderboardContainer{background-color:#ff000050;border: 1px solid #000;}.botao {color: #ff0000ab;}.leaderYou{color:#ff0000}.unitInfoDesc{color:#ff4040}.unitInfoLimit{color:#ff0000}.unitInfoType{color:#9c0000}.unitInfoCost{color:#ff0000}#sellButton {border: 0.5px solid #000; }.unitInfoName{color:#b30000}#chatListWrapper{background-color:rgba(255,0,0,0.1);border: 1px solid #000;}.chatText{color:rgb(255,220,220)}.unitItem{background-color:#50000040}#chatInput{background-color:#ff000040;color:#ff0000;border: 1px solid #000;}#scoreContainer{background-color:#ff000050;color: #000}#joinTroopContainer{background-color:#ff000050;color: #000}#TotalMembers{background-color:#ff000050;color: #000}.spanLink{cursor:pointer;color:#000}a:visited{color:#ff0000aa}`;document.head.appendChild(RedTheme);function ThemeRed(){indicatorColor="#ff7d7d50",backgroundColor="#161600",darkColor="#ff000075",outerColor="#1b1b00",turretColor="#00000080",bulletColor="#ffff00",redColor="#ff000099",targetColor="#c90000"};ThemeRed();window.addChatLine=function(a,d,c){if(player){var b=getUserBySID(a);if(c||0<=b){var g=c?"SERVER":users[b].name;var k=c?"SERVER":users[b].chatText;c=c?"#fff":playerColors[users[b].color]?playerColors[users[b].color]:playerColors[0];player.sid==a&&(c="#ff0000");b=document.createElement("li");b.className=player.sid==a?"chatme":"chatother";b.innerHTML='<span style="color:'+c+'" onclick=goto2('+a+');>'+g+' =></span> <span class="chatText">'+d+"</span>";20<chatList.childNodes.length&&chatList.removeChild(chatList.childNodes[0]);chatList.appendChild(b)}}}};
function Theme02(){var YellowTheme=document.createElement("style");YellowTheme.innerText=`#noobscriptUI>div>div,.buttonClass{border: 0.5px solid #ffff00ab}.upgradeInfo,.unitInfo {border: 0.5px solid #000; }#userNameInput{background-color:#ffff0050}.greyMenuText{color:#ffff00ab}#enterGameButton{background-color:#ffff0050}#sellButton {border: 0.5px solid #000; }#skinSelector{background-color:#ffff0050}#leaderboardContainer{background-color:#ffff0050;border: 1px solid #000;}.botao {color: #ffff00ab;}.leaderYou{color:#ffff00}.unitInfoDesc{color:#ffff40}.unitInfoLimit{color:#ffff00}.unitInfoType{color:#9c9c00}.unitInfoCost{color:#ffff00}#sellButton {border: 0.5px solid #000; }.unitInfoName{color:#b3b300}#chatListWrapper{background-color:rgba(255,255,0,0.1);border: 1px solid #000;}.chatText{color:rgb(255,255,220)}.unitItem{background-color:#50500040}#chatInput{background-color:#ffff0040;color:#ffff00;border: 1px solid #000;}#scoreContainer{background-color:#ffff0050;color: #000}#joinTroopContainer{background-color:#ffff0050;color: #000}#TotalMembers{background-color:#ffff0050;color: #000}.spanLink{cursor:pointer;color:#000}a:visited{color:#ffff00aa}`;document.head.appendChild(YellowTheme);function ThemeYellow(){indicatorColor="#ffff7d50",backgroundColor="#161600",darkColor="#ffff0075",outerColor="#1b1b00",turretColor="#00000080",bulletColor="#ffff00",redColor="#ffff0099",targetColor="#c9c900"};ThemeYellow();window.addChatLine=function(a,d,c){if(player){var b=getUserBySID(a);if(c||0<=b){var g=c?"SERVER":users[b].name;var k=c?"SERVER":users[b].chatText;c=c?"#fff":playerColors[users[b].color]?playerColors[users[b].color]:playerColors[0];player.sid==a&&(c="#ffff00");b=document.createElement("li");b.className=player.sid==a?"chatme":"chatother";b.innerHTML='<span style="color:'+c+'" onclick=goto2('+a+');>'+g+' =></span> <span class="chatText">'+d+"</span>";10<chatList.childNodes.length&&chatList.removeChild(chatList.childNodes[0]);chatList.appendChild(b)}}}};
function Theme03(){var GreenTheme=document.createElement("style");GreenTheme.innerText=`#noobscriptUI>div>div,.buttonClass{border: 0.5px solid #00ff00ab}.upgradeInfo,.unitInfo {border: 0.5px solid #000; }#userNameInput{background-color:#00ff0050}.greyMenuText{color:#00ff00ab}#enterGameButton{background-color:#00ff0050}#sellButton {border: 0.5px solid #000; }#skinSelector{background-color:#00ff0050}#leaderboardContainer{background-color:#00ff0050;border: 1px solid #000;}.botao {color: #00ff00ab;}.leaderYou{color:#00ff00}.unitInfoDesc{color:#40ff40}.unitInfoLimit{color:#00ff00}.unitInfoType{color:#009c00}.unitInfoCost{color:#00ff00}#sellButton {border: 0.5px solid #000; }.unitInfoName{color:#00b300}#chatListWrapper{background-color:rgba(0,255,0,0.1);border: 1px solid #000;}.chatText{color:rgb(220,255,220)}.unitItem{background-color:#00500040}#chatInput{background-color:#00ff0040;color:#00ff00;border: 1px solid #000;}#scoreContainer{background-color:#00ff0050;color: #000}#joinTroopContainer{background-color:#00ff0050;color: #000}#TotalMembers{background-color:#00ff0050;color: #000}.spanLink{cursor:pointer;color:#000}a:visited{color:#00ff00aa}`;document.head.appendChild(GreenTheme);
function ThemeGreen(){indicatorColor="#7dff7d50",backgroundColor="#001600",darkColor="#00ff0075",outerColor="#001b00",turretColor="#00000080",bulletColor="#00ff00",redColor="#00ff0099",targetColor="#00c900"};ThemeGreen();window.addChatLine=function(a,d,c){if(player){var b=getUserBySID(a);if(c||0<=b){var g=c?"SERVER":users[b].name;var k=c?"SERVER":users[b].chatText;c=c?"#fff":playerColors[users[b].color]?playerColors[users[b].color]:playerColors[0];player.sid==a&&(c="#00ff00");b=document.createElement("li");b.className=player.sid==a?"chatme":"chatother";b.innerHTML='<span style="color:'+c+'" onclick=goto2('+a+');>'+g+' =></span> <span class="chatText">'+d+"</span>";10<chatList.childNodes.length&&chatList.removeChild(chatList.childNodes[0]);chatList.appendChild(b)}}}};function Theme04(){var CyanTheme=document.createElement("style");CyanTheme.innerText=`#noobscriptUI>div>div,.buttonClass{border: 0.5px solid #00ffffab}.upgradeInfo,.unitInfo {border: 0.5px solid #000; }#userNameInput{background-color:#00ffff50}.greyMenuText{color:#00ffffab}#enterGameButton{background-color:#00ffff50}#skinSelector{background-color:#00ffff50}#leaderboardContainer{background-color:#00ffff50;border: 1px solid #000;}.botao {color: #00ffffab;}.leaderYou{color:#00ffff}.unitInfoDesc{color:#40ffff}.unitInfoLimit{color:#00ffff}.unitInfoType{color:#009c9c}.unitInfoCost{color:#00ffff}.unitInfoName{color:#00b3b3}#chatListWrapper{background-color:rgba(0,255,255,0.1);border: 1px solid #000;}.chatText{color:rgb(220,255,255)}.unitItem{background-color:#00505040}#chatInput{background-color:#00ffff40;color:#00ffff;border: 1px solid #000;}#scoreContainer{background-color:#00ffff50;color: #000}#joinTroopContainer{background-color:#00ffff50;color: #000}#TotalMembers{background-color:#00ffff50;color: #000}.spanLink{cursor:pointer;color:#000}a:visited{color:#00ffffaa}`;document.head.appendChild(CyanTheme);
function ThemeCyan(){indicatorColor="#7dffff50",backgroundColor="#001616",darkColor="#00ffff75",outerColor="#001b1b",turretColor="#00000080",bulletColor="#00ffff",redColor="#00ffff99",targetColor="#00c9c9"};ThemeCyan();window.addChatLine=function(a,d,c){if(player){var b=getUserBySID(a);if(c||0<=b){var g=c?"SERVER":users[b].name;var k=c?"SERVER":users[b].chatText;c=c?"#fff":playerColors[users[b].color]?playerColors[users[b].color]:playerColors[0];player.sid==a&&(c="#00ffff");b=document.createElement("li");b.className=player.sid==a?"chatme":"chatother";b.innerHTML='<span style="color:'+c+'" onclick=goto2('+a+');>'+g+' =></span> <span class="chatText">'+d+"</span>";10<chatList.childNodes.length&&chatList.removeChild(chatList.childNodes[0]);chatList.appendChild(b)}}}};function Theme05(){var BlueTheme=document.createElement("style");BlueTheme.innerText=`#noobscriptUI>div>div,.buttonClass{border: 0.5px solid #0000ffab}.upgradeInfo,.unitInfo {border: 0.5px solid #000; }#userNameInput{background-color:#0000ff50}.greyMenuText{color:#0000ffab}#enterGameButton{background-color:#0000ff50}#skinSelector{background-color:#0000ff50}#leaderboardContainer{background-color:#0000ff50;border: 1px solid #000;}.botao {color: #0000ffab;}.leaderYou{color:#0000ff}.unitInfoDesc{color:#4040ff}.unitInfoLimit{color:#0000ff}.unitInfoType{color:#00009c}.unitInfoCost{color:#0000ff}.unitInfoName{color:#0000b3}#chatListWrapper{background-color:rgba(0,0,255,0.1);border: 1px solid #000;}.chatText{color:rgb(220,220,255)}.unitItem{background-color:#00005040}#chatInput{background-color:#0000ff40;color:#ff0000;border: 1px solid #000;}#scoreContainer{background-color:#0000ff50;color: #000}#joinTroopContainer{background-color:#0000ff50;color: #000}#TotalMembers{background-color:#0000ff50;color: #000}.spanLink{cursor:pointer;color:#000}a:visited{color:#0000ffaa}`;document.head.appendChild(BlueTheme);
function ThemeBlue(){indicatorColor="#7d7dff50",backgroundColor="#000016",darkColor="#0000ff75",outerColor="#00001b",turretColor="#00000080",bulletColor="#0000ff",redColor="#0000ff99",targetColor="#0000c9"};ThemeBlue();window.addChatLine=function(a,d,c){if(player){var b=getUserBySID(a);if(c||0<=b){var g=c?"SERVER":users[b].name;var k=c?"SERVER":users[b].chatText;c=c?"#fff":playerColors[users[b].color]?playerColors[users[b].color]:playerColors[0];player.sid==a&&(c="#0000ff");b=document.createElement("li");b.className=player.sid==a?"chatme":"chatother";b.innerHTML='<span style="color:'+c+'" onclick=goto2('+a+');>'+g+' =></span> <span class="chatText">'+d+"</span>";10<chatList.childNodes.length&&chatList.removeChild(chatList.childNodes[0]);chatList.appendChild(b)}}}};function Theme06(){var PinkTheme=document.createElement("style");PinkTheme.innerText=`#noobscriptUI>div>div,.buttonClass{border: 0.5px solid #ff00ffab}.upgradeInfo,.unitInfo {border: 0.5px solid #000; }#userNameInput{background-color:#ff00ff50}.greyMenuText{color:#ff00ffab}#enterGameButton{background-color:#ff00ff50}#skinSelector{background-color:#ff00ff50}#leaderboardContainer{background-color:#ff00ff50;border: 1px solid #000;}.botao {color: #ff00ffab;}.leaderYou{color:#ff00ff}.unitInfoDesc{color:#ff40ff}.unitInfoLimit{color:#ff00ff}.unitInfoType{color:#9c009c}.unitInfoCost{color:#ff00ff}.unitInfoName{color:#b300b3}#chatListWrapper{background-color:rgba(255,0,255,0.1);border: 1px solid #000;}.chatText{color:rgb(255,220,255)}.unitItem{background-color:#50005040}#chatInput{background-color:#ff00ff40;color:#ff00ff;border: 1px solid #000;}#scoreContainer{background-color:#ff00ff50;color: #000}#joinTroopContainer{background-color:#ff00ff50;color: #000}#TotalMembers{background-color:#ff00ff50;color: #000}.spanLink{cursor:pointer;color:#000}a:visited{color:#ff00ffaa}`;document.head.appendChild(PinkTheme);
function ThemePink(){indicatorColor="#ff7dff50",backgroundColor="#160016",darkColor="#ff00ff75",outerColor="#1b001b",turretColor="#00000080",bulletColor="#ff00ff",redColor="#ff00ff99",targetColor="#c900c9"};ThemePink();window.addChatLine=function(a,d,c){if(player){var b=getUserBySID(a);if(c||0<=b){var g=c?"SERVER":users[b].name;var k=c?"SERVER":users[b].chatText;c=c?"#fff":playerColors[users[b].color]?playerColors[users[b].color]:playerColors[0];player.sid==a&&(c="#ff00ff");b=document.createElement("li");b.className=player.sid==a?"chatme":"chatother";b.innerHTML='<span style="color:'+c+'" onclick=goto2('+a+');>'+g+' =></span> <span class="chatText">'+d+"</span>";10<chatList.childNodes.length&&chatList.removeChild(chatList.childNodes[0]);chatList.appendChild(b)}}}};function Theme07(){var DarkTheme=document.createElement("style");DarkTheme.innerText=`#noobscriptUI,#upgradeScriptCont{background-color:#00000050} #noobscriptUI>div>div,.buttonClass{border: 0.5px solid #ffffffab}.upgradeInfo,.unitInfo,sellButton {border: 0.5px solid #000; }#userNameInput{background-color:#ffffff50}.greyMenuText{color:#ffffffab}#enterGameButton{background-color:#ffffff50}#skinSelector{background-color:#ffffff50}#leaderboardContainer{background-color:#ffffff50;border: 1px solid #000;}.botao {color: #ffffffab;}.leaderYou{color:#000}.unitInfoDesc{color:#ffffff}.unitInfoLimit{color:#ffffff}.unitInfoType{color:#9c9c9c}.unitInfoCost{color:#ffffff}.unitInfoName{color:#b3b3b3}#chatListWrapper{background-color:rgba(255,255,255,0.1);border: 1px solid #000;}.chatText{color:rgb(255,255,255)}.unitItem{background-color:#50505040}#chatInput{background-color:#ffffff40;color:#ffffff;border: 1px solid #000;}#scoreContainer{background-color:#ffffff50;color: #000}#joinTroopContainer{background-color:#ffffff50;color: #000}#TotalMembers{background-color:#ffffff50;color: #000}.spanLink{cursor:pointer;color:#000}a:visited{color:#ffffffaa}`;document.head.appendChild(DarkTheme);
function ThemeDark(){indicatorColor="#ffffff50",backgroundColor="#161616",darkColor="#ffffff75",outerColor="#1b1b1b",turretColor="#00000080",bulletColor="#ffffff",redColor="#ffffff99",targetColor="#c9c9c9"};ThemeDark();window.addChatLine=function(a,d,c){if(player){var b=getUserBySID(a);if(c||0<=b){var g=c?"SERVER":users[b].name;var k=c?"SERVER":users[b].chatText;c=c?"#fff":playerColors[users[b].color]?playerColors[users[b].color]:playerColors[0];player.sid==a&&(c="#ffffff");b=document.createElement("li");b.className=player.sid==a?"chatme":"chatother";b.innerHTML='<span style="color:'+c+'" onclick=goto2('+a+');>'+g+' =></span> <span class="chatText">'+d+"</span>";10<chatList.childNodes.length&&chatList.removeChild(chatList.childNodes[0]);chatList.appendChild(b)}}}};window.SelectTheme=function(){var Active=document.getElementById('ThemeSelect'),HotbarColor=document.getElementById('noobscriptUI'),Hotbar2Color=document.getElementById('upgradeScriptCont'),BottomColor=document.getElementsByClassName('buttonClass');if(themeSelect==0){themeSelect=1;Active.innerHTML="Theme:<span class='greyMenuText'> Normal</span>";addChat(Active.innerHTML,'Server',playerColors[player.color]);Theme00();HotbarColor.style="background-color: rgba(0,0,0,0.2);border: 2px solid #000";Hotbar2Color.style="background-color: rgba(0,0,0,0.2);border: 2px solid #000";BottomColor.style="background-color: rgba(0,0,0,0.2)"}else if(themeSelect==1){themeSelect=2;Active.innerHTML="Theme:<span class='botao'> Ultron</span>";addChat(Active.innerHTML,'Server',playerColors[player.color]);TemaUltron();HotbarColor.style="background-color: rgba(0,0,0);border: 2px solid blue";Hotbar2Color.style="background-color: rgba(0,0,0);border: 2px solid blue";BottomColor.style="background-color: rgba(0,0,0)"}else if(themeSelect==2){themeSelect=3;Active.innerHTML="Theme:<span class='greyMenuText'> Yellow</span>";addChat(Active.innerHTML,'Server',playerColors[player.color]);Theme02();HotbarColor.style="background-color: rgba(255,255,0,0.2);border: 2px solid #000";Hotbar2Color.style="background-color: rgba(255,255,0,0.2);border: 2px solid #000";BottomColor.style="background-color: rgba(255,255,0,0.2)"}else if(themeSelect==3){themeSelect=4;Active.innerHTML="Theme:<span class='greyMenuText'> Green</span>";addChat(Active.innerHTML,'Server',playerColors[player.color]);Theme03();HotbarColor.style="background-color: rgba(0,255,0,0.2);border: 2px solid #000";Hotbar2Color.style="background-color: rgba(0,255,0,0.2);border: 2px solid #000";BottomColor.style="background-color: rgba(0,255,0,0.2)"}else if(themeSelect==4){themeSelect=5;Active.innerHTML="Theme:<span class='greyMenuText'> Cyan</span>";addChat(Active.innerHTML,'Server',playerColors[player.color]);Theme04();HotbarColor.style="background-color: rgba(0,255,255,0.2);border: 2px solid #000";Hotbar2Color.style="background-color: rgba(0,255,255,0.2);border: 2px solid #000";BottomColor.style="background-color: rgba(0,255,255,0.2)"}else if(themeSelect==5){themeSelect=6;Active.innerHTML="Theme:<span class='greyMenuText'> Blue</span>";addChat(Active.innerHTML,'Server',playerColors[player.color]);Theme05();HotbarColor.style="background-color: rgba(0,0,255,0.2);border: 2px solid #000";Hotbar2Color.style="background-color: rgba(0,0,255,0.2);border: 2px solid #000";BottomColor.style="background-color: rgba(0,0,255,0.2)"}else if(themeSelect==6){themeSelect=7;Active.innerHTML="Theme:<span class='greyMenuText'> Pink</span>";addChat(Active.innerHTML,'Server',playerColors[player.color]);Theme06();HotbarColor.style="background-color: rgba(255,0,255,0.2);border: 2px solid #000";Hotbar2Color.style="background-color: rgba(255,0,255,0.2);border: 2px solid #000";BottomColor.style="background-color: rgba(255,0,255,0.2)"}else{themeSelect=0;Active.innerHTML="Theme:<span class='greyMenuText'> Dark</span>";addChat(Active.innerHTML,'Server',playerColors[player.color]);Theme07();HotbarColor.style="background-color: rgba(0,0,0,0.5);border: 2px solid #000";Hotbar2Color.style="background-color: rgba(0,0,0,0.5);border: 2px solid #000"};window.statusBar();return ThemeSelect};
function TemaUltron() {darkColor = "blue", backgroundColor = "#000", outerColor = "#050505", indicatorColor = "#fff", turretColor = "#00000099", bulletColor = "#A8A8A8", redColor = "blue", targetColor = "#b4b4b4"; playerColors = "#f9ff6070 #ff606070 #82ff6070 #607eff70 #60eaff70 #ff60ee70 #e360ff70 #ffaf6070 #a3ff6070 #ff609c70 #60ff8270 #cc60ff70 #c6595970 #404b7f70 #f2d95770 #c5525270 #c5525270 #498e5670 #c4515170 #c3545470 #c8575770 #c8595970 #5b74b670 #cd686870 #5c81bd70 #5bb14670 #d8c96370 #c5525270 #404b7f70 #c5525270 #c5525270 #c5525270 #c5525270 #404b7f70 #498e5670 #498e5670 #dbd24570 #ca514e70 #43427e70".split(" ");var temaoficial=document.createElement("style");temaoficial.innerText=` html, body { width: 100%; height: 100%; cursor: Crosshair; -webkit-touch-callout: none; -webkit-user-select: none; -khtml-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none; }  body { background-color: #ffffff; margin: 0; overflow: hidden; cursor: Crosshair; }  canvas { image-rendering: optimizeSpeed; image-rendering: -moz-crisp-edges; image-rendering: -webkit-optimize-contrast; image-rendering: -o-crisp-edges; image-rendering: crisp-edges; -ms-interpolation-mode: nearest-neighbor; }  .grecaptcha-badge { visibility: hidden !important; }  .material-icons {  }  a:link { color: #009bff;text-decoration: none; }  a:visited { color: #009bff; }  a:hover { color: #010b1a; }  .spanLink { cursor: pointer;color: #041d91; }  .allert { color: #850000; }  .botao { color: #041d91; }  .spanLink:hover { color: #010b1a; }  .deadLink { cursor: auto; color: #ffffff; }  .deadLink:hover { color: #ffffff; }  .horizontalCWrapper { width: 100%;text-align: center; }  .centerContent { text-align: center;width: 100%; }  #twitterFollBt { z-index: 200; }  #shareContainer { padding: 5px; width: 100%; position: absolute; top: 10px; left: 10px; position: absolute; z-index: 200; }  #darkener { display: block; position: absolute; width: 100%; height: 100%; background-color: #000000; }  #menuContainer { width: 100%; height: 100%; display: flex; position: absolute; top: 10px; z-index: 100; align-items: center; text-align: center; } #optionsContainer { padding: 10px; position: absolute; right: 1200px; top: 0px; font-family: 'regularF'; text-align: right; color: #009bff; z-index: 100; font-size: 20px; } #lobbyKey { font-size: 20px;  }  #smallAdContainer { position: absolute; right: 14px; bottom: 44px; z-index: 100; border: dashed 6px rgba(35, 35, 35, 0.0); }  #twitterFollBt { position: absolute;left: 15px;bottom: 40px; }  #followText { position: absolute; left: 15px; bottom: 75px; color: #fff; font-size: 28px; font-family: 'regularF'; }  #youtuberOf { z-index: 100; position: absolute; top: 10px; left: 10px; color: #fff; font-size: 20px; font-family: 'regularF'; }  #youtubeContainer { margin-top: 5px; }  #mainCanvas { position: absolute;width: 100%;height: 100%; }  #gameUiContainer { position: absolute; width: 100%; height: 100%; display: none; pointer-events: none; }  #adContainer { width: 100%; text-align: center; margin-top: 20px; display: inline-block; }  #adHolder { display: inline-block;border: dashed 6px rgba(35, 35, 35, 0.0); }  #leaderboardContainer { position: absolute; top: 10px; right: 10px; padding: 10px; background-color: #000000; font-family: 'regularF'; font-size: 30px; border-radius: 4px; color: #fff;border: 1px solid #041d91; }  .leaderboardItem { margin-top: 2px; color: rgba(255, 255, 255); font-family: 'regularF'; font-size: 17px; }  .leaderYou { color: #009bff; display: inline-block; max-width: 150px; margin-left: 10px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; -o-text-overflow: ellipsis; }  .leader { color: rgba(255, 255, 255); display: inline-block; max-width: 150px; margin-left: 10px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; -o-text-overflow: ellipsis; }  .scoreText { color: #c9c9c9; text-align: left; float: right; margin-left: 10px; display: inline-block; }  #statContainer { position: absolute;bottom: 10px;left: 10px; }  #scoreContainer { display: inline-block; padding: 10px; background-color: #000000; font-family: 'regularF'; font-size: 20px; border-radius: 10px; color: #041d91;}  #unitList { text-align: center; width: 100%; position: absolute; bottom: 6px; }  .unitItem { pointer-events: all; margin-left: 10px; position: relative; display: inline-block; width: 65px; height: 65px; background-color: #00000000; border-radius: 4px; cursor: pointer; }  .unitItemA { pointer-events: all; margin-left: 10px; position: relative; display: inline-block; width: 65px; height: 65px; background-color: #00000000; border-radius: 4px; cursor: pointer; }  .unitItem:hover { background-color: #00000060; }  #unitInfoContainer { padding: 10px;display: none; }  .upgradeInfo { margin-top: 5px; padding: 10px; background-color: #000000; border-radius: 4px; font-family: 'regularF'; max-width: 200px; overflow: auto; cursor: pointer; pointer-events: all;border: 0.5px solid #041d91; }  .upgradeInfo:hover { background-color: #000000; }  .unitInfo { padding: 10px; background-color: #000000; border-radius: 4px; font-family: 'regularF'; max-width: 200px; overflow: auto;border: 0.5px solid #041d91; }  .unitInfoName { font-size: 22px;color: #fff; }  .unitInfoCost { font-size: 16px;color: #fff; }  .unitInfoDesc { font-size: 16px;color: #d1d1d1; }  .unitInfoType { padding-top: 5px; font-size: 16px; color: #b2b2b2; float: left; }  .unitInfoLimit { display: inline-block; float: right; text-align: right; padding-top: 5px; font-size: 16px; color: #b2b2b2; }  #chatBox { position: absolute; bottom: 10px; right: 10px; width: 250px; overflow: hidden; }  #chatListWrapper { background-color: #000000;border-radius: 4px 4px 0px 0px;height: 215px;border: 1px solid #041d91; }  .chatText { color: rgba(255, 255, 255); }  #chatList { width: 100%; font-family: 'regularF'; padding: 8px; margin: 0; list-style: none; box-sizing: border-box; color: #fff; overflow: hidden; word-wrap: break-word; position: absolute; bottom: 30px; font-size: 16px; line-height: 23px; }  #chatInput { background-color: #000000; font-family: 'regularF'; font-size: 16px; padding: 5px; color: #fff; width: 100%; pointer-events: all; outline: none; border: 0; box-sizing: border-box; border-radius: 0px 0px 4px 4px;border: 1px solid #041d91; }  #sellButton { display: none; position: absolute; bottom: 65px; left: 10px; background-color: #000000; border-radius: 4px; font-family: 'regularF'; font-size: 16px; color: #fff; cursor: pointer; padding: 2px; pointer-events: all;border: 0.5px solid #041d91; }  #sellButton:hover { background-color: #000000;  }  .greyMenuText { color:#010409 }  .whiteText { color: #fff; }  #userNameInput { font-family: 'regularF'; font-size: 26px; padding: 6px; padding-left: 12px; border: none; border-radius: 4px; margin-left: 10px; background-color: #010409; color: #f9f9f9; border: 2px solid #041d91; border-radius: 10px; }  #enterGameButton { font-family: 'regularF'; font-size: 26px; padding: 5px; color: #ffffff; background-color: #010409; border: none; cursor: pointer; margin-left: 10px; border-radius: 4px; border: 2px solid #041d91; border-radius: 10px; }  #enterGameButton:hover { background-color: #010b1a; }  #loadingContainer { display: none; font-family: 'regularF'; font-size: 26px; padding: 6px; color: #FFFFFF; }  #gameTitle { color: #010409; font-size: 100px; width: 100%; text-align: center; font-family: 'regularF';text-shadow: 1px 0px 0px #041d91, -1px 0px 0px #041d91, 0px 1px 0px #041d91, 0px -1px 0px #041d91; }  #instructionsText { font-size: 30px; width: 400px; text-align: center; font-family: 'regularF'; margin-top: 20px; display: inline-block;text-shadow: 1px 0px 0px #041d91, -1px 0px 0px #041d91, 0px 1px 0px #041d91, 0px -1px 0px #041d91; }  #creatorLink { z-index: 1000; position: absolute; bottom: 0; text-align: center; font-size: 20px; font-family: 'regularF'; color: #009bff; padding: 5px; margin-left: 10px; margin-bottom: 5px; padding: 5px; }  #infoLinks { z-index: 1000; position: absolute; bottom: 0; right: 0; text-align: center; font-size: 20px; font-family: 'regularF'; color: #009bff; padding: 5px; margin-right: 10px; margin-bottom: 5px; }  #infoLinks2 { z-index: 1000; position: absolute; top: 0; right: 0; text-align: center; font-size: 20px; font-family: 'regularF'; color: #009bff; padding: 5px; margin-right: 10px; margin-bottom: 5px; }  #skinInfo { position: absolute; display: none; text-align: left; width: 110px; margin-left: -145px; padding: 6px; padding-top: 13px; padding-left: 16px; color:#ffffff; border-radius: 4px;  font-family: 'regularF'; font-size: 26px; background-color: #00000000 }  #skinName { padding: 4px;padding-left: 0px;color: #ffffff;font-size: 22px; }  #skinIcon { width: 100px;height: 100px }  #joinTroopContainer { display: inline-block; padding: 10px; background-color:#000000; font-family: 'regularF'; font-size: 20px; border-radius: 10px; color: #041d91;}  #skinSelector { display: none; font-family: 'regularF'; font-size: 26px; padding: 6px; padding-left: 10px; padding-right: 10px; border: none; border-radius: 4px; background-color: #010409; color: #ffffff; cursor: pointer; border: 2px solid #041d91; border-radius: 10px; }  #skinSelector:hover { background-color: #010b1a;color: #ffffff; } #TotalMembers { display: inline-block; padding: 10px; background-color: #000000; font-family: 'regularF'; font-size: 20px; border-radius: 10px; color: #041d91;}#noobscriptUI>div>div,.buttonClass{border: 0.5px solid blue}.upgradeInfo,.unitInfo {border: 0.5px solid blue; } `;document.head.appendChild(temaoficial);}
playerBorderRot=selUnitType;
cid = UTILS.getUniqueID();localStorage.setItem("cid",cid);

function playersLinked(a,d){if(a.sid==player.sid&&d.name.startsWith(player.name)){return true;}}
window.renderPlayer = function(a, d, c, b, g) {b.save();if (a.skin && 0 < a.skin && a.skin <= playerSkins && !skinSprites[a.skin]) {var e = new Image;e.onload = function() {this.readyToDraw = !0;this.onload = null;g == currentSkin && changeSkin(0);};e.src = ".././img/skins/skin_" + (a.skin - 1) + ".png";skinSprites[a.skin] = e;};a.skin && skinSprites[a.skin] && skinSprites[a.skin].readyToDraw ? (e = a.size - b.lineWidth / 4, b.lineWidth /= 2, renderCircle(d, c, a.size, b, !1, !0)) : g || (b.fillStyle = "rgba(255, 255, 255, 0)", renderCircle(d, c, a.size, b));    b.restore();};
setInterval(function(){if(window.socket){window.socket.emit("2",window.camX,window.camY)}},20000)

function theme(){
darkColor = "blue", backgroundColor = "#000", outerColor = "#050505", indicatorColor = "#fff", turretColor = "#00000099", bulletColor = "#A8A8A8", redColor = "blue", targetColor = "#b4b4b4"; playerColors = "#f9ff6070 #ff606070 #82ff6070 #607eff70 #60eaff70 #ff60ee70 #e360ff70 #ffaf6070 #a3ff6070 #ff609c70 #60ff8270 #cc60ff70 #c6595970 #404b7f70 #f2d95770 #c5525270 #c5525270 #498e5670 #c4515170 #c3545470 #c8575770 #c8595970 #5b74b670 #cd686870 #5c81bd70 #5bb14670 #d8c96370 #c5525270 #404b7f70 #c5525270 #c5525270 #c5525270 #c5525270 #404b7f70 #498e5670 #498e5670 #dbd24570 #ca514e70 #43427e70".split(" ");
} theme();

instructionsIndex = 0;
instructionsSpeed = 0;
insturctionsCountdown = 0;
instructionsList = "UltronScript V4".split(";");
instructionsIndex = UTILS.randInt(0, instructionsList.length - 1);
document.getElementById("gameTitle").innerHTML = "UltronScript";
document.getElementById("lobbyKey").innerHTML = "Party code";
document.getElementById("smallAdContainer").innerHTML = '';
document.getElementById("infoLinks").innerHTML = '';
document.getElementById("creatorLink").innerHTML = '';
document.getElementById("adContainer").innerHTML = ''
var randomLoadingTexts = ["Carregando ..."]
var css = document.createElement("style")
css.innerText = `
html, body {
	width: 100%; height: 100%; cursor: Crosshair; -webkit-touch-callout: none; -webkit-user-select: none; -khtml-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none; }

body {
	background-color: #ffffff; margin: 0; overflow: hidden; cursor: Crosshair; }

a:link {
	color: #009bff;text-decoration: none;}

a:visited {
	color: #009bff;}

a:hover {
	color: #010b1a;}

.spanLink {
	cursor: pointer;color: #041d91;}

.allert {
color: #850000;}

.botao {
color: blue;}

.spanLink:hover {
	color: #010b1a;}

.deadLink {
	cursor: auto;color: #ffffff;}

.deadLink:hover {
	color: #ffffff;}

#shareContainer {
	padding: 5px; width: 100%; position: absolute; top: 10px; left: 10px; position: absolute; z-index: 200; }

#darkener {
	display: block; position: absolute; width: 100%; height: 100%; background-color: #000000;}

#menuContainer {
	width: 100%; height: 100%; display: flex; position: absolute; top: 10px; z-index: 100; align-items: center; text-align: center;}

#optionsContainer {
    padding: 10px; position: absolute; top: 0px; font-family: 'regularF'; text-align: right; color: #009bff; z-index: 100; font-size: 20px; }

#lobbyKey {
	font-size: 20px;}

#smallAdContainer {
	position: absolute; right: 14px; bottom: 44px; z-index: 100; border: dashed 6px rgba(35, 35, 35, 0.0); }

#gameUiContainer {
	position: absolute; width: 100%; height: 100%; display: none; pointer-events: none; }

#adHolder {
	display: inline-block;border: dashed 6px rgba(35, 35, 35, 0.0);}

#leaderboardContainer {position: absolute; top: 10px; right: 10px; padding: 10px; background-color: #000000; font-family: 'regularF'; font-size: 30px;text-shadow: 1px 0px 0px blue, -1px 0px 0px blue, 0px 1px 0px blue, 0px -1px 0px blue; border-radius: 10px; color: #000;border: 1px solid blue; }

.leaderboardItem {
	margin-top: 2px; color: rgba(255, 255, 255); font-family: 'regularF'; font-size: 17px; }

.leaderYou {color: blue; display: inline-block; max-width: 150px; margin-left: 10px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; -o-text-overflow: ellipsis;text-shadow: 0px 0px 8px blue; }

.leader {color: #0000ff80; display: inline-block; max-width: 150px; margin-left: 10px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; -o-text-overflow: ellipsis;text-shadow: 0px 0px 8px #000; }

.scoreText {color: #000; text-align: left; float: right; margin-left: 10px; display: inline-block; text-shadow: 0 0 3px blue;}

#statContainer {
	position: absolute;bottom: 10px;left: 10px;}

#scoreContainer {display: inline-block; padding: 10px; background-color: #000000; font-family: 'regularF'; font-size: 20px; border-radius: 10px; color: blue;border: 1px solid blue;}

#unitList {
	text-align: center; width: 100%; position: absolute; bottom: 6px; }

.unitItem {pointer-events: all; margin-left: 10px;border: 1px solid blue; position: relative; display: inline-block; width: 65px; height: 65px; background-color: #000000; border-radius: 10px; cursor: pointer; }

.unitItemA {
	pointer-events: all; margin-left: 10px; position: relative; display: inline-block; width: 65px; height: 65px; background-color: #00000000; border-radius: 4px; cursor: pointer; }

.unitItem:hover {background-color: #000000;border: 3px solid blue;}

#unitInfoContainer {
	padding: 10px;display: none;}

.upgradeInfo {margin-top: 5px; padding: 10px; background-color: #000000; border-radius: 4px; font-family: 'regularF'; max-width: 200px; overflow: auto; cursor: pointer; pointer-events: all;border: 0.5px solid blue; }

.upgradeInfo:hover {background-color: #000000;border: 3px solid blue;}

.unitInfo {padding: 10px; background-color: #000000; border-radius: 4px; font-family: 'regularF'; max-width: 200px; overflow: auto;border: 0.5px solid blue; }

.unitInfoName {
	font-size: 22px;color: #fff;}

.unitInfoCost {
	font-size: 16px;color: #fff;}

.unitInfoDesc {
	font-size: 16px;color: #d1d1d1;}

.unitInfoType {
	padding-top: 5px; font-size: 16px; color: #b2b2b2; float: left; }

.unitInfoLimit {
	display: inline-block; float: right; text-align: right; padding-top: 5px; font-size: 16px; color: #b2b2b2; }

#chatBox {
    position: absolute; bottom: 10px; right: 10px; width: 300px; overflow: hidden; }

#chatListWrapper {background-color: #000000;border-radius: 4px 4px 0px 0px;height: 215px;border: 1px solid blue;}

.chatText {text-shadow: 1px 0px 0px #ffffff50, -1px 0px 0px #ffffff50, 0px 1px 0px #ffffff50, 0px -1px 0px #ffffff50;color: #000;}

#chatList {width: 100%; font-family: 'regularF'; padding: 8px; margin: 0; list-style: none; box-sizing: border-box; color: #fff; overflow: hidden; word-wrap: break-word; position: absolute; bottom: 30px; font-size: 16px; line-height: 23px;}

#chatInput {background-color: #000000; font-family: 'regularF'; font-size: 16px; padding: 5px; color: #fff; width: 100%; pointer-events: all; outline: none; border: 0; box-sizing: border-box; border-radius: 0px 0px 4px 4px;border: 1px solid blue; }

#sellButton {display: none; position: absolute; bottom: 65px; left: 10px; background-color: #000000; border-radius: 4px; font-family: 'regularF'; font-size: 17px; color: #fff; cursor: pointer; padding: 2px; pointer-events: all;border: 0.5px solid blue; }

#sellButton:hover {background-color: #000000;border: 3px solid blue;}

.greyMenuText {color:#010409}

.whiteText {color: #000;text-shadow: 0 0 3px blue;}

#userNameInput {font-family: 'regularF'; font-size: 26px; padding: 6px; padding-left: 12px; border: none; border-radius: 4px; margin-left: 10px; background-color: #010409; color: #f9f9f9; border: 2px solid blue; border-radius: 10px;}

#enterGameButton {font-family: 'regularF'; font-size: 26px; padding: 5px; color: #ffffff; background-color: #010409; border: none; cursor: pointer; margin-left: 10px; border-radius: 4px; border: 2px solid blue; border-radius: 10px; }

#enterGameButton:hover {background-color: blue;}

#loadingContainer {
	display: none; font-family: 'regularF'; font-size: 26px; padding: 6px; color: #FFFFFF; }

#gameTitle {color: #010409; font-size: 15r0px; width: 100%; text-align: center; font-family: 'regularF';text-shadow:3px 0px 0px blue,-3px 0px 0px blue,0px 3px 0px blue,0px -3px 0px blue,3px 3px 0px blue,3px -3px 0px blue,-3px 3px 0px blue,-3px -3px 0px blue; }

#instructionsText {font-size: 30px; width: 400px; text-align: center; font-family: 'regularF'; margin-top: 20px; display: inline-block;text-shadow:2px 0px 0px blue,-2px 0px 0px blue,0px 2px 0px blue,0px -2px 0px blue,2px 2px 0px blue,2px -2px 0px blue,-2px 2px 0px blue,-2px -2px 0px blue; }

#creatorLink {
	z-index: 1000; position: absolute; bottom: 0; text-align: center; font-size: 20px; font-family: 'regularF'; color: #009bff; padding: 5px; margin-left: 10px; margin-bottom: 5px; padding: 5px; }

#infoLinks {
	z-index: 1000; position: absolute; bottom: 0; right: 0; text-align: center; font-size: 20px; font-family: 'regularF'; color: #009bff; padding: 5px; margin-right: 10px; margin-bottom: 5px; }

#infoLinks2 {
	z-index: 1000; position: absolute; top: 0; right: 0; text-align: center; font-size: 20px; font-family: 'regularF'; color: #009bff; padding: 5px; margin-right: 10px; margin-bottom: 5px; }

#skinInfo {
	position: absolute; display: none; text-align: left; width: 110px; margin-left: -145px; padding: 6px; padding-top: 13px; padding-left: 16px; color:#ffffff; border-radius: 4px;  font-family: 'regularF'; font-size: 26px; background-color: #00000000 }

#skinName {
	padding: 4px;padding-left: 0px;color: #ffffff;font-size: 22px;}

#joinTroopContainer {display: inline-block; padding: 10px; background-color:#000000; font-family: 'regularF'; font-size: 20px; border-radius: 10px; color: blue;border: 1px solid blue;}

#skinSelector {display: none; font-family: 'regularF'; font-size: 26px; padding: 6px; padding-left: 10px; padding-right: 10px; border: none; border-radius: 4px; background-color: #010409; color: #ffffff; cursor: pointer; border: 2px solid blue; border-radius: 10px; }

#skinSelector:hover {background-color: blue;color: #ffffff;}

#TotalMembers { display: inline-block; padding: 10px; background-color: #000000; font-family: 'regularF'; font-size: 20px; border-radius: 10px; color: blue;margin-left: 4px;border: 1px solid blue;}
`
document.head.appendChild(css)

/*SAVE BASE*/
var loadedBase = null;
var defendInterval = null;
var joinEnabled = true
var joinTroopsDiv = document.createElement("div")
joinTroopsDiv.id = "joinTroopContainer"
document.getElementById("statContainer").appendChild(joinTroopsDiv)
joinTroopsDiv.innerText = joinEnabled?("ON"):("OFF")

function buildLoadedBase(){for(var i=0;i<loadedBase.length;i++){var building = loadedBase[i];socket.emit("1",building.dir,building.dst,building.uPath[0]);console.log("socket.emit('1'," + building.dir + "," + building.dst + "," + building.uPath[0] + ")");}};
function startDefend1(){if(defendInterval!=null){return}for(var i=0;i<loadedBase.length;i++){var building = loadedBase[i];socket.emit("1",building.dir,building.dst,1);}}
function startDefend(){if(defendInterval!=null){return}defendInterval = setInterval(function(){for(var i=0;i<loadedBase.length;i++){var building = loadedBase[i];socket.emit("1",building.dir,building.dst,1);}},175)}
function startDefend2(){if(defendInterval!=null){return}for(var i=0;i<loadedBase.length;i++){var building = loadedBase[i];socket.emit("1",building.dir,building.dst,2);}}
function startDefend3(){if(defendInterval!=null){return}for(var i=0;i<loadedBase.length;i++){var building = loadedBase[i];socket.emit("1",building.dir,building.dst,3);}}
function startDefend4(){if(defendInterval!=null){return}for(var i=0;i<loadedBase.length;i++){var building = loadedBase[i];socket.emit("1",building.dir,building.dst,4);}}
function startDefend5(){if(defendInterval!=null){return}for(var i=0;i<loadedBase.length;i++){var building = loadedBase[i];socket.emit("1",building.dir,building.dst,5);}}
function saveBase(userSid){
var user = users[getUserBySID(userSid)];
var base = [];
for(var i=0;i<units.length;i++){
if(units[i].owner == userSid && units[i].type!=1){
var unit = units[i];
base.push({
dir:UTILS.getDirection(unit.x,unit.y,user.x,user.y),
dst:UTILS.getDistance(user.x,user.y,unit.x,unit.y),
uPath:unit.uPath,
});
}}
localStorage.setItem("base_"+prompt("Type the base name:"),JSON.stringify(base))
};
function loadBase(){
loadedBase = JSON.parse(localStorage.getItem("base_"+prompt("Type the base name:")))
}
addEventListener("keydown", function(a){
if (a.keyCode===76){buildLoadedBase();}
if (a.keyCode===192){startDefend1();}
if (a.keyCode===50){startDefend2();}
if (a.keyCode===51){startDefend3();}
if (a.keyCode===52){startDefend4();}
if (a.keyCode===53){startDefend5();}
else if(event.key == "p"){
startDefend()
}
if(event.key == "j"){
joinEnabled = !joinEnabled
joinTroopsDiv.innerText = joinEnabled?("ON"):("OFF")
}
})
window.addEventListener("keyup",function(event){
if(event.key == "o"){
if(defendInterval!=null){
stopDefend()
function stopDefend(){
clearInterval(defendInterval)
defendInterval = null
}
}}
})

window.unlockSkins()
window.share.getBaseUpgrades=function(){
    return [
        {
            name: "Commander",
            desc: "Powerful commander unit",
            lockMaxBuy: true,
            cost: 1500,
            unitSpawn: 9
        },
        {
            name:"Save base",
            desc:"Save base, so you can load it later"},
         {
            name:"Load base",
            desc:"Load a base, press L to build and P to defend",
         }
]}
function upgradeSelUnits(firstUnit,upgrade){
var firstUnitName = window.getUnitFromPath(firstUnit.uPath).name
for(var i=0;i<window.selUnits.length;i++){
var unit = window.selUnits[i]
if(window.getUnitFromPath(unit.uPath).name==firstUnitName){
window.socket.emit("4",unit.id,upgrade)
}
}
}
function handleActiveBaseUpgrade(sid,upgradeName){
if(upgradeName=="Save base"){
saveBase(sid)
}
else if(upgradeName == "Load base"){
loadBase()
}
}

/*GAME.JS*/
moveSelUnits=function(){if(selUnits.length){var a=player.x+targetDst*MathCOS(targetDir)+camX,d=player.y+targetDst*MathSIN(targetDir)+camY,c=1;if(c&&1<selUnits.length)for(var b=0;b<users.length;++b)if(UTILS.pointInCircle(a,d,users[b].x,users[b].y,users[b].size)){c=0;break}var g=-1;if(c)for(b=0;b<units.length;++b)if(units[b].onScreen&&units[b].owner!=player.sid&&UTILS.pointInCircle(a,d,units[b].x,units[b].y,units[b].size)){c=0;g=units[b].id;break}1==selUnits.length&&(c=0);for(var e=[],b=0;b<selUnits.length;++b)e.push(selUnits[b].id);
socket.emit("5",UTILS.roundToTwo(a),UTILS.roundToTwo(d),e,joinEnabled?(0):(c),g)}}

setupSocket=function(){socket.on("connect_error",function(){lobbyURLIP?kickPlayer("Connection failed. Please check your lobby ID"):kickPlayer("Connection failed. Check your internet and firewall settings")});socket.on("disconnect",function(a){kickPlayer("Disconnected.")});socket.on("error",function(a){kickPlayer("Disconnected. The server may have updated.")});socket.on("kick",function(a){kickPlayer(a)});socket.on("lk",function(a){partyKey=a});socket.on("spawn",function(){gameState=1;unitList=share.getUnitList();
resetCamera();toggleMenuUI(!1);toggleGameUI(!0);updateUnitList();player.upgrades=share.getBaseUpgrades();mainCanvas.focus()});socket.on("gd",function(a){gameData=a});socket.on("mpd",function(a){mapBounds=a});socket.on("ch",function(a,d,c){addChatLine(a,d,c)});socket.on("setUser",function(a,d){if(a&&a[0]){var c=getUserBySID(a[0]),b={sid:a[0],name:a[1],iName:"Headquarters",upgrades:[window.share.getBaseUpgrades()[1]],dead:!1,color:a[2],size:a[3],startSize:a[4],x:a[5],y:a[6],buildRange:a[7],gridIndex:a[8],spawnProt:a[9],skin:a[10],desc:"Base of operations of "+
a[1] + " ID: " + a[0] + " X: " + a[5] + " Y: " + a[6],kills:0,typeName:"Base"};null!=c?(users[c]=b,d&&(player=users[c])):(users.push(b),d&&(player=users[users.length-1]))}});socket.on("klUser",function(a){var d=getUserBySID(a);null!=d&&(users[d].dead=!0);player&&player.sid==a&&(hideMainMenuText(),leaveGame())});socket.on("delUser",function(a){a=getUserBySID(a);null!=a&&users.splice(a,1)});socket.on("au",function(a){a&&(units.push({id:a[0],owner:a[1],uPath:a[2]||0,type:a[3]||0,color:a[4]||0,paths:a[5],x:a[6]||0,sX:a[6]||0,y:a[7]||0,sY:a[7]||0,dir:a[8]||
0,turRot:a[8]||0,speed:a[9]||0,renderIndex:a[10]||0,turretIndex:a[11]||0,range:a[12]||0,cloak:a[13]||0}),units[units.length-1].speed&&(units[units.length-1].startTime=window.performance.now()),a=getUnitFromPath(units[units.length-1].uPath))&&(units[units.length-1].size=a.size,units[units.length-1].shape=a.shape,units[units.length-1].layer=a.layer,units[units.length-1].renderIndex||(units[units.length-1].renderIndex=a.renderIndex),units[units.length-1].range||(units[units.length-1].range=a.range),
units[units.length-1].turretIndex||(units[units.length-1].turretIndex=a.turretIndex),units[units.length-1].iSize=a.iSize)});socket.on("spa",function(a,d,c,b){a=getUnitById(a);if(null!=a){var g=UTILS.getDistance(d,c,units[a].x||d,units[a].y||c);300>g&&g?(units[a].interpDst=g,units[a].interpDstS=g,units[a].interpDir=UTILS.getDirection(d,c,units[a].x||d,units[a].y||c)):(units[a].interpDst=0,units[a].interpDstS=0,units[a].interpDir=0,units[a].x=d,units[a].y=c);units[a].interX=0;units[a].interY=0;units[a].sX=
units[a].x||d;units[a].sY=units[a].y||c;b[0]&&(units[a].dir=b[0],units[a].turRot=b[0]);units[a].paths=b;units[a].startTime=window.performance.now()}});socket.on("uc",function(a,d){unitList&&(unitList[a].count=d);forceUnitInfoUpdate=!0});socket.on("uul",function(a,d){unitList&&(unitList[a].limit+=d)});socket.on("rpu",function(a,d){var c=getUnitFromPath(a);c&&(c.dontShow=d,forceUnitInfoUpdate=!0)});socket.on("sp",function(a,d){var c=getUserBySID(a);null!=c&&(users[c].spawnProt=d)});socket.on("ab",function(a){a&&
bullets.push({x:a[0],sX:a[0],y:a[1],sY:a[1],dir:a[2],speed:a[3],size:a[4],range:a[5]})});socket.on("uu",function(a,d){if(void 0!=a&&d){var c=getUnitById(a);if(null!=c)for(var b=0;b<d.length;)units[c][d[b]]=d[b+1],"dir"==d[b]&&(units[c].turRot=d[b+1]),b+=2}});socket.on("du",function(a){a=getUnitById(a);null!=a&&units.splice(a,1)});socket.on("sz",function(a,d){var c=getUserBySID(a);null!=c&&(users[c].size=d)});socket.on("pt",function(a){scoreContainer.innerHTML="Power: <span class='spanLink'>"+a+
"</span>",player.power = a});socket.on("l",function(a){for(var d="",c=1,b=0;b<a.length;)d+="<div class='leaderboardItem'><div style='display:inline-block;float:left;' class='whiteText'>"+c+".</div> <div class='"+(player&&a[b]==player.sid?"leaderYou":"leader")+"'>"+a[b+1]+"</div><div class='scoreText'>"+a[b+2]+"</div></div>",c++,b+=3;leaderboardList.innerHTML=d})}


upgradeUnit=function(a){socket&&gameState&&(1==selUnits.length?socket.emit("4",selUnits[0].id,a):(activeBase)?(a==0&&activeBase.sid==player.sid?(socket.emit("4",0,a,1)):(handleActiveBaseUpgrade(activeBase.sid,activeBase.upgrades[a].name))):(upgradeSelUnits(selUnits[0],a)))}

window.toggleUnitInfo=function(a,d){var c="";a&&a.uPath&&(c=void 0!=a.group?a.group:a.uPath[0],c=unitList[c].limit?(unitList[c].count||0)+"/"+unitList[c].limit:"");if(a&&(forceUnitInfoUpdate||"block"!=unitInfoContainer.style.display||unitInfoName.innerHTML!=(a.iName||a.name)||lastCount!=c)){forceUnitInfoUpdate=!1;unitInfoContainer.style.display="block";unitInfoName.innerHTML=a.iName||a.name;a.cost?(unitInfoCost.innerHTML="Cost "+a.cost,unitInfoCost.style.display="block"):unitInfoCost.style.display="none";
unitInfoDesc.innerHTML=a.desc;unitInfoType.innerHTML=a.typeName;var b=a.space;lastCount=c;c='<span style="color:#fff">'+c+"</span>";unitInfoLimit.innerHTML=b?'<span><i class="material-icons" style="vertical-align: top; font-size: 20px;">&#xE7FD;</i>'+b+"</span> "+c:c;unitInfoUpgrades.innerHTML="";if(d&&a.upgrades){for(var g,e,h,f,k,c=0;c<a.upgrades.length;++c)(function(b){g=a.upgrades[b];var c=!0;g.lockMaxBuy&&void 0!=g.unitSpawn&&(unitList[g.unitSpawn].count||0)>=(unitList[g.unitSpawn].limit||0)?
c=!1:g.dontShow&&(c=!1);c&&(e=document.createElement("div"),e.className="upgradeInfo",h=document.createElement("div"),h.className="unitInfoName",h.innerHTML=g.name,e.appendChild(h),f=document.createElement("div"),f.className="unitInfoCost",g.cost?(f.innerHTML="Cost "+g.cost,e.appendChild(f)):(null),k=document.createElement("div"),k.id="upgrDesc"+b,k.className="unitInfoDesc",k.innerHTML=g.desc,k.style.display="none",e.appendChild(k),e.onmouseover=function(){document.getElementById("upgrDesc"+b).style.display="block"},
e.onmouseout=function(){document.getElementById("upgrDesc"+b).style.display="none"},e.onclick=function(){upgradeUnit(b);mainCanvas.focus()},unitInfoUpgrades.appendChild(e))})(c);g=e=h=f=k=null}}else a||(unitInfoContainer.style.display="none")}

updateGameLoop=function(a){if(player&&gameData){updateTarget();if(gameState&&mapBounds){if(camXS||camYS)camX+=camXS*cameraSpd*a,camY+=camYS*cameraSpd*a;player.x+camX<mapBounds[0]?camX=mapBounds[0]-player.x:player.x+camX>mapBounds[0]+mapBounds[2]&&(camX=mapBounds[0]+mapBounds[2]-player.x);player.y+camY<mapBounds[1]?camY=mapBounds[1]-player.y:player.y+camY>mapBounds[1]+mapBounds[3]&&(camY=mapBounds[1]+mapBounds[3]-player.y);
currentTime-lastCamSend>=sendFrequency&&(lastCamX!=camX||lastCamY!=camY)&&(lastCamX=camX,lastCamY=camY,lastCamSend=currentTime,socket.emit("2",Math.round(camX),Math.round(camY)))}renderBackground(outerColor);var d=(player.x||0)-maxScreenWidth/2+camX,c=(player.y||0)-maxScreenHeight/2+camY;mapBounds&&(mainContext.fillStyle=backgroundColor,mainContext.fillRect(mapBounds[0]-d,mapBounds[1]-c,mapBounds[2],mapBounds[3]));for(var b,g,e=0;e<units.length;++e)b=units[e],b.interpDst&&(g=b.interpDst*a*.015,b.interX+=
g*MathCOS(b.interpDir),b.interY+=g*MathSIN(b.interpDir),b.interpDst-=g,.1>=b.interpDst&&(b.interpDst=0,b.interX=b.interpDstS*MathCOS(b.interpDir),b.interY=b.interpDstS*MathSIN(b.interpDir))),b.speed&&(updateUnitPosition(b),b.x+=b.interX||0,b.y+=b.interY||0);var h,f;if(gameState)if(activeUnit){h=player.x-d+targetDst*MathCOS(targetDir)+camX;f=player.y-c+targetDst*MathSIN(targetDir)+camY;var k=UTILS.getDirection(h,f,player.x-d,player.y-c);0==activeUnit.type?(b=UTILS.getDistance(h,f,player.x-d,player.y-
c),b-activeUnit.size<player.startSize?(h=player.x-d+(activeUnit.size+player.startSize)*MathCOS(k),f=player.y-c+(activeUnit.size+player.startSize)*MathSIN(k)):b+activeUnit.size>player.buildRange-.15&&(h=player.x-d+(player.buildRange-activeUnit.size-.15)*MathCOS(k),f=player.y-c+(player.buildRange-activeUnit.size-.15)*MathSIN(k))):1==activeUnit.type||2==activeUnit.type?(h=player.x-d+(activeUnit.size+player.buildRange)*MathCOS(k),f=player.y-c+(activeUnit.size+player.buildRange)*MathSIN(k)):3==activeUnit.type&&
(b=UTILS.getDistance(h,f,player.x-d,player.y-c),b-activeUnit.size<player.startSize?(h=player.x-d+(activeUnit.size+player.startSize)*MathCOS(k),f=player.y-c+(activeUnit.size+player.startSize)*MathSIN(k)):b+activeUnit.size>player.buildRange+2*activeUnit.size&&(h=player.x-d+(player.buildRange+activeUnit.size)*MathCOS(k),f=player.y-c+(player.buildRange+activeUnit.size)*MathSIN(k)));activeUnitDir=k;activeUnitDst=UTILS.getDistance(h,f,player.x-d,player.y-c);activeUnit.dontPlace=!1;mainContext.fillStyle=
outerColor;if(0==activeUnit.type||2==activeUnit.type||3==activeUnit.type)for(e=0;e<units.length;++e)if(1!=units[e].type&&units[e].owner==player.sid&&0<=activeUnit.size+units[e].size-UTILS.getDistance(h,f,units[e].x-d,units[e].y-c)){mainContext.fillStyle=redColor;activeUnit.dontPlace=!0;break}renderCircle(h,f,activeUnit.range?activeUnit.range:activeUnit.size+30,mainContext,!0)}else if(selUnits.length)for(e=0;e<selUnits.length;++e)mainContext.fillStyle=outerColor,1<selUnits.length?renderCircle(selUnits[e].x-
d,selUnits[e].y-c,selUnits[e].size+25,mainContext,!0):renderCircle(selUnits[e].x-d,selUnits[e].y-c,selUnits[e].range?selUnits[e].range:selUnits[e].size+25,mainContext,!0);else activeBase&&(mainContext.fillStyle=outerColor,renderCircle(activeBase.x-d,activeBase.y-c,activeBase.size+50,mainContext,!0));if(selUnits.length)for(mainContext.strokeStyle=targetColor,e=0;e<selUnits.length;++e)selUnits[e].gatherPoint&&renderDottedCircle(selUnits[e].gatherPoint[0]-d,selUnits[e].gatherPoint[1]-c,30,mainContext);
for(e=0;e<users.length;++e)if(b=users[e],!b.dead){mainContext.lineWidth=1.2*outlineWidth;mainContext.strokeStyle=indicatorColor;isOnScreen(b.x-d,b.y-c,b.buildRange)&&(mainContext.save(),mainContext.translate(b.x-d,b.y-c),mainContext.rotate(playerBorderRot),renderDottedCircle(0,0,b.buildRange,mainContext),renderDottedCircle(0,0,b.startSize,mainContext),mainContext.restore());b.spawnProt&&(mainContext.strokeStyle=redColor,mainContext.save(),mainContext.translate(b.x-d,b.y-c),mainContext.rotate(playerBorderRot),
renderDottedCircle(0,0,b.buildRange+140,mainContext),mainContext.restore());for(var m=0;m<users.length;++m)e<m&&!users[m].dead&&(mainContext.strokeStyle=b.spawnProt||users[m].spawnProt?redColor:indicatorColor,playersLinked(b,users[m])&&(isOnScreen(b.x-d,b.y-c,0)||isOnScreen(users[m].x-d,users[m].y-c,0)||isOnScreen((b.x+users[m].x)/2-d,(b.y+users[m].y)/2-c,0))&&(g=UTILS.getDirection(b.x,b.y,users[m].x,users[m].y),renderDottedLine(b.x-(b.buildRange+lanePad+(b.spawnProt?140:0))*MathCOS(g)-d,b.y-(b.buildRange+
lanePad+(b.spawnProt?140:0))*MathSIN(g)-c,users[m].x+(users[m].buildRange+lanePad+(users[m].spawnProt?140:0))*MathCOS(g)-d,users[m].y+(users[m].buildRange+lanePad+(users[m].spawnProt?140:0))*MathSIN(g)-c,mainContext)))}mainContext.strokeStyle=darkColor;mainContext.lineWidth=1.2*outlineWidth;for(e=0;e<units.length;++e)b=units[e],b.layer||(b.onScreen=!1,isOnScreen(b.x-d,b.y-c,b.size)&&(b.onScreen=!0,renderUnit(b.x-d,b.y-c,b.dir,b,playerColors[b.color],mainContext)));for(e=0;e<units.length;++e)b=units[e],
1==b.layer&&(b.onScreen=!1,isOnScreen(b.x-d,b.y-c,b.size)&&(b.onScreen=!0,renderUnit(b.x-d,b.y-c,b.dir,b,playerColors[b.color],mainContext)));mainContext.fillStyle=bulletColor;for(e=bullets.length-1;0<=e;--e){b=bullets[e];if(b.speed&&(b.x+=b.speed*a*MathCOS(b.dir),b.y+=b.speed*a*MathSIN(b.dir),UTILS.getDistance(b.sX,b.sY,b.x,b.y)>=b.range)){bullets.splice(e,1);continue}isOnScreen(b.x-d,b.y-c,b.size)&&renderCircle(b.x-d,b.y-c,b.size,mainContext)}mainContext.strokeStyle=darkColor;mainContext.lineWidth=
1.2*outlineWidth;for(e=0;e<users.length;++e)b=users[e],!b.dead&&isOnScreen(b.x-d,b.y-c,b.size)&&(renderPlayer(b,b.x-d,b.y-c,mainContext),"unknown"!=b.name&&(tmpIndx=b.name+"-"+b.size,20<=b.size&&b.nameSpriteIndx!=tmpIndx&&(b.nameSpriteIndx=tmpIndx,b.nameSprite=renderText(b.name,b.size/4)),b.nameSprite&&mainContext.drawImage(b.nameSprite,b.x-d-b.nameSprite.width/2,b.y-c-b.nameSprite.height/2,b.nameSprite.width,b.nameSprite.height)));if(selUnits.length)for(e=selUnits.length-1;0<=e;--e)selUnits[e]&&
0>units.indexOf(selUnits[e])&&disableSelUnit(e);activeUnit&&renderUnit(h,f,k,activeUnit,playerColors[player.color],mainContext);showSelector&&(mainContext.fillStyle="rgba(255, 255, 255, 0.1)",h=player.x-d+targetDst*MathCOS(targetDir)+camX,f=player.y-c+targetDst*MathSIN(targetDir)+camY,mainContext.fillRect(mouseStartX,mouseStartY,h-mouseStartX,f-mouseStartY));playerBorderRot+=a/5600;hoverUnit?toggleUnitInfo(hoverUnit):activeBase?toggleUnitInfo(activeBase,true):activeUnit?toggleUnitInfo(activeUnit):
0<selUnits.length?toggleUnitInfo(selUnits[0].info,!0):toggleUnitInfo()}};

function renderUnit(a,d,c,b,g,e,k){
var f=b.size*(k?iconSizeMult:1),h=f+":"+b.cloak+":"+b.renderIndex+":"+b.iSize+":"+b.turretIndex+":"+b.shape+":"+g;
if(!unitSprites[h]){var m=document.createElement("canvas"),l=m.getContext("2d");
m.width=2*f+30;m.height=m.width;m.style.width=m.width+"px";
m.style.height=m.height+"px";l.translate(m.width/2,m.height/2);
l.lineWidth=outlineWidth*(k?.9:1.2);l.strokeStyle=darkColor;
l.fillStyle=g;
4==b.renderIndex?l.fillStyle=turretColor:5==b.renderIndex&&(l.fillStyle=turretColor,renderRect(0,.76*f,1.3*f,f/2.4,l),l.fillStyle=g);b.cloak&&(l.fillStyle=backgroundColor);
"circle"==b.shape?(renderCircle(0,0,f,l),
b.iSize&&(l.fillStyle=turretColor,renderCircle(0,0,f*b.iSize,l))):"triangle"==b.shape?(renderTriangle(0,0,f,l),b.iSize&&(l.fillStyle=turretColor,renderTriangle(0,2,f*b.iSize,l))):"hexagon"==b.shape?(renderAgon(0,0,f,l,6),b.iSize&&(l.fillStyle=turretColor,renderAgon(0,0,f*b.iSize,l,6))):"octagon"==b.shape?(l.rotate(MathPI/8),renderAgon(0,0,.96*f,l,8),b.iSize&&(l.fillStyle=turretColor,renderAgon(0,0,.96*f*b.iSize,l,8))):"pentagon"==b.shape?(l.rotate(-MathPI/2),renderAgon(0,0,1.065*f,l,5),b.iSize&&(l.fillStyle=turretColor,renderAgon(0,0,1.065*f*b.iSize,l,5))):"square"==b.shape?(renderSquare(0,0,f,l),b.iSize&&(l.fillStyle=turretColor,renderSquare(0,0,f*b.iSize,l))):"spike"==b.shape?renderStar(0,0,f,.7*f,l,8):"star"==b.shape&&(f*=1.2,renderStar(0,0,f,.7*f,l,6));
if(1==b.renderIndex)l.fillStyle=turretColor,renderRect(f/2.8,0,f/4,f/1,l),renderRect(-f/2.8,0,f/4,f/1,l);
else if(2==b.renderIndex)l.fillStyle=turretColor,renderRect(f/2.5,f/2.5,f/2.5,f/2.5,l),renderRect(-f/2.5,f/2.5,f/2.5,f/2.5,l),renderRect(f/2.5,-f/2.5,f/2.5,f/2.5,l),renderRect(-f/2.5,-f/2.5,f/2.5,f/2.5,l);
else if(3==b.renderIndex)l.fillStyle=turretColor,l.rotate(MathPI/2),renderRectCircle(0,0,.75*f,f/2.85,3,l),renderCircle(0,0,.5*f,l),l.fillStyle=g;
else if(6==b.renderIndex)l.fillStyle=turretColor,l.rotate(MathPI/2),renderRectCircle(0,0,.7*f,f/4,5,l),l.rotate(-MathPI/2),renderAgon(0,0,.4*f,l,6);
else if(7==b.renderIndex)for(g=0;3>g;++g)l.fillStyle=g?1==g?"#93e86500":"#a2ff6f00":"#89d95f00",renderStar(0,0,f,.9*f,l,100),f*=.75;
else 8==b.renderIndex&&(l.fillStyle=turretColor,renderRectCircle(0,0,.75*f,f/2.85,3,l),renderSquare(0,0,.5*f,l));1!=b.type&&b.turretIndex&&renderTurret(0,0,b.turretIndex,k?iconSizeMult:1,-(MathPI/2),l);
unitSprites[h]=m}f=unitSprites[h];e.save();e.translate(a,d);e.rotate(c+MathPI/2);
e.drawImage(f,-(f.width/2),-(f.height/2),f.width,f.height);
1==b.type&&b.turretIndex&&renderTurret(0,0,b.turretIndex,k?iconSizeMult:1,b.turRot-MathPI/2-c,e);e.restore()};
renderText=function(a, d) { var c = document.createElement("canvas") , b = c.getContext("2d"); b.font = d + "px regularF"; var g = b.measureText(a); c.width = g.width + 20; c.height = 2 * d; b.translate(c.width / 2, c.height / 2); b.font = d + "px regularF"; b.fillStyle = "#000000"; b.textBaseline = "middle"; b.textAlign = "center"; b.strokeStyle = darkColor; b.lineWidth = outlineWidth; b.strokeText(a, 0, 0); b.fillText(a, 0, 0); return c }
updateSelUnitViews=function() {sellButton.style.display = "block";for (var a = 0, d = 0; d < selUnits.length; ++d)a += Math.round(selUnits[d].info.cost / 2);a ? sellButton.innerHTML = "Sell <span class='unitInfoCost'>" + a + "</span>" : sellButton.style.display = "none"}

/*Zoom*/
cameraSpd *=1.5
var scroll = 0;
zoom  = function(a) {
    a = window.event || a;
    a.stopPropagation();
    scroll = Math.max(-1, Math.min(1, a.wheelDelta || -a.detail));
    -1 == scroll ? 50000 > maxScreenHeight && (maxScreenHeight += 130,
    maxScreenWidth += 130,
    resize(),
    scroll = 0) : 1 == scroll && 150 < maxScreenHeight && (maxScreenHeight -= 130,
    maxScreenWidth -= 130,
    resize(),
    scroll = 0)
}
mainCanvas.addEventListener ? (window.addEventListener("mousewheel", zoom, !1),
mainCanvas.addEventListener("DOMMouseScroll", zoom, !1)) : window.attachEvent("onmousewheel", zoom);
window.addEventListener("mousemove", gameInput, !1);
window.addEventListener('keyup', function (a) {a = a.keyCode ? a.keyCode : a.which;if (a == 107) {(maxScreenHeight = 15000, maxScreenWidth = 30000, resize(true));};if (a == 109) {(maxScreenHeight = 1080, maxScreenWidth = 1920, resize(true));};});

/*PLAYERS*/
function players3() {
var nPlayers = document.createElement("div")
var play = setInterval(function() {
nPlayers.id = "TotalMembers"
document.getElementById("statContainer").appendChild(nPlayers)
nPlayers.innerText = "Players: " + users.length;},1000)}
setTimeout(players3, 10);

/*INSTAFIND*/
var gotoUsers = [];var gotoIndex = 0;
window.overrideSocketEvents = window.overrideSocketEvents || [];
window.chatCommands = window.chatCommands || {};
window.overrideSocketEvents.push({name: "l",description: "Leaderboard Insta Find override",func: function(a) {var d = "",c = 1,b = 0;for (; b < a.length;) {d += "<div class='leaderboardItem' onclick=goto2(" + a[b] + ");><div style='display:inline-block;float:left;' class='whiteText'>" + c + ".</div> <div class='" + (player && a[b] == player.sid ? "leaderYou" : "leader") + "'>" + a[b + 1] + "</div><div class='scoreText'>" + a[b + 2] + "</div></div>", c++, b += 3;}leaderboardList.innerHTML = d;}});leaderboardList.style.pointerEvents = 'auto';chatListWrapper.style.pointerEvents = 'auto';
window.goto = function(username) {gotoUsers = users.filter((user) => {return user.name === username});gotoIndex = 0;if (gotoUsers[0]) {camX = gotoUsers[0].x - player.x;camY = gotoUsers[0].y - player.y;}addChat(gotoUsers.length + ' users found with the name ' + username, 'Client');return gotoUsers.length;}
window.goto2 = function(id, go) {gotoUsers = users.filter((user) => {return user.sid === id;});gotoIndex = 0;if (!go && gotoUsers[0]) {camX = gotoUsers[0].x - player.x;camY = gotoUsers[0].y - player.y;}return gotoUsers.length;}
window.resetCamera = function() {camX = camXS = camY = camYS = 0;cameraKeys = {l: 0,r: 0,u: 0,d: 0};if (socket && window.overrideSocketEvents && window.overrideSocketEvents.length) {
window.overrideSocketEvents.forEach((item) => {socket.removeAllListeners(item.name);socket.on(item.name, item.func);});}}

/*#1 COMANDOS DE CHAT*/
window.addChatLine = function(a, mensagem, c) {
if (player) {
var b = getUserBySID(a);
if (c || 0 <= b) {
var g = c ? "SERVER" : users[b].name;
c = c ? "#fff" : playerColors[users[b].color] ? playerColors[users[b].color] : playerColors[0];
player.sid == a && (c = "#fff");
b = document.createElement("li");
b.className = player.sid == a ? "chatme" : "chatother";
b.innerHTML = '<span style="color:' + c + '" onclick=goto2(' + a + ');>[' + g + ']</span> <span class="chatText">' + mensagem + "</span>";
10 < chatList.childNodes.length && chatList.removeChild(chatList.childNodes[0]);
chatList.appendChild(b)
}
}
if (a == IDjogador && mensagem == mensagem && mensagem != "-dpk" && mensagem != "-exitbase" && mensagem != "-fullatack" && mensagem != "-PowerBots") {socket.emit("ch",mensagem);}
if (a == IDjogador && mensagem == "-fullatack") {baseATK();}
if (a == IDjogador && mensagem == "-dpk") {baseDPK();}
if (a == IDjogador && mensagem == "-PowerBots") {socket.emit("ch","Tenho "+player.power+" de Power. E faltam "+(6000-player.power)+" pra 6k.");}
if (a == IDjogador && mensagem == "-exitbase") {
   setTimeout(function() {selecionarcommander();}, 1000);setTimeout(function() {localizacao();}, 2000);
   function localizacao() {if(player.x==null){player.x==0};if(player.y==null){player.y==0};for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x))*1, ((player.y)-600)*1, e, 0, -1);}
   function selecionarcommander(){selUnits = []; units.every((unit) => { if (unit.owner === player.sid && unit.type === 1) { if (!unit.info) unit.info = getUnitFromPath(unit.uPath); if (unit.info.name === 'Commander') { selUnits.push(unit); return false; } } return true; }); selUnitType = "Unit";}}
if (a == IDjogador && player.sid !== IDjogador && mensagem == "-exitgame") {kickPlayer("Bot desconectado.")}
if (a == player.sid && mensagem == "-ID0") {IDjogador = 0;} if (a == player.sid && mensagem == "-ID1") {IDjogador = 1;} if (a == player.sid && mensagem == "-ID2") {IDjogador = 2;} if (a == player.sid && mensagem == "-ID3") {IDjogador = 3;} if (a == player.sid && mensagem == "-ID4") {IDjogador = 4;} if (a == player.sid && mensagem == "-ID5") {IDjogador = 5;} if (a == player.sid && mensagem == "-ID6") {IDjogador = 6;} if (a == player.sid && mensagem == "-ID7") {IDjogador = 7;} if (a == player.sid && mensagem == "-ID8") {IDjogador = 8;} if (a == player.sid && mensagem == "-ID9") {IDjogador = 9;} if (a == player.sid && mensagem == "-ID10") {IDjogador = 10;} if (a == player.sid && mensagem == "-ID11") {IDjogador = 11;} if (a == player.sid && mensagem == "-ID12") {IDjogador = 12;} if (a == player.sid && mensagem == "-ID13") {IDjogador = 13;} if (a == player.sid && mensagem == "-ID14") {IDjogador = 14;} if (a == player.sid && mensagem == "-ID15") {IDjogador = 15;} if (a == player.sid && mensagem == "-ID16") {IDjogador = 16;} if (a == player.sid && mensagem == "-ID17") {IDjogador = 17;} if (a == player.sid && mensagem == "-ID18") {IDjogador = 18;} if (a == player.sid && mensagem == "-ID19") {IDjogador = 19;} if (a == player.sid && mensagem == "-ID20") {IDjogador = 20;} if (a == player.sid && mensagem == "-ID21") {IDjogador = 21;} if (a == player.sid && mensagem == "-ID22") {IDjogador = 22;} if (a == player.sid && mensagem == "-ID23") {IDjogador = 23;} if (a == player.sid && mensagem == "-ID24") {IDjogador = 24;} if (a == player.sid && mensagem == "-ID25") {IDjogador = 25;} if (a == player.sid && mensagem == "-ID26") {IDjogador = 26;} if (a == player.sid && mensagem == "-ID27") {IDjogador = 27;} if (a == player.sid && mensagem == "-ID28") {IDjogador = 28;} if (a == player.sid && mensagem == "-ID29") {IDjogador = 29;} if (a == player.sid && mensagem == "-ID30") {IDjogador = 30;} if (a == player.sid && mensagem == "-ID31") {IDjogador = 31;} if (a == player.sid && mensagem == "-ID32") {IDjogador = 32;} if (a == player.sid && mensagem == "-ID33") {IDjogador = 33;} if (a == player.sid && mensagem == "-ID34") {IDjogador = 34;} if (a == player.sid && mensagem == "-ID35") {IDjogador = 35;} if (a == player.sid && mensagem == "-ID36") {IDjogador = 36;} if (a == player.sid && mensagem == "-ID37") {IDjogador = 37;} if (a == player.sid && mensagem == "-ID38") {IDjogador = 38;} if (a == player.sid && mensagem == "-ID39") {IDjogador = 39;} if (a == player.sid && mensagem == "-ID40") {IDjogador = 40;} if (a == player.sid && mensagem == "-ID41") {IDjogador = 41;} if (a == player.sid && mensagem == "-ID42") {IDjogador = 42;} if (a == player.sid && mensagem == "-ID43") {IDjogador = 43;} if (a == player.sid && mensagem == "-ID44") {IDjogador = 44;} if (a == player.sid && mensagem == "-ID45") {IDjogador = 45;} if (a == player.sid && mensagem == "-ID46") {IDjogador = 46;} if (a == player.sid && mensagem == "-ID47") {IDjogador = 47;} if (a == player.sid && mensagem == "-ID48") {IDjogador = 48;} if (a == player.sid && mensagem == "-ID49") {IDjogador = 49;} if (a == player.sid && mensagem == "-ID50") {IDjogador = 50;} if (a == player.sid && mensagem == "-ID51") {IDjogador = 51;} if (a == player.sid && mensagem == "-ID52") {IDjogador = 52;} if (a == player.sid && mensagem == "-ID53") {IDjogador = 53;} if (a == player.sid && mensagem == "-ID54") {IDjogador = 54;} if (a == player.sid && mensagem == "-ID55") {IDjogador = 55;} if (a == player.sid && mensagem == "-ID56") {IDjogador = 56;} if (a == player.sid && mensagem == "-ID57") {IDjogador = 57;} if (a == player.sid && mensagem == "-ID58") {IDjogador = 58;} if (a == player.sid && mensagem == "-ID59") {IDjogador = 59;} if (a == player.sid && mensagem == "-ID60") {IDjogador = 60;}
}

function baseDPK(){
setTimeout(function(){ gens2();},1000);setTimeout(function(){ gens2();},10000);setTimeout(function(){ gens2();},20000);setTimeout(function(){ gens2();},30000);setTimeout(function(){ gens2();},50000);setTimeout(function(){ gens2();},55000);setTimeout(function(){ power();},70000);setTimeout(function(){ power();},80000);setTimeout(function(){ power();},90000);setTimeout(function(){ power();},100000);setTimeout(function(){ power();},110000);setTimeout(function(){ power();},120000);setTimeout(function(){ power();},130000);setTimeout(function(){ power();},140000);setTimeout(function(){ wall();},144000);setTimeout(function(){ walls();},146000);setTimeout(function(){ upwalls();},170000);setTimeout(function(){ upwalls2();},255000);setTimeout(function(){ barraca();},305000);setTimeout(function(){ vendergens();},355000);setTimeout(function(){ house();},356000);setTimeout(function(){ venderhouse();},432000);setTimeout(function(){ gens();},433000);setTimeout(function(){ siege();},434000);setTimeout(function(){ walls();},435000);setTimeout(function(){ upwalls();},436000);setTimeout(function(){ upwalls2();},437000);setTimeout(function(){ selecionar2();},438000);setTimeout(function(){ centralizarr2();},439000);setTimeout(function(){ power();},440000);setTimeout(function(){ turrets();},441000);setTimeout(function(){ upturrets();},451000);setTimeout(function(){ upturrets2();},500000);setTimeout(function(){ commander();},600000);
function micro(){for (var i = 0; i < units.length; ++i) 3== units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1)}
function vendergens(){for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Generator' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Power Plant' && a.push(units[d].id);socket.emit("3", a)}
function barraca(){for(i=0;i<units.length;++i){if(2===units[i].type&&"square"==units[i].shape&&units[i].owner==player.sid){socket.emit("4",units[i].id,2);}}}
function venderhouse(){for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'House' && a.push(units[d].id);socket.emit("3", a);}
function siege(){for (var a = [], d = 0; d < units.length; ++d) {if (units[d].type === 2 && units[d].owner == player.sid) {var name = getUnitFromPath(units[d].uPath).name;(name === 'Siege Factory') && a.push(units[d].id)}}socket.emit("3", a)}
function wall(){socket.emit("1",10.07,311,8);}
function gens2(){socket.emit("1",4.73,245,3); socket.emit("1",5.0025,245,3); socket.emit("1",5.275,245,3); socket.emit("1",5.5475,245,3); socket.emit("1",5.82,245,3); socket.emit("1",6.0925,245,3); socket.emit("1",6.365,245,3); socket.emit("1",6.6375,245,3); socket.emit("1",6.91,245,3); socket.emit("1",7.1825,245,3); socket.emit("1",7.455,245,3); socket.emit("1",7.7275,245,3); socket.emit("1",8.0025,245,3); socket.emit("1",8.275,245,3); socket.emit("1",8.5475,245,3); socket.emit("1",8.82,245,3); socket.emit("1",9.0925,245,3); socket.emit("1",9.3675,245,3); socket.emit("1",9.64,245,3); socket.emit("1",9.9125,245,3); socket.emit("1",10.1875,245,3); socket.emit("1",10.4625,245,3); socket.emit("1",10.7375,245,3); socket.emit("1",4.5889,186.5,3); socket.emit("1",5.085,180.5,3); socket.emit("1",5.64,180,3); socket.emit("1",5.999,180,3); socket.emit("1",6.51,185,3); socket.emit("1",7.05,185,3); socket.emit("1",7.6,185,3); socket.emit("1",8.15,185,3); socket.emit("1",8.675,185,3); socket.emit("1",9.225,185,3); socket.emit("1",9.78,185,3); socket.emit("1",10.325,185,3); socket.emit("1",4.81,130,3); socket.emit("1",5.36,130,3); socket.emit("1",6.275,130,3); socket.emit("1",6.775,130,3); socket.emit("1",7.3,130,3); socket.emit("1",7.85,130,3); socket.emit("1",8.4,130,3); socket.emit("1",8.925,130,3); socket.emit("1",9.5,130,3); socket.emit("1",10.05,130,3); socket.emit("1",10.6,130,3); }
function house(){socket.emit('1',-1.0500473287277574,130.00221267347712,4); socket.emit('1',-2.091545324862036,130.00221267347712,4); socket.emit('1',-1.4400188097376512,245.84935651736004,4); socket.emit('1',-1.7015738438521422,245.84935651736004,4); socket.emit('1',-1.1900104808317025,245.8494956268977,4); socket.emit('1',-1.9515821727580909,245.8494956268977,4); socket.emit('1',-1.230001106358588,185.3177789635955,4); socket.emit('1',-1.9115915472312053,185.3177789635955,4); socket.emit('1',-0.9400023995383209,245.85184888464838,4); socket.emit('1',-2.2015902540514722,245.85184888464838,4); socket.emit('1',-0.8999702267969633,186.29954642993636,4); socket.emit('1',-2.24162242679283,186.29954642993636,4); socket.emit('1',-0.6899937919514598,245.84766055425473,4); socket.emit('1',-2.4515988616383333,245.84766055425473,4); socket.emit('1',-0.5799805865981342,129.99817383332717,4); socket.emit('1',-2.561612066991659,129.99817383332717,4); socket.emit('1',-0.5800148789500164,190.62603022672414,4); socket.emit('1',-2.561577774639777,190.62603022672414,4); socket.emit('1',-0.440015777851101,245.8482932623286,4); socket.emit('1',-2.7015768757386924,245.8482932623286,4); socket.emit('1',-2.949980511632284,245.84941508980646,4); socket.emit('1',-0.19161214195750892,245.84941508980646,4); socket.emit('1',-3.029975519697537,129.99894807266716,4); socket.emit('1',-0.11161713389225648,129.99894807266716,4); socket.emit('1',-2.8799859836785204,187.29249851502337,4); socket.emit('1',-0.2616066699112727,187.29249851502337,4); socket.emit('1',0.059990681918325274,245.85226397167858,4); socket.emit('1',3.0816019716714678,245.85226397167858,4); socket.emit('1',0.3600220650583072,130.004726452541,4); socket.emit('1',2.781570588531486,130.004726452541,4); socket.emit('1',0.31000666746342326,245.84925645606506,4); socket.emit('1',2.83158598612637,245.84925645606506,4); socket.emit('1',0.41000325305834856,189.58270437990896,4); socket.emit('1',2.7315894005314445,189.58270437990896,4); socket.emit('1',0.5599876344550477,245.85084522937896,4); socket.emit('1',2.5816050191347455,245.85084522937896,4); socket.emit('1',0.0800029313861146,184.43993629363453,4); socket.emit('1',3.0615897222036788,184.43993629363453,4); socket.emit('1',2.3099981404518664,129.9988511487697,4); socket.emit('1',0.8315945131379268,129.9988511487697,4); socket.emit('1',2.409979735719911,187.95915646756882,4); socket.emit('1',0.7316129178698823,187.95915646756882,4); socket.emit('1',2.3299899423563737,245.85351024543056,4); socket.emit('1',0.8116027112334195,245.85351024543056,4); socket.emit('1',2.080008458387522,245.85145535465102,4); socket.emit('1',1.0615841952022713,245.85145535465102,4); socket.emit('1',2.0799704311134937,182.97025359330956,4); socket.emit('1',1.0616222224763,182.97025359330956,4); socket.emit('1',1.8400303001017062,130.00337995606105,4); socket.emit('1',1.3015623534880871,130.00337995606105,4); socket.emit('1',1.82998124233891,245.85164164593252,4); socket.emit('1',1.3116114112508834,245.85164164593252,4); socket.emit('1',1.5699828228051445,245.85008135040349,4); socket.emit('1',1.4000268915066985,188.65410597174923,4); socket.emit('1',1.7415657620830949,188.65410597174923,4);}
function power(){for (var i = 0; i < units.length; ++i) 0 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0)}
function selecionar2() {selUnits = []; units.forEach((unit) => { if (unit.owner === player.sid && unit.type === 1) { if (!unit.info) unit.info = getUnitFromPath(unit.uPath); if (unit.info.name === 'Siege Ram') { selUnits.push(unit); return false; } } return true; }); selUnitType = "Unit"; }
function centralizarr2() {if(player.x==null){player.x==0 };if(player.y==null){player.y==0 };for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x)+40)*1, ((player.y))*1, e, 0, -1);for (var e = [], b = 0; b < Math.floor(selUnits.length-1); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x))*1, ((player.y)+40)*1, e, 0, -1);for (var e = [], b = 0; b < Math.floor(selUnits.length-2); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x)-40)*1, ((player.y))*1, e, 0, -1);for (var e = [], b = 0; b < Math.floor(selUnits.length-3); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x))*1, ((player.y)-40)*1, e, 0, -1);}
function gens(){for(i=-3.14;i<=3.14;i+=0.5233){socket.emit("1",i,132,3);}for(i=-2.965;i<=3.14;i+=0.3488){socket.emit("1",i,243.85,3);}}
function upgens(){for(i=0;i<units.length;++i){if(0===units[i].type&&"hexagon"==units[i].shape&&units[i].owner==player.sid){socket.emit("4",units[i].id,0);}}}
function turrets(){for(i=-3.14;i<=3.14;i+=0.3488){socket.emit("1",i,194,2);}}
function upturrets(){for(i=0;i<units.length;++i){if(0===units[i].type&&1==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid){socket.emit("4",units[i].id,1);}}}
function upturrets2(){for(i=0;i<units.length;++i){if(0===units[i].type&&3==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid){socket.emit("4",units[i].id,0);}}}
function walls(){for(i=-3.14;i<3.14;i+=0.216){socket.emit("1",i,1e3,1);}}
function upwalls(){for(i=0;i<units.length;++i){if(3==units[i].type&&"circle"==units[i].shape&&units[i].owner==player.sid){socket.emit("4",units[i].id,0);}}}
function upwalls2(){for(i=0;i<units.length;++i){if(3==units[i].type&&"hexagon"==units[i].shape&&units[i].owner==player.sid){socket.emit("4",units[i].id,0);}}}
function sellmicro(){for (var a = [], d = 0; d < units.length; ++d) units[d].type === 3 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Micro Generator' && a.push(units[d].id);socket.emit("3", a)}
}

function baseATK(){
setTimeout(function() {gens1();}, 1000); setTimeout(function() {gens1();}, 10000); setTimeout(function() {gens1();}, 20000); setTimeout(function() {gens1();}, 30000); setTimeout(function() {gens1();}, 40000); setTimeout(function() {gens1();}, 50000); setTimeout(function() {gens1();}, 55000); setTimeout(function() {upgens1();}, 65000); setTimeout(function() {upgens1();}, 75000); setTimeout(function() {upgens1();}, 85000); setTimeout(function() {upgens1();}, 95000); setTimeout(function() {upgens1();}, 105000); setTimeout(function() {upgens1();}, 115000); setTimeout(function() {upgens1();}, 125000); setTimeout(function() {upgens1();}, 135000); setTimeout(function() {uparmory();}, 144000); setTimeout(function() {uparmory();}, 145000); setTimeout(function() {camada311();}, 155000); setTimeout(function() {upmicro();}, 170000); setTimeout(function() {barrack1();}, 175000); setTimeout(function() {upbarrack1();}, 210000); setTimeout(function() {barrack2();}, 215000); setTimeout(function() {upbarrack2();}, 235000); setTimeout(function() {commander();}, 255000); setTimeout(function() {upcommander();}, 295000); setTimeout(function() {vendergens();}, 300000); setTimeout(function() {base();}, 301000); setTimeout(function() {sellbarrack1();}, 330000); setTimeout(function() {barrack1();}, 331000); setTimeout(function() {selecionarsiege();}, 332000); setTimeout(function() {centralizar1();}, 333000); setTimeout(function() {centralizar2();}, 352000); setTimeout(function() {selecionartropas();}, 358000); setTimeout(function() {centralizar3();}, 359000);
function gens1() {socket.emit("1",-1.5532024736165302,243.847739788582,3); socket.emit("1",-0.7357047649976083,243.84981217954626,3); socket.emit("1",-0.4631707810434728,243.85218493997556,3); socket.emit("1",-0.19069612575052558,243.85039122379942,3); socket.emit("1",0.081823242943498,243.84582383137092,3); socket.emit("1",0.3543068427626167,243.84595547189218,3); socket.emit("1",0.6268093323905378,243.84396855366344,3); socket.emit("1",0.8993152888678688,243.84944576520982,3); socket.emit("1",1.1718223321670949,243.85213326932367,3); socket.emit("1",1.4443151477371527,243.84787798953676,3); socket.emit("1",1.7192989793251703,243.85392205170697,3); socket.emit("1",-1.8288944376970422,243.84689971373433,3); socket.emit("1",1.9918103630041337,243.85460668193252,3); socket.emit("1",2.264316448888492,243.84897949345623,3); socket.emit("1",2.5368131007766124,243.85278858360428,3); socket.emit("1",2.8093246351976133,243.84723024877687,3); socket.emit("1",3.0843130098428064,243.8499212630589,3); socket.emit("1",-2.926357644061203,243.84645742761984,3); socket.emit("1",-2.6538811539385643,243.85120319571928,3); socket.emit("1",-2.3788730471629616,243.84483796053584,3); socket.emit("1",-2.1038593986469003,243.85357655773683,3); socket.emit("1",-1.2806671667751037,243.85129320961167,3); socket.emit("1",-1.0081716987983749,243.84706785196326,3); socket.emit("1",1.579987145667095,186.05785820545177,3); socket.emit("1",1.8200377893253108,131.9987878732225,3); socket.emit("1",1.3299885934720075,131.9987367363794,3); socket.emit("1",1.0700140183147795,183.45721926378366,3); socket.emit("1",0.8200112635098129,131.9969037515653,3); socket.emit("1",2.080020169750631,181.88728652657397,3); socket.emit("1",2.339962323692137,131.9988700709214,3); socket.emit("1",2.609997065030747,181.5314595325009,3); socket.emit("1",2.8799849967373223,132.00128673615268,3); socket.emit("1",-3.129973633515593,180.7422001083311,3); socket.emit("1",-2.8600046281491114,131.9987212059268,3); socket.emit("1",0.5500078589016157,181.36809090906803,3); socket.emit("1",0.28000624853648737,132.00094696630012,3); socket.emit("1",0.009993041907008273,181.12904377818583,3); socket.emit("1",-0.2599728532968926,131.99544878517588,3); socket.emit("1",-0.5300137628628261,181.13117705132927,3); socket.emit("1",-0.7999690811162178,132.00256436903035,3); socket.emit("1",-2.590017189612395,181.24926841231655,3); socket.emit("1",-2.320026939739574,131.9970927710153,3); socket.emit("1",-2.039999434196396,181.1243012408882,3); socket.emit("1",-1.0699951440269182,181.07652857286615,3);socket.emit('1',-1.5707963267948966,140,7);}
function base() {socket.emit('1',-1.0500473287277574,130.00221267347712,4); socket.emit('1',-2.091545324862036,130.00221267347712,4); socket.emit('1',-1.4400188097376512,245.84935651736004,4); socket.emit('1',-1.7015738438521422,245.84935651736004,4); socket.emit('1',-1.1900104808317025,245.8494956268977,4); socket.emit('1',-1.9515821727580909,245.8494956268977,4); socket.emit('1',-1.230001106358588,185.3177789635955,4); socket.emit('1',-1.9115915472312053,185.3177789635955,4); socket.emit('1',-0.9400023995383209,245.85184888464838,4); socket.emit('1',-2.2015902540514722,245.85184888464838,4); socket.emit('1',-0.8999702267969633,186.29954642993636,4); socket.emit('1',-2.24162242679283,186.29954642993636,4); socket.emit('1',-0.6899937919514598,245.84766055425473,4); socket.emit('1',-2.4515988616383333,245.84766055425473,4); socket.emit('1',-0.5799805865981342,129.99817383332717,4); socket.emit('1',-2.561612066991659,129.99817383332717,4); socket.emit('1',-0.5800148789500164,190.62603022672414,4); socket.emit('1',-2.561577774639777,190.62603022672414,4); socket.emit('1',-0.440015777851101,245.8482932623286,4); socket.emit('1',-2.7015768757386924,245.8482932623286,4); socket.emit('1',-2.949980511632284,245.84941508980646,4); socket.emit('1',-0.19161214195750892,245.84941508980646,4); socket.emit('1',-3.029975519697537,129.99894807266716,4); socket.emit('1',-0.11161713389225648,129.99894807266716,4); socket.emit('1',-2.8799859836785204,187.29249851502337,4); socket.emit('1',-0.2616066699112727,187.29249851502337,4); socket.emit('1',0.059990681918325274,245.85226397167858,4); socket.emit('1',3.0816019716714678,245.85226397167858,4); socket.emit('1',0.3600220650583072,130.004726452541,4); socket.emit('1',2.781570588531486,130.004726452541,4); socket.emit('1',0.31000666746342326,245.84925645606506,4); socket.emit('1',2.83158598612637,245.84925645606506,4); socket.emit('1',0.41000325305834856,189.58270437990896,4); socket.emit('1',2.7315894005314445,189.58270437990896,4); socket.emit('1',0.5599876344550477,245.85084522937896,4); socket.emit('1',2.5816050191347455,245.85084522937896,4); socket.emit('1',0.0800029313861146,184.43993629363453,4); socket.emit('1',3.0615897222036788,184.43993629363453,4); socket.emit('1',2.3099981404518664,129.9988511487697,4); socket.emit('1',0.8315945131379268,129.9988511487697,4); socket.emit('1',2.409979735719911,187.95915646756882,4); socket.emit('1',0.7316129178698823,187.95915646756882,4); socket.emit('1',2.3299899423563737,245.85351024543056,4); socket.emit('1',0.8116027112334195,245.85351024543056,4); socket.emit('1',2.080008458387522,245.85145535465102,4); socket.emit('1',1.0615841952022713,245.85145535465102,4); socket.emit('1',2.0799704311134937,182.97025359330956,4); socket.emit('1',1.0616222224763,182.97025359330956,4); socket.emit('1',1.8400303001017062,130.00337995606105,4); socket.emit('1',1.3015623534880871,130.00337995606105,4); socket.emit('1',1.82998124233891,245.85164164593252,4); socket.emit('1',1.3116114112508834,245.85164164593252,4); socket.emit('1',1.5699828228051445,245.85008135040349,4); socket.emit('1',1.4000268915066985,188.65410597174923,4); socket.emit('1',1.7415657620830949,188.65410597174923,4);}
function upgens1() {for (var i = 0; i < units.length; ++i) 0 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0)}
function barrack1() {socket.emit('1',-2.081591996336938,309.99965709658454,8);}
function upbarrack1() {for (i = 0; i < units.length; ++i) {if (2 === units[i].type && "square" == units[i].shape && units[i].owner == player.sid) {socket.emit("4", units[i].id, 2);}}}
function barrack2() {socket.emit('1',-1.0600006572528557,309.99965709658454,8);socket.emit('1',-0.6399978747166213,309.99990225804925,8);socket.emit('1',-2.5015947788731716,309.99990225804913,8)}
function camada311() {socket.emit('1',-1.470005829354906,306.0029846259674,1); socket.emit('1',-0.4299974706868517,305.9957731734215,1); socket.emit('1',-2.7115951829029417,305.9957731734214,1); socket.emit('1',-0.22999785734952188,305.9978777704186,1); socket.emit('1',-2.9115947962402715,305.9978777704186,1); socket.emit('1',-0.030004724276454346,305.9977320177389,1); socket.emit('1',-3.111587929313339,305.997732017739,1); socket.emit('1',0.17000006120172068,306.0010800634533,1); socket.emit('1',2.9715925923880726,306.0010800634534,1); socket.emit('1',0.36998939270590564,305.99641599208314,1); socket.emit('1',2.7716032608838876,305.99641599208314,1); socket.emit('1',0.5700101295229084,305.9999694444429,1); socket.emit('1',2.571582524066885,305.99996944444297,1); socket.emit('1',0.7700076523156121,306.001344441491,1); socket.emit('1',2.371585001274181,306.0013444414909,1); socket.emit('1',0.9700136500621354,306.0031646895175,1); socket.emit('1',2.1715790035276576,306.0031646895175,1); socket.emit('1',1.1699896183257414,306.00169051820615,1); socket.emit('1',1.971603035264052,306.00169051820615,1); socket.emit('1',1.370003953798924,305.99784868524813,1); socket.emit('1',1.7715886997908694,305.99784868524813,1); socket.emit('1',1.5700120132302293,306.00009411763256,1); socket.emit('1',-1.6715868242348872,306.0029846259674,1); socket.emit('1',-1.2700052430104105,305.9985999967974,1); socket.emit('1',-1.8715874105793828,305.9985999967974,1); socket.emit('1',-0.850007998777195,305.995448658963,1); socket.emit('1',-2.291584654812598,305.995448658963,1);}
function uparmory() {for (i = 0; i < units.length; ++i) {if (0 === units[i].type && "circle" == units[i].shape && units[i].owner == player.sid) {socket.emit("4", units[i].id, 0);}}}
function upbarrack2() {for (i = 0; i < units.length; ++i) {if (2 === units[i].type && "square" == units[i].shape && units[i].owner == player.sid) {socket.emit("4", units[i].id, 0);}}}
function vendergens() {for (var a = [], d = 0; d < units.length; ++d) {if (units[d].type === 0 && units[d].owner == player.sid) {var name = getUnitFromPath(units[d].uPath).name;(name === 'Generator' || name === 'Power Plant') && a.push(units[d].id)}}socket.emit("3", a)}
function sellbarrack1() {for (var a = [], d = 0; d < units.length; ++d) {if (units[d].type === 2 && units[d].owner == player.sid) {var name = getUnitFromPath(units[d].uPath).name;(name === 'Siege Factory') && a.push(units[d].id)}}socket.emit("3", a)}
function commander(){socket.emit("4",0,0,1);}
function upmicro() {for (var i = 0; i < units.length; ++i) 3 == units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1)}
function upantitank() {for (var i = 0; i < units.length; ++i) 0 == units[i].type && 4 == units[i].turretIndex && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1)}
function upcommander() {for (var i = 0; i < units.length; ++i) 1 == units[i].type && "star" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);}
function selecionartropas(){selUnits = [];units.forEach((unit) => {if (unit.owner === player.sid && unit.type === 1) {if (!unit.info) unit.info = getUnitFromPath(unit.uPath);unit.info.name !== 'Siege Ram' && selUnits.push(unit);}})}
function selecionarsiege() {selUnits = [];units.forEach((unit) => {if (unit.owner === player.sid && unit.type === 1) {if (!unit.info) unit.info = getUnitFromPath(unit.uPath);if (unit.info.name === 'Siege Ram') {selUnits.push(unit);return false;}}return true;});selUnitType = "Unit";}
function centralizar1() {if(player.x==null){player.x==0};if(player.y==null){player.y==0};for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x))*1, ((player.y)-150)*1, e, 0, -1);}
function centralizar2() {if(player.x==null){player.x==0};if(player.y==null){player.y==0};for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", (player.x)*1, (player.y)*1, e, 0, -1);}
function centralizar3() {if(player.x==null){player.x==0};if(player.y==null){player.y==0};for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x))*1, ((player.y)-140)*1, e, 0, -1);}
}

/*#2 COMANDOS DE CHAT*/
enterGame = function() {
socket && unitList && (showMainMenuText(randomLoadingTexts[UTILS.randInt(0, randomLoadingTexts.length - 1)]),
hasStorage && localStorage.setItem("lstnmdbl", userNameInput.value),
mainCanvas.focus(),
grecaptcha.execute("6Ldh8e0UAAAAAFOKBv25wQ87F3EKvBzyasSbqxCE").then(function(a) {
socket.emit("spawn", {
name: userNameInput.value,
skin: SkinBots
}, a)}))}

window.test = 0;
function ChatTest(){for(i=0;i<units.length;i++){if(test==0){test = 1;comandos();}}};
setInterval(ChatTest,500);

window.UIList = window.UIList || [];
window.initFuncs = window.initFuncs || [];
window.statusItems = window.statusItems || [];
window.overrideSocketEvents = window.overrideSocketEvents || [];
window.chatCommands = window.chatCommands || [];

var muted = [];
window.overrideSocketEvents.push({
name: "ch",
description: "Chat Muter",
func: function (a, d, c) {
if (!muted[a])
addChatLine(a, d, c)
}})

window.addChat = function (msg, from, color) {color = color || "#fff";var b = document.createElement("li");b.className = "chatother";b.innerHTML = '<span style="color:' + color + '">[' + from + ']</span> <span class="chatText">' + msg + "</span>";10 < chatList.childNodes.length && chatList.removeChild(chatList.childNodes[0]);chatList.appendChild(b)}
window.chatCommands.clear = function () {while (chatList.hasChildNodes()) {chatList.removeChild(chatList.lastChild);}}
window.chatCommands.reset = function () {TemaUltron();tema();}

window.chatCommands.mute = function (split) {
if (!split[1]) {
addChat('Especifique um nome ou "all" para todos.')
} else if (split[1] === 'all') {
users.forEach((user) => {
muted[user.sid] = true;
mutados = users.length;
});
addChat('Mutado ' + users.length + ' usuário(s).', 'BLOBLE.IO', playerColors[player.color]);
} else {
var len = 0;
users.forEach((user) => {
if (user.name === split[1]) {
muted[user.sid] = true;
len++;
}
});
addChat('Mutado ' + len + ' usuário(s) com o nome ' + split[1], 'BLOBLE.IO', playerColors[player.color]);
}}

window.chatCommands.unmute = function (split) {
   if (!split[1]) {
   addChat('Especifique um nome ou "all" para todos.')
   } else if (split[1] === 'all') {
   addChat('Desmutado ' + mutados + ' usuário(s)', 'BLOBLE.IO', playerColors[player.color]);
   muted = {};
   } else {
   var len = 0;
   users.forEach((user) => {
   if (user.name === split[1]) {
   muted[user.sid] = false;
   len++;
}});
   addChat('Desmutado ' + len + ' usuário(s) com o nome ' + split[1], 'BLOBLE.IO', playerColors[player.color]);
}}

window.chatCommands.help = function (split) {
   var avail = Object.keys(window.chatCommands);
   addChat('Existem ' + avail.length + ' comandos disponíveis.', 'BLOBLE.IO', playerColors[player.color]);
   addChat('/'+avail.join(', /') + ', -dpk, -fullatack, -exitbase, exitgame, ID0, -PowerBots.', 'BLOBLE.IO', playerColors[player.color]);
}

var modsShown = true;
var chatHist = [];
var chatHistInd = -1;
var prevText = '';

function comandos() {
    setTimeout(function () {
    addChat('Seja Bem-Vindo ' + player.name + '!!! ' + 'Digite /help para ver os comandos disponíveis.', 'BLOBLE.IO', playerColors[player.color]);
    var old = chatInput
    chatInput = old.cloneNode(true);
    old.parentNode.replaceChild(chatInput, old);
    chatInput.onclick = function () {
    toggleChat(!0)
};

chatInput.addEventListener("keyup", function (a) {
var b = a.which || a.keyCode;
if (b === 38) { /* up*/
if (chatHistInd === -1) {
prevText = chatInput.value;
chatHistInd = chatHist.length;}
if (chatHistInd > 0) chatHistInd--;
chatInput.value = prevText + (chatHist[chatHistInd] || '')
} else if (b === 40) {
if (chatHistInd !== -1) {
if (chatHistInd < chatHist.length) chatHistInd++;
else chatHistInd = -1;
chatInput.value = prevText + (chatHist[chatHistInd] || '')
}} else
if (gameState && socket && 13 === (a.which || a.keyCode) && "" != chatInput.value) {
var value = chatInput.value;
chatInput.value = ""
mainCanvas.focus()
if (value.charAt(0) === '/') {
var split = value.split(' ');
var name = split[0].substr(1);
if (window.chatCommands[name]) window.chatCommands[name](split);
else {addChat("Commando '" + name + "' inexistente. Digite /help para acessar a lista de comandos.", 'BLOBLE.IO', playerColors[player.color]);
}} else {
socket.emit("ch", value)}
if (chatHist[chatHist.length - 1] !== value) {
var ind = chatHist.indexOf(value);
if (ind !== -1) {chatHist.splice(ind, 1);}
chatHist.push(value);}
chatHistInd = -1;
}})},1000)}

/*1# HOTBAR*/
var headAppend=document.getElementsByTagName("head")[0],style=document.createElement("div");style.innerHTML="<style>\n\
#upgradeScriptCont,.buttonClass{\n\
background-color: rgba(0, 0, 0);\n\
margin-left: 3px;\n\
border-radius:10px;\n\
pointer-events:all}\n\
#upgradeScriptCont{\n\
top: -180px;\n\
transition: 1s;\n\
margin-left:10px;\n\
position:absolute;\n\
padding-left:24px;\n\
margin-top:9px;\n\
border: 2px solid blue;\n\
padding-top:15px;\n\
width:330px;\n\
height:175px;\n\
font-family:arial;\n\
left:54%}\n\
#upgradeScriptCont:hover{\n\
top:0px}\n\
.buttonClass{\n\
color:#fff;\n\
padding:7px;\n\
height:19px;\n\
display:inline-block;\n\
border: 0.5px solid blue;\n\
cursor:pointer;font-size:15px}\n\
.hoverMessage{\n\
color: white;font-size: 12px;\n\
position: relative;\n\
left: 230px;\n\
bottom: 0px;\n\
pointer-events: none;}\n\
</style>",headAppend.appendChild(style);var contAppend=document.getElementById("gameUiContainer"),menuA=document.createElement("div");menuA.innerHTML="\n\
<div id=upgradeScriptCont>\n\
<div id=layer1>\n\
<div id=walls class=buttonClass onclick=a8()>Sell Inner</div>\n\
<div id=upgradeBoulders class=buttonClass onclick=a9()>Sell Outer</div>\n\
<div id=upgradeGen class=buttonClass onclick=a4()>Sell All</div>\n\
</div><div id=layer2 style=margin-top:7px;margin-left:0px>\n\
<div id=walls class=buttonClass onclick=a5()>Sell Wall</div>\n\
<div id=upgradeBoulders class=buttonClass onclick=a6()>Sell Generator</div>\n\
<div id=upgradeGen class=buttonClass onclick=a7()>Sell House</div></div>\n\
<div id=layer3 style=margin-top:7px;margin-left:0px>\n\
<div id=walls class=buttonClass onclick=a10()>Up Barracks</div>\n\
<div id=upgradeBoulders class=buttonClass onclick=a11()>Boulder</div>\n\
<div id=upgradeSpikes class=buttonClass onclick=a12()>Spike</div>\n\
</div><div id=layer4 style=margin-top:7px;margin-left:0px>\n\
<div id=walls class=buttonClass onclick=a1()>PowerPlant</div>\n\
<div id=walls class=buttonClass onclick=a2()>Micro G.</div>\n\
<div id=walls class=buttonClass onclick=a3()>AntiTanks</div>\n\
</div><span class=hoverMessage>Hotbar - X1</span></div>",contAppend.insertBefore(menuA,contAppend.firstChild)
window.a1=function() {for (var i = 0; i < units.length; ++i) 0 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0)};
window.a2=function() {for (var i = 0; i < units.length; ++i) 3 == units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1)};
window.a3=function() {for (var i = 0; i < units.length; ++i) 0 == units[i].type && 4 == units[i].turretIndex && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1)};
window.a4=function() {for (var a = [], d = 0; d < units.length; ++d)(units[d].type === 3 || units[d].type === 2 || units[d].type === 0) && units[d].owner == player.sid && a.push(units[d].id);socket.emit("3", a)};
window.a5=function() {for (var a = [], d = 0; d < units.length; ++d) units[d].type === 3 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Wall' && a.push(units[d].id);socket.emit("3", a)};
window.a6=function() {for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Generator' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Power Plant' && a.push(units[d].id);socket.emit("3", a)};
window.a7=function() {for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'House' && a.push(units[d].id);socket.emit("3", a)};
window.a8=function() {for (var a = [], d = 0; d < units.length; ++d) { if (units[d].type === 0 && units[d].owner == player.sid) { a.push(units[d].id) } } socket.emit("3", a) };
window.a9=function() {for (var a = [], d = 0; d < units.length; ++d)(units[d].type === 3 || units[d].type === 2) && units[d].owner == player.sid && a.push(units[d].id);socket.emit("3", a)};
window.a10=function() {for(i=0;i<units.length;++i){ if(2==units[i].type&&"square"==units[i].shape&&units[i].owner==player.sid){ socket.emit("4",units[i].id,0);}}};
window.a11=function() {for (var i = 0; i < units.length; ++i) 3 == units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0)}
window.a12=function() {for (var i = 0; i < units.length; ++i) 3 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0)}

/*#2 HOTBAR*/
window.UIList = window.UIList || [];
window.initFuncs = window.initFuncs || [];
window.statusItems = window.statusItems || [];
window.autoos = false;
window.auto3 = false;
window.auto4 = false;
window.auto5 = false;
window.auto6 = false;
window.traço2 = true;
window.auto7 = false;
window.auto8 = false;
window.auto9 = false;
window.auto11 = false;
window.themeSelect = 0;
window.useTheme = false;
window.skins1 = true;
window.material = false;
window.teste = true;
window.build = false;
window.bt = false;
window.UIList.push({
    level:0,x:0,html:'<div onclick=menu1()>Menu</div>'},{
    level:0,x:1,html:'<div onclick=menu2()>Menu-Defenses</div>'},{
    level:0,x:2,html:'<div onclick=menu3()>Menu-Bases</div>'},{
    level:0,x:3,html:'<div onclick=party()>Server Invitation</div>'}, {
    level:0,x:4,html:'<div id=skin onclick=skin()>Skins: <span><span class="botao"> Off</span></div>'},{
    level:0,x:5,html:'<div </div><span id="ThemeSelect" onclick=SelectTheme()>Theme:<span><span class="botao"> Ultron</span></div>'},{

    level:1,x:0,html:'<div id=auto1 onclick=traço()>Trace: <span><span class="botao"> On</span></div>'},{
    level:1,x:1,html:'<div id="res" onclick=setRes()>Resolução<span><span class="botao">(1)</div>'}, {
    level:1,x:2,html:'<div id="fps" onclick=setFPS()>Normal</div>'}, {
    level:1,x:3,html:'<div onclick=BOT2()>+Bot:-</div>'},{
    level:1,x:4,html:'<div onclick=centralizar()>Centralizer Sieges</div>'},{
    level:1,x:5,html:'<div onclick=basesautomaticas()>Automatic Bases</div>'},{

    level:2,x:0,html:'<div onclick=b08()>Gens US</div>'},{
    level:2,x:1,html:'<div onclick=b09()>Gens Popular</div>'},{
    level:2,x:2,html:'<div onclick=b01()>Hyb.01</div>'},{
    level:2,x:3,html:'<div onclick=b02()>Hyb.02</div>'},{
    level:2,x:4,html:'<div onclick=b04()>Def.01</div>'},{
    level:2,x:5,html:'<div onclick=b05()>Def.02</div>'},{
    level:2,x:6,html:'<div onclick=b03()>Houses 10AT</div>'},{

    level:4,x:0,html:'<div id=auto2 onclick=autogens()>Auto Generators: <span><span class="botao"> Off</span></div>'},{
    level:4,x:1,html:'<div id=auto4 onclick=autopower()>Auto Power Plants: <span><span class="botao"> Off</span></div>'},{
    level:4,x:2,html:'<div id=auto8 onclick=autodefense2()>Auto House:<span><span class="botao"> Off</span></div>'},{
    level:4,x:3,html:'<div id=auto3 onclick=materiais()>Auto Spikes: <span><span class="botao"> Off</span></div>'},{

    level:5,x:0,html:'<div onclick=upar()>Up Objects</div>'},{
    level:5,x:1,html:'<div onclick=vender()>Sell Objects</div>'},{
    level:5,x:2,html:'<div id=auto9 onclick=autodefense4()>UP-Hybrid: <span><span class="botao"> Off</span></div>'},{
    level:5,x:3,html:'<div id=auto7 onclick=autodefense1()>UP-Defense: <span><span class="botao"> Off</span></div>'},{
    level:5,x:4,html:'<div id=auto10 onclick=autodefense7()>Auto Defend: <span><span class="botao"> Off</span></div>'},{

    level:6,x:0,html:'<div id=auto onclick=autocommander()>Auto Commander:<span><span class="botao"> Off</span></div>'},{
    level:6,x:1,html:'<div id=floo onclick=floodao()>Auto Flood:<span><span class="botao"> Off</span></div>'},{
    level:6,x:2,html:'<div onclick=inverter2()>Invert Base</div>'},{
    //level:6,x:3,html:'<div onclick=inverter()>Invert Barracks</div>'},{
    level:6,x:3,html:'<div id=build onclick=autobuild()>Auto Base: <span><span class="botao"> Off</span></div>'},{
    level:6,x:4,html:'<div onclick=CE()>Centralizer</div>'},{

    level:7,x:0,html:'<div id="demo" ()>Living Time:</div>'},{
    level:7,x:1,html:'<div id="player4" ()>Selected Units:</div>'},{
    //level:7,x:2,html:'<div id="player2" ()>Size:</div>'},{
    level:7,x:3,html:'<div id=bugT onclick=bugtanks()>Auto Bug: <span><span class="botao"> Off</span></div>'},{
    level:7,x:4,html:'<div onclick=b07()>Build AntiTanks</div>'},{
});

function players4() {var plss = document.createElement('player4');var plss2 = setInterval(function() {document.getElementById("player4").innerHTML = "Selected Units: <span class='botao'>" + selUnits.length + "</span>";}, 1000)};setTimeout(players4, 1000);
window.menu1 = function () {alert("Tecla: J - TroopJoin.\nTecla: Q - Selecionar Soldados.\nTecla: C - Selecionar Commander/Comprar Commander.\nTecla: E - Selecionar Soldados e Commander.\nTecla: + - Visão Maior.\nTecla: - - Visão Menor.\nTecla: / - Círculo de Tamanho 700.\nTecla: * - Escolher Tamanho do Círculo.\nTecla: Pause - Sair do jogo.");};
window.menu2 = function () {alert("Tecla: L - Carrega a Base Atual do Save Base.\nTecla: P - Ativa o Defend Automático da Base Carregada.\nTecla: O - Desativa o Defend da Base Carregada.\nTecla: ' - Defesa Manual da Base Salva.\nTecla: 2 - Substituir Itens da Base Salva por Simple Turrets.\nTecla: 3 - Substituir Itens da Base Salva por Generators.\nTecla: 4 - Substituir Itens da Base Salva por Houses.\nTecla: 5 - Substituir Itens da Base Salva por Sniper Turrets.\n(Obs: Os itens apenas serão substituidos se houver espaço para eles)");};
window.menu3 = function () {alert("Tecla Z - Base Full Atk.\nTecla X - Defesa Base Full Atk.\nTecla: Numpad 1- Remontar Base Full Atk.\nTecla: ageUp - Base DPK.\nTecla: PageDown - Defesa da DPK.\nTecla: F7 - Up DPK base.\nTecla: F9 - Full Generators.\nTecla: F10 - Defesa Full Generators.\nTecla: Numpad 2 - Up Micro.\nTecla: Numpad 0 - Sell Walls.\nTecla: . - Centralizer.\nTecla: \ - Mover tropas.");};

window.b01 = function () {/*HYB01*/socket.emit('1',1.360013906610116,310.00109548193535,8); socket.emit('1',1.7815787469796773,310.00109548193535,8); socket.emit('1',0.7399914556660372,310.00400932891176,8); socket.emit('1',2.401601197923756,310.00400932891176,8); socket.emit('1',0.13000545345580206,306.00229623321457,1); socket.emit('1',3.011587200133991,306.00229623321457,1); socket.emit('1',0.5299892581217002,305.99927532593927,1); socket.emit('1',2.611603395468093,305.99927532593927,1); socket.emit('1',0.3300076551622987,306.001904732634,1); socket.emit('1',2.8115849984274943,306.001904732634,1); socket.emit('1',-0.46999051303302714,305.99864182705124,1); socket.emit('1',-1.2700052430104107,305.99859999679734,1); socket.emit('1',-1.8715874105793826,305.99859999679734,1); socket.emit('1',-1.4700058293549059,306.0029846259673,1); socket.emit('1',1.5707963267948966,306,1); socket.emit('1',1.1499971718790971,306.0050262659096,1); socket.emit('1',1.9915954817106962,306.0050262659096,1); socket.emit('1',0.9499769970109738,305.9987091476041,1); socket.emit('1',2.1916156565788194,305.9987091476041,1); socket.emit('1',-0.06999195179529029,305.9992197702471,1); socket.emit('1',-3.071600701794503,305.9992197702471,1); socket.emit('1',-0.2700039626868069,305.9962949122097,1); socket.emit('1',-2.8715886909029864,305.9962949122097,1); socket.emit('1',-2.6716021405567663,305.99864182705124,1); socket.emit('1',-0.6699944573743297,305.999383822909,1); socket.emit('1',-2.4715981962154636,305.999383822909,1); socket.emit('1',-2.2716101470960472,305.9984261397434,1); socket.emit('1',-0.8699825064937459,305.9984261397434,1); socket.emit('1',-1.069989043941217,305.99801110464756,1); socket.emit('1',-2.0716036096485766,305.99801110464756,1); socket.emit('1',-1.6715868242348875,306.0029846259673,1); socket.emit('1',-1.5707963267948966,140,7); socket.emit('1',-3.1365082963440694,245.85317773012412,4); socket.emit('1',0.0034980536596910397,245.85150416460746,4); socket.emit('1',-3.0350264669927536,131.99880340366727,3); socket.emit('1',-0.10701813571966401,132.0051987612609,3); socket.emit('1',2.770028256552158,130.0012188404401,4); socket.emit('1',0.37097891063664484,130.0037787912336,4); socket.emit('1',2.2920280436264866,131.99857006801247,3); socket.emit('1',0.848973134954802,132.00066211955152,3); socket.emit('1',1.8140398846647283,129.9968653468229,4); socket.emit('1',1.3270116483997068,130.00403839881284,4); socket.emit('1',1.5710187838292116,179.8100044491407,3); socket.emit('1',-1.3425005423311223,245.84891803707413,4); socket.emit('1',-1.7990036675608547,245.85413317656466,4); socket.emit('1',-1.0510109545564696,129.99959153781984,4); socket.emit('1',-2.0910301438412278,129.9984015286342,4); socket.emit('1',-1.2320096339478794,187.48702621781595,3); socket.emit('1',-1.90799520893048,187.3082446129908,3); socket.emit('1',-2.0529861444642874,243.85382691276348,3); socket.emit('1',-1.0884958076642945,243.84538318368877,3); socket.emit('1',-1.5707963267948966,212.01,5); socket.emit('1',-0.5850370891139687,130.0001096153384,4); socket.emit('1',-2.5570036614121543,129.99752189945775,4); socket.emit('1',-0.8345134677151631,245.8534500469741,4); socket.emit('1',-2.30699159179158,245.84742992351985,4); socket.emit('1',-0.841014357238597,183.30386929904125,3); socket.emit('1',-2.2970218517016296,183.29882951072003,3); socket.emit('1',-0.4590034942549141,186.81654985573414,4); socket.emit('1',-2.6809852037485373,186.81987073114038,4); socket.emit('1',-2.997007413834356,194.12555447441738,4); socket.emit('1',-0.138011685835023,194.36815068318163,4); socket.emit('1',-0.31699121747988246,243.84915439672943,3); socket.emit('1',-2.82451072044167,243.84588780621255,3); socket.emit('1',-0.5805184965991967,243.8474884020748,5); socket.emit('1',-2.5609830840578223,243.85009678078865,5); socket.emit('1',0.2504834118963572,245.85238660627235,4); socket.emit('1',2.9005008757679636,245.8505188117365,4); socket.emit('1',2.9610217903285103,184.53021568296072,3); socket.emit('1',0.18701369707963217,185.1279190181751,3); socket.emit('1',0.5045015007748049,243.84990834527702,5); socket.emit('1',2.646487535310142,243.85205453307134,5); socket.emit('1',2.5820087160513174,183.01402268678757,4); socket.emit('1',0.5669860953156134,182.12888101561487,4); socket.emit('1',2.081997380443517,243.85502332328528,3); socket.emit('1',1.5739950036035886,243.851247485019,5); socket.emit('1',1.0640005388754288,243.85103977633557,3); socket.emit('1',1.3199885799958042,245.90377182955126,1); socket.emit('1',0.7585082335053218,245.90042639247295,1); socket.emit('1',2.392492996427019,245.8957246476644,1); socket.emit('1',1.8279958474770772,245.89855347276853,1); socket.emit('1',0.896991441881632,193.53685747164545,4); socket.emit('1',1.2230138175335554,189.2821771852807,4); socket.emit('1',2.250992888550024,193.80046697570157,4); socket.emit('1',1.921002387361883,188.72523784592246,4);}
window.b02 = function () {/*HYB02*/socket.emit('1',-1.5707963267948966,140,7); socket.emit('1',-1.3399944635466534,245.84911327885646,4); socket.emit('1',-1.80159819004314,245.84911327885646,4); socket.emit('1',-1.0500473287277574,130.00221267347712,4); socket.emit('1',-2.091545324862036,130.00221267347712,4); socket.emit('1',-1.5707963267948966,212.01,3); socket.emit('1',-1.2199898958142816,186.78603855748972,3); socket.emit('1',-1.9216027577755117,186.78603855748972,3); socket.emit('1',-2.0615714090302673,243.8524344762627,5); socket.emit('1',-1.080021244559526,243.8524344762627,5); socket.emit('1',-0.5799805865981342,129.99817383332717,4); socket.emit('1',-2.561612066991659,129.99817383332717,4); socket.emit('1',-0.8200060340641886,245.84560378416356,4); socket.emit('1',-2.3215866195256045,245.84560378416356,4); socket.emit('1',-0.8500141927785918,184.08343244300923,3); socket.emit('1',-2.2915784608112015,184.08343244300923,3); socket.emit('1',-0.5700079761262188,245.84964775244245,4); socket.emit('1',-2.5715846774635747,245.84964775244245,4); socket.emit('1',-0.479996350710057,188.20816055633728,4); socket.emit('1',-2.6615963028797363,188.20816055633728,4); socket.emit('1',-0.31000134147026653,243.85373689980645,3); socket.emit('1',-2.8315913121195266,243.85373689980645,3); socket.emit('1',-0.10999460956133142,129.99560377181996,4); socket.emit('1',-3.031598044028462,129.99560377181996,4); socket.emit('1',-0.14999023660632632,190.99438237812117,4); socket.emit('1',-2.9916024169834667,190.99438237812117,4); socket.emit('1',2.7799859160506277,129.99695457971328,4); socket.emit('1',0.36160673753916533,129.99695457971328,4); socket.emit('1',0.1815980006708836,185.60197439682605,3); socket.emit('1',2.3099981404518664,129.9988511487697,4); socket.emit('1',0.8315945131379268,129.9988511487697,4); socket.emit('1',0.5315930765120759,243.85133196273483,3); socket.emit('1',2.5400041789191343,181.28720749131747,3); socket.emit('1',0.6015884746706588,181.28720749131747,3); socket.emit('1',2.200020246042017,189.1192745332957,4); socket.emit('1',0.9415724075477765,189.1192745332957,4); socket.emit('1',0.8000134442282617,243.85060385408107,3); socket.emit('1',2.3415792093615315,243.85060385408107,3); socket.emit('1',1.829978632339602,131.99877650948122,3); socket.emit('1',1.3116140212501914,131.99877650948122,3); socket.emit('1',1.8799706719981095,193.8724387322757,4); socket.emit('1',1.2616219815916838,193.8724387322757,4); socket.emit('1',1.5699836492005441,196.88006501421125,4); socket.emit('1',0.010006227709922549,243.852207699664,5); socket.emit('1',1.0815988659831406,243.85124686989,5); socket.emit('1',1.1499971718790971,306.0050262659095,1); socket.emit('1',1.9915954817106962,306.0050262659095,1); socket.emit('1',1.7399973010782193,245.85084014499517,1); socket.emit('1',1.401595352511574,245.85084014499517,1); socket.emit('1',1.57001201323023,306.00009411763256,1); socket.emit('1',0.2715782637280019,245.85074354168643,1); socket.emit('1',1.3600139066101156,310.00109548193547,8); socket.emit('1',2.870014389861791,245.85074354168643,1); socket.emit('1',-1.076994396093321,306.00637918187266,1); socket.emit('1',-1.273498711273861,306.0038986679745,1); socket.emit('1',0.1020066619274782,306.00064329997724,1); socket.emit('1',-2.8505083440387957,306.00253152547623,1); socket.emit('1',3.0394884632501173,306.0036996508374,1); socket.emit('1',-0.880493372094959,305.9970687768103,1); socket.emit('1',-2.0644964411956366,306.0009668285381,1); socket.emit('1',-2.2610072667844325,305.99975571885676,1); socket.emit('1',-3.04700655358734,305.99778904430025,1); socket.emit('1',-2.457511769517301,305.9999132352819,1); socket.emit('1',2.6234923266265913,305.99881895196927,1); socket.emit('1',-0.683988926659113,306.0027753142119,1); socket.emit('1',0.5179827867614542,306.0013393761538,1); socket.emit('1',2.200512823710087,306.0030722067999,1); socket.emit('1',-0.4875159483203794,305.9991472210338,1); socket.emit('1',0.9404983596245412,305.9966707335228,1); socket.emit('1',-2.6540036518905348,305.99968169918094,1); socket.emit('1',2.410502194780121,305.9990459135454,1); socket.emit('1',-1.470005829354906,306.0029846259674,1); socket.emit('1',-1.6715868242348872,306.0029846259674,1); socket.emit('1',-1.868000202425333,305.9951118890628,1); socket.emit('1',-0.29099039266110344,305.9939231422743,1); socket.emit('1',-0.09448849740667216,305.99495714798974,1); socket.emit('1',0.7305123576189984,306.00163202179175,1); socket.emit('1',2.9599946529189096,185.60197439682605,3); socket.emit('1',2.6099995770777173,243.85133196273483,3); socket.emit('1',2.0599937876066527,243.85124686989,5); socket.emit('1',3.131586425879871,243.852207699664,5); socket.emit('1',2.8314816987959843,309.99694208169217,8); socket.emit('1',0.31000895186233324,309.9973117625375,8); socket.emit('1',1.7815787469796778,310.00109548193547,8);}
window.b03 = function () {/*10AT*/socket.emit('1',2.376808220414558,306.0018316938641,1); socket.emit('1',2.5768134353491607,305.9996712416536,1); socket.emit('1',1.5768095227252141,305.9955321569252,1); socket.emit('1',1.7768249040222335,306.00160277358043,1); socket.emit('1',1.9768295377351097,305.99933660058804,1); socket.emit('1',2.1768184278265164,306.0028923065927,1); socket.emit('1',2.7768284197404935,306.00255309392423,1); socket.emit('1',-2.906355280296209,305.9974628979791,1); socket.emit('1',-2.7063751336802886,305.99539375618053,1); socket.emit('1',-2.2863737254979464,305.996480535316,1); socket.emit('1',-1.86635678278889,305.9983820218663,1); socket.emit('1',-1.6663677077291326,305.9964052076428,1); socket.emit('1',-1.2663771910429724,305.9994825159021,1); socket.emit('1',-0.8463712232226993,306.0034145234329,1); socket.emit('1',-0.42637055235061966,305.9948733230673,1); socket.emit('1',-0.22637508916622867,305.9970890384417,1); socket.emit('1',-0.026375914577594417,305.9964329857457,1); socket.emit('1',-1.4663572890539367,305.9973184523027,1); socket.emit('1',0.17361585737350255,306.00022810449025,1); socket.emit('1',0.37363077619375085,306.00158202205415,1); socket.emit('1',0.5736269735967942,305.99869934364096,1); socket.emit('1',0.7736127967018077,306.0004970584197,1); socket.emit('1',0.9736391260161129,305.99654442493295,1); socket.emit('1',1.3736379023448866,305.99805309838183,1); socket.emit('1',1.1736371635773428,305.99778103770615,1); socket.emit('1',-1.5581532402252236,140.0011892806627,7); socket.emit('1',-2.0799718731183336,130.00106538025,4); socket.emit('1',-2.5500059124657732,130.0031465003827,4); socket.emit('1',-1.029981069065158,130.00279766220393,4); socket.emit('1',-2.0763783895984824,310.0037225582942,8); socket.emit('1',-1.0563755382818674,310.0009924177665,8); socket.emit('1',-0.6363785107379635,310.0018633814966,8); socket.emit('1',-2.496362525416394,310.0024633773091,8); socket.emit('1',-0.5599855192715101,129.99508490708408,4); socket.emit('1',-0.08997040024659102,129.99578185464304,4); socket.emit('1',0.09000806119236335,183.34216754473033,4); socket.emit('1',0.27998695906212095,245.85378174842074,4); socket.emit('1',0.5300185415188797,245.85137481820178,4); socket.emit('1',0.3799921575573499,130.00346649224392,4); socket.emit('1',-3.0199855077500617,130.00005576921876,4); socket.emit('1',3.0599747786814033,181.5343077767945,4); socket.emit('1',2.870014389861792,245.85074354168637,4); socket.emit('1',2.6100047013597214,245.8459493259956,4); socket.emit('1',2.739989650152302,190.84442774155062,4); socket.emit('1',2.7900154561271933,130.00213613629603,4); socket.emit('1',2.4199971881976703,187.09222244657857,4); socket.emit('1',2.3599910665206862,245.84865751107924,4); socket.emit('1',1.7300190066708097,190.0337701567804,4); socket.emit('1',1.8400057334489248,245.85534791824233,4); socket.emit('1',2.2900026253538046,129.99634456399153,4); socket.emit('1',2.060004074622376,179.7088740157258,4); socket.emit('1',1.8199915401778293,129.99539991861252,4); socket.emit('1',0.7799909450429904,245.85047976361588,4); socket.emit('1',0.7299922328213546,186.42486100303267,4); socket.emit('1',0.41000846473181835,191.18598196520597,4); socket.emit('1',1.409976216070419,190.6602236965014,4); socket.emit('1',1.3000171294437,245.84802154989976,4); socket.emit('1',0.8699713148424095,129.99953269146783,4); socket.emit('1',1.3399787500512248,129.99757728511725,4); socket.emit('1',1.079978943437712,181.24653762210173,4); socket.emit('1',-2.209985561038552,188.31775062377946,4); socket.emit('1',-2.5300224440531274,190.1929504476964,4); socket.emit('1',-2.849991013296138,185.15644331213554,4); socket.emit('1',-2.6400093075265385,245.85367396075267,4); socket.emit('1',-2.890014109968439,245.84916534330566,4); socket.emit('1',-0.9199976192439493,189.37904266312052,4); socket.emit('1',-0.6000160054860565,190.47005670183432,4); socket.emit('1',-0.48999082388495396,245.84705896146082,4); socket.emit('1',-0.2699919187549236,183.86071249725956,4); socket.emit('1',-0.24000652462927072,245.84684988829954,4); socket.emit('1',2.9768307921765036,306.0040779140044,1); socket.emit('1',-3.1063565977995484,305.9999419934585,1); socket.emit('1',-1.8799776166226945,187.68968059006335,4); socket.emit('1',-1.8100038311858826,245.85033048584654,4); socket.emit('1',-1.2399896562525108,188.91272720491872,4); socket.emit('1',-1.33000046011322,245.85323772527406,4); socket.emit('1',-1.070003029633606,243.8549046051769,5); socket.emit('1',-2.07001213400547,243.84986303051312,5); socket.emit('1',-2.3699979171434147,243.8477906399811,5); socket.emit('1',-0.7599931761263433,243.84667846825377,5); socket.emit('1',-1.5699960256758585,212.4200680255988,5); socket.emit('1',1.5700171594315573,243.85007402090318,5); socket.emit('1',2.1000190633532245,243.84854356751845,5); socket.emit('1',1.040012065892107,243.85143755983907,5); socket.emit('1',0.02001373429853195,243.84883514177403,5); socket.emit('1',3.1299867275995537,243.84642256961646,5);}
window.b04 = function () {/*DEF01*/socket.emit('1',-3.1400017458410745,132.00016704534883,3); socket.emit('1',-2.616686461722192,132.00119469156337,3); socket.emit('1',-2.093428548209907,132.00104734432992,3); socket.emit('1',2.616310321066522,131.99528817347993,3); socket.emit('1',2.0929868863115724,132.0020973318228,3); socket.emit('1',1.569735721131977,132.00007424240337,3); socket.emit('1',1.0463973901061698,131.99710489249375,3); socket.emit('1',0.5230738902535457,132.00002310605862,3); socket.emit('1',-1.570114508718732,132.00003068181462,3); socket.emit('1',-0.5235155658601256,131.99902461760846,3); socket.emit('1',-1.0467734858480613,132.00305526767173,3); socket.emit('1',-0.00022727272335942278,132.00000340909085,3); socket.emit('1',-2.96499625621234,243.85255627120253,3); socket.emit('1',-2.267403818578474,243.8517853123081,3); socket.emit('1',-1.9185898204332987,243.85002481033297,3); socket.emit('1',-1.220991744522507,243.8474754841641,3); socket.emit('1',-0.8722093510197582,243.85188496298323,3); socket.emit('1',-0.17460093095972665,243.84747117819367,3); socket.emit('1',0.17418282976354182,243.8498168955638,3); socket.emit('1',0.8717735101819609,243.84975640750602,3); socket.emit('1',1.9182009046799133,243.84757288109304,3); socket.emit('1',1.2206028540475353,243.85015501327857,3); socket.emit('1',2.266994302663708,243.84649761684082,3); socket.emit('1',2.9646185061452104,243.84869591613565,3); socket.emit('1',-2.616210354214119,243.8471070158512,5); socket.emit('1',-1.5698121155071942,243.8501181053641,5); socket.emit('1',-0.5233985505654213,243.84457016714566,5); socket.emit('1',0.5230119104981388,243.84790854136926,5); socket.emit('1',1.5694020279239838,243.85023703084636,5); socket.emit('1',2.615788211448416,243.8490110703753,5); socket.emit('1',-3.139991347768931,306.00039232000995,1); socket.emit('1',-2.923994196541792,305.99577121261,1); socket.emit('1',-2.7079979891398973,305.99649671197216,1); socket.emit('1',-2.492000077058938,306.0036772654865,1); socket.emit('1',-2.2760162239680466,306.00062516276006,1); socket.emit('1',-2.060007793381665,306.0030262922248,1); socket.emit('1',-1.8439875536674653,305.9980001568637,1); socket.emit('1',-1.6279843105192338,306.0002452613396,1); socket.emit('1',-1.4119926259902453,306.0003506533938,1); socket.emit('1',-1.1960064618373836,306.0012058799769,1); socket.emit('1',-0.9799930163427819,305.9987898668882,1); socket.emit('1',-0.7640215518210056,305.9996609475246,1); socket.emit('1',-0.5480025429968127,305.9982883939059,1); socket.emit('1',-0.3320125932586848,306.00126094511444,1); socket.emit('1',-0.11601286924045084,305.9968954090875,1); socket.emit('1',0.10000358459797759,305.99882908272707,1); socket.emit('1',0.31598401089984723,305.9997232024892,1); socket.emit('1',0.5319958032307894,306.0003472220252,1); socket.emit('1',0.7480000132173786,305.99521728288505,1); socket.emit('1',0.964003270834421,305.99613886452875,1); socket.emit('1',1.1800097508428804,305.999376633352,1); socket.emit('1',1.3959878271385584,306.003535927283,1); socket.emit('1',1.611984506412355,305.99952222184925,1); socket.emit('1',1.8280052688256239,305.99612824347963,1); socket.emit('1',2.0440168675640136,305.9975628987916,1); socket.emit('1',2.259986333836035,306.001329572275,1); socket.emit('1',2.4759978600339494,305.994679692311,1); socket.emit('1',2.691990337526868,306.00030751618533,1); socket.emit('1',2.908003886220855,306.00036764683796,1); socket.emit('1',-2.791214196322064,193.99668089944217,1); socket.emit('1',-2.442392890871587,194.0008505135995,1); socket.emit('1',-2.093605849859661,194.00527054696212,1); socket.emit('1',-1.7448175775409633,194.0000850515278,1); socket.emit('1',-1.3959867692518821,193.99657007277213,1); socket.emit('1',-0.6983945911642699,194.00021649472455,1); socket.emit('1',-0.34961216850931265,193.995644538737,1); socket.emit('1',-0.0008247420810452244,194.00006597937022,1); socket.emit('1',0.34801353139633523,193.99990335049142,1); socket.emit('1',0.6967842348778635,193.99932577202426,1); socket.emit('1',1.3944191174201557,193.99974664931912,1); socket.emit('1',1.7431991142527825,193.99590923522064,1); socket.emit('1',2.4407825661619134,194.00249586023367,1); socket.emit('1',2.7895848737881193,194.00599011370764,1); socket.emit('1',3.1383967881815615,194.00099071911978,1); socket.emit('1',1.050026515650753,194.03151213140606,1); socket.emit('1',2.089967987414468,194.21110678846347,1); socket.emit('1',-1.0500206127639005,194.0898103971457,1);}
window.b05 = function () {/*DEF02*/socket.emit('1',2.349993914930831,183.60380524379116,3); socket.emit('1',0.25683550148303413,183.4886726749093,3); socket.emit('1',-2.8831843493711644,183.49232163771876,3); socket.emit('1',1.3099870503484043,183.70252311821955,3); socket.emit('1',-1.8331905988020354,183.69766084520512,3); socket.emit('1',-0.7932162209387364,183.60588688819317,3); socket.emit('1',1.0500072507924236,243.8476559247597,3); socket.emit('1',2.0900238258029606,243.84856796790913,3); socket.emit('1',-2.0931825275672367,243.85232785437998,3); socket.emit('1',-1.053166025705249,243.84512625845122,3); socket.emit('1',3.140034319809182,243.85029608347816,3); socket.emit('1',-0.0031576684060217065,243.85121570334647,3); socket.emit('1',-0.7900000637233933,245.84948891547444,1); socket.emit('1',1.31001314870754,245.85268698958734,1); socket.emit('1',-0.9799930163427818,305.9987898668882,1); socket.emit('1',1.829981242338909,245.85164164593246,1); socket.emit('1',2.8800103503481607,245.85344516601756,1); socket.emit('1',-1.3132096833029494,245.85122432072617,1); socket.emit('1',-1.833177749751733,245.85436034367987,1); socket.emit('1',-2.883206873393559,245.85135448071063,1); socket.emit('1',-0.26318053621241194,245.85543252082104,1); socket.emit('1',0.25678750645183696,245.85125116622854,1); socket.emit('1',2.359991066520686,245.84865751107938,1); socket.emit('1',0.7900000637233933,245.84948891547444,1); socket.emit('1',-2.359991066520686,245.84865751107938,1); socket.emit('1',-3.139991347768931,306.00039232000995,1); socket.emit('1',-2.9239941965417917,305.99577121261,1); socket.emit('1',-2.7079979891398973,305.9964967119722,1); socket.emit('1',-2.492000077058938,306.0036772654865,1); socket.emit('1',-2.276016223968046,306.00062516276,1); socket.emit('1',-2.060007793381665,306.0030262922248,1); socket.emit('1',-1.8439875536674648,305.9980001568637,1); socket.emit('1',-1.6279843105192338,306.0002452613396,1); socket.emit('1',-1.4119926259902449,306.00035065339387,1); socket.emit('1',-0.5480025429968125,305.9982883939059,1); socket.emit('1',0.31598401089984746,305.99972320248924,1); socket.emit('1',0.7480000132173785,305.99521728288494,1); socket.emit('1',-1.1960064618373838,306.0012058799769,1); socket.emit('1',-0.7640215518210054,305.9996609475246,1); socket.emit('1',-0.3320125932586848,306.0012609451144,1); socket.emit('1',-0.11601286924045061,305.99689540908753,1); socket.emit('1',0.10000358459797774,305.99882908272707,1); socket.emit('1',0.9640032708344213,305.9961388645288,1); socket.emit('1',1.1800097508428806,305.99937663335197,1); socket.emit('1',0.5319958032307892,306.00034722202525,1); socket.emit('1',1.6119845064123546,305.99952222184925,1); socket.emit('1',1.3959878271385584,306.003535927283,1); socket.emit('1',1.8280052688256239,305.9961282434796,1); socket.emit('1',2.0440168675640136,305.9975628987917,1); socket.emit('1',2.259986333836035,306.00132957227487,1); socket.emit('1',2.4759978600339494,305.994679692311,1); socket.emit('1',2.6919903375268674,306.0003075161853,1); socket.emit('1',2.9080038862208544,306.000367646838,1); socket.emit('1',-1.3131674733003844,183.48560542996282,5); socket.emit('1',-0.26317263848418,183.70505844967906,5); socket.emit('1',0.7800365947154796,183.3200679140175,5); socket.emit('1',1.8299979920630507,183.48948334986395,5); socket.emit('1',-2.363176054674832,183.32190076474768,5); socket.emit('1',2.879990889851109,183.7000342950431,5); socket.emit('1',0.5199803036175186,243.8498923518319,3); socket.emit('1',-1.573174833689528,243.8506897673246,3); socket.emit('1',1.5700171594315573,243.85007402090324,3); socket.emit('1',2.6199947908961105,243.84557900441834,3); socket.emit('1',-2.6199947908961105,243.84557900441834,3); socket.emit('1',-0.5199803036175186,243.8498923518319,3); socket.emit('1',2.0929868863115724,132.00209733182268,1); socket.emit('1',1.0463973901061703,131.99710489249372,1); socket.emit('1',-1.0467734858480617,132.00305526767173,1); socket.emit('1',-0.00022727272335962948,132.00000340909085,1); socket.emit('1',-3.1400017458410745,132.00016704534883,1); socket.emit('1',-2.093428548209908,132.00104734432986,1); socket.emit('1',0.5230738902535457,132.0000231060585,1); socket.emit('1',1.5697357211319762,132.00007424240337,1); socket.emit('1',2.6163103210665226,131.99528817347993,1); socket.emit('1',-2.616686461722193,132.00119469156334,1); socket.emit('1',-1.5701145087187327,132.00003068181462,1); socket.emit('1',-0.5235155658601257,131.9990246176084,1);}
window.b06 = function () {/*TURRETS*/socket.emit("1",4.725,130,2); socket.emit("1",5.245,130,2); socket.emit("1",5.715,130,2); socket.emit("1",6.185,130,2); socket.emit("1",6.655,130,2); socket.emit("1",7.13,130,2); socket.emit("1",7.6,130,2); socket.emit("1",1.85,130,2); socket.emit("1",2.32,130,2); socket.emit("1",2.79,130,2); socket.emit("1",3.265,130,2); socket.emit("1",3.735,130,2); socket.emit("1",4.205,130,2); socket.emit("1",5.06,185,2); socket.emit("1",5.4,185,2); socket.emit("1",5.725,190,2); socket.emit("1",6.045,186,2); socket.emit("1",6.374,185,2); socket.emit("1",6.7215,189.5,2); socket.emit("1",7.0425,188.5,2); socket.emit("1",7.365,185,2); socket.emit("1",7.712,187.45,2); socket.emit("1",8.035,188.5,2); socket.emit("1",8.36,185,2); socket.emit("1",2.425,188,2); socket.emit("1",2.75,190,2); socket.emit("1",3.075,184,2); socket.emit("1",3.42,186,2); socket.emit("1",3.74,190,2); socket.emit("1",4.06,186,2); socket.emit("1",4.39,185,2); socket.emit("1",4.8625,245,2); socket.emit("1",5.1125,245,2); socket.emit("1",5.3625,245,2); socket.emit("1",5.6125,245,2); socket.emit("1",5.8625,245,2); socket.emit("1",6.1125,245,2); socket.emit("1",6.3625,245,2); socket.emit("1",6.6125,245,2); socket.emit("1",6.8625,245,2); socket.emit("1",7.14,245,2); socket.emit("1",7.39,245,2); socket.emit("1",7.64,246,2); socket.emit("1",7.89,246,2); socket.emit("1",8.14,246,2); socket.emit("1",8.39,246,2); socket.emit("1",8.635,246,2); socket.emit("1",8.885,246,2); socket.emit("1",2.5825,245,2); socket.emit("1",2.8625,245,2); socket.emit("1",3.1125,245,2); socket.emit("1",3.3625,245,2); socket.emit("1",3.6125,245,2); socket.emit("1",3.8625,245,2); socket.emit("1",4.1125,245,2); socket.emit("1",4.3625,245,2); socket.emit("1",4.6125,245,2); socket.emit("1",7.86,311,1); socket.emit("1",8.06,311,1); socket.emit("1",8.26,311,1); socket.emit("1",8.46,311,1); socket.emit("1",8.66,311,1); socket.emit("1",8.86,311,1); socket.emit("1",9.06,311,1); socket.emit("1",9.26,311,1); socket.emit("1",9.46,311,1); socket.emit("1",9.66,311,1); socket.emit("1",9.86,311,1); socket.emit("1",10.28,311,1); socket.emit("1",10.70,311,1); socket.emit("1",10.90,311,1); socket.emit("1",11.10,311,1); socket.emit("1",11.30,311,1); socket.emit("1",11.72,311,1); socket.emit("1",12.14,311,1); socket.emit("1",12.34,311,1); socket.emit("1",12.54,311,1); socket.emit("1",12.74,311,1); socket.emit("1",12.94,311,1); socket.emit("1",13.14,311,1); socket.emit("1",13.34,311,1); socket.emit("1",13.54,311,1); socket.emit("1",13.74,311,1); socket.emit("1",13.94,311,1); socket.emit("1",10.07,311,1); socket.emit("1",10.49,311,1); socket.emit("1",11.51,311,1); socket.emit("1",11.93,311,1); socket.emit("1",4.725,190,2);}
window.b07 = function () {/*ANTITANKS*/socket.emit('1',-1.3199892037085443,243.84945929814975,5);socket.emit('1',-1.7999896546591665,243.84659296369102,5);socket.emit('1',-0.7400025342187257,243.85657936582308,5);socket.emit('1',-1.0299900119965648,243.8487114995689,5);socket.emit('1',-2.3800043480588884,243.84417831886003,5);socket.emit('1',-2.0900238258029606,243.84856796790913,5);socket.emit('1',-1.5600048680308953,211.2823023823813,4);socket.emit('1',1.5899892447705761,243.85491280677533,5);socket.emit('1',1.2500054152201776,243.84966721322377,5);socket.emit('1',1.9199912744348302,243.84651279032056,5);}
window.b08 = function () {/*US*/socket.emit('1',1.3100039935096248,183.13244387601017,3); socket.emit('1',1.8315886600801685,183.13244387601017,3); socket.emit('1',1.5699629936544652,132.00004583332537,3); socket.emit('1',1.1599920379226223,243.84818637832842,3); socket.emit('1',1.981600615667171,243.84818637832842,3); socket.emit('1',0.9600029650393421,194.48401990909167,3); socket.emit('1',2.181589688550451,194.48401990909167,3); socket.emit('1',2.3715930583841556,243.84639857910548,3); socket.emit('1',0.7699995952056378,243.84639857910548,3); socket.emit('1',1.4300011681665041,243.85299260005,3); socket.emit('1',1.7115914854232892,243.85299260005,3); socket.emit('1',1.0600039466352185,131.99864923551308,3); socket.emit('1',2.081588706954575,131.99864923551308,3); socket.emit('1',2.5800462420879997,132.00104923825415,3); socket.emit('1',0.5615464115017936,132.00104923825415,3); socket.emit('1',2.5700068446178532,195.9825739702384,3); socket.emit('1',0.5715858089719401,195.9825739702384,3); socket.emit('1',2.770011279188648,243.851831446885,3); socket.emit('1',0.37158137440114536,243.851831446885,3); socket.emit('1',3.0400020487024824,243.8472493180926,3); socket.emit('1',0.10159060488731088,243.84724931809248,3); socket.emit('1',2.9099941018388558,184.89660678335883,3); socket.emit('1',0.2315985517509375,184.89660678335883,3); socket.emit('1',-3.1400017458410745,132.00016704534883,3); socket.emit('1',-0.0015909077487188178,132.00016704534883,3); socket.emit('1',-3.04001564521237,196.0505445031969,3); socket.emit('1',-0.10157700837742331,196.0505445031969,3); socket.emit('1',-2.8400092848750487,243.84538236349695,3); socket.emit('1',-0.3015833687147446,243.84538236349684,3); socket.emit('1',-2.6499909657748684,132.0019431675154,3); socket.emit('1',-0.4916016878149248,132.0019431675154,3); socket.emit('1',-2.6399770712922623,196.28039739107925,3); socket.emit('1',-0.501615582297531,196.28039739107925,3); socket.emit('1',-2.4400075788813997,243.85323393385625,3); socket.emit('1',-0.7015850747083934,243.85323393385625,3); socket.emit('1',-2.1599966100521986,131.9965533640935,3); socket.emit('1',-0.9815960435375949,131.9965533640935,3); socket.emit('1',-2.250011601944879,194.41797704944884,3); socket.emit('1',-0.8915810516449142,194.41797704944884,3); socket.emit('1',-1.0815988659831413,243.85124686988988,3); socket.emit('1',-2.0599937876066523,243.85124686988988,3); socket.emit('1',-1.9100119115156164,187.2290671877633,3); socket.emit('1',-1.231580742074177,187.2290671877633,3); socket.emit('1',-1.7700175093099535,243.85316996094184,3); socket.emit('1',-1.3715751442798398,243.85316996094184,3); socket.emit('1',-1.5699816630240007,196.40006517310536,3); socket.emit('1',-1.5699629936544652,132.00004583332537,3);}
window.b09 = function () {/*GENS*/socket.emit("1", 4.73, 245, 3); socket.emit("1", 5.0025, 245, 3); socket.emit("1", 5.275, 245, 3); socket.emit("1", 5.5475, 245, 3); socket.emit("1", 5.82, 245, 3); socket.emit("1", 6.0925, 245, 3); socket.emit("1", 6.365, 245, 3); socket.emit("1", 6.6375, 245, 3); socket.emit("1", 6.91, 245, 3); socket.emit("1", 7.1825, 245, 3); socket.emit("1", 7.455, 245, 3); socket.emit("1", 7.7275, 245, 3); socket.emit("1", 8.0025, 245, 3); socket.emit("1", 8.275, 245, 3); socket.emit("1", 8.5475, 245, 3); socket.emit("1", 8.82, 245, 3); socket.emit("1", 9.0925, 245, 3); socket.emit("1", 9.3675, 245, 3); socket.emit("1", 9.64, 245, 3); socket.emit("1", 9.9125, 245, 3); socket.emit("1", 10.1875, 245, 3); socket.emit("1", 10.4625, 245, 3); socket.emit("1", 10.7375, 245, 3); socket.emit("1", 5.999, 180, 3); socket.emit("1", 6.275, 130, 3); socket.emit("1", 6.51, 185, 3); socket.emit("1", 6.775, 130, 3); socket.emit("1", 7.05, 185, 3); socket.emit("1", 7.3, 130, 3); socket.emit("1", 7.6, 185, 3); socket.emit("1", 7.85, 130, 3); socket.emit("1", 8.15, 185, 3); socket.emit("1", 8.4, 130, 3); socket.emit("1", 8.675, 185, 3); socket.emit("1", 8.925, 130, 3); socket.emit("1", 9.225, 185, 3); socket.emit("1", 9.5, 130, 3); socket.emit("1", 9.78, 185, 3); socket.emit("1", 10.05, 130, 3); socket.emit("1", 10.325, 185, 3); socket.emit("1", 10.6, 130, 3); socket.emit("1", 4.5889, 186.5, 3); socket.emit("1", 4.81, 130, 3); socket.emit("1", 5.085, 180.5, 3); socket.emit("1", 5.36, 130, 3); socket.emit("1", 5.64, 180, 3);}

window.traço = function () {
    var abc = document.getElementById('auto1');
    if (traço2) {traço2 = false
        renderDottedCircle=function(a, d, c, b) {b.setLineDash([5500, 1200]); b.beginPath(); b.arc(a, d, c + b.lineWidth / 2, 0, 2 * Math.PI); b.stroke(); b.setLineDash([]) }
        renderDottedLine=function(a, d, c, b, g) {g.setLineDash([5500, 1200]); g.beginPath(); g.moveTo(a, d); g.lineTo(c, b); g.stroke(); g.setLineDash([]) }
        abc.innerHTML = 'Trace: <span class="botao">Off</span>';
    } else {traço2 = true
        renderDottedCircle=function(a, d, c, b) {b.setLineDash([55, 12]); b.beginPath(); b.arc(a, d, c + b.lineWidth / 2, 0, 2 * Math.PI); b.stroke(); b.setLineDash([]) }
        renderDottedLine=function(a, d, c, b, g) {g.setLineDash([55, 12]); g.beginPath(); g.moveTo(a, d); g.lineTo(c, b); g.stroke(); g.setLineDash([]) }
        abc.innerHTML = 'Trace: <span class="botao">On</span>';}
    window.statusBar();return traço2;
}

window.bugtanks = function () {
   var bugg = document.getElementById('bugT');
   if (bt) {bt = false;
   bugg.innerHTML = 'Auto Bug: <span class="botao">Off</span>';
   clearInterval(tank);
   } else {bt = true;
   bugg.innerHTML = 'Auto Bug: <span class="botao">On</span>';
   window.tank = setInterval(autobug, 1000);
   function autobug() {
   function coordenada() {for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x)+12)*1, ((player.y)-1050)*1, e, 0, -1);}
   function SelecionarT(){selUnits = [];units.every((unit) => {if (unit.owner === player.sid && unit.type === 1) {if (!unit.info) unit.info = getUnitFromPath(unit.uPath);if (unit.info.name === 'Tank') {selUnits.push(unit);return false;};};return true;});selUnitType = "Unit";};
   setTimeout(function() {SelecionarT();}, 50);setTimeout(function() {coordenada();}, 100);
   }};
   window.statusBar();return bt;
}

window.autodefense4 = function () {
   var abcu = document.getElementById('auto9');
   if (auto9) {auto9 = false;
   abcu.innerHTML = 'UP-Hybrid: <span class="botao">Off</span>';
   clearInterval(teste9);
   } else {auto9 = true;
   abcu.innerHTML = 'UP-Hybrid: <span class="botao">On</span>';
   window.teste9 = setInterval(autodefesa4, 1000);
   function autodefesa4() {for (var i = 0; i < units.length; ++i) 3 == units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);for (var i = 0; i < units.length; ++i) 3 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);for (var i = 0; i < units.length; ++i) 0 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);for (var i = 0; i < units.length; ++i) 0 == units[i].type && 4 == units[i].turretIndex && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1)}};
   window.statusBar();return auto9;
}

window.autodefense2 = function () {
   var abco = document.getElementById('auto8');
   if (auto8) {auto8 = false;
   abco.innerHTML = 'Auto House: <span class="botao">Off</span>';
   clearInterval(teste8);
   } else {auto8 = true;
   abco.innerHTML = 'Auto House: <span class="botao">On</span>';
   window.teste8 = setInterval(autodefesa2, 1000);
   function autodefesa2() {socket.emit('1',-0.5811542723109486,130.00258651273057,4); socket.emit('1',-0.11114990729294812,130.00221690417442,4); socket.emit('1',0.3588066832712505,129.9987726865143,4); socket.emit('1',0.8338246592937211,130.00549911446043,4); socket.emit('1',1.3037818924024915,129.99670034273956,4); socket.emit('1',1.8370078961250351,129.99929384423604,4); socket.emit('1',2.307002098927474,129.99620379072604,4); socket.emit('1',2.7770146385296464,129.9939421665487,4); socket.emit('1',-3.031215756225037,130.00110191840687,4); socket.emit('1',-2.5611638848659366,130.000493075988,4); socket.emit('1',-0.25118563284946677,185.99687766196513,4); socket.emit('1',0.07780833217389749,184.999724324119,4); socket.emit('1',0.4253129513754257,189.5028772868633,4); socket.emit('1',0.7463010458397235,188.50315753323613,4); socket.emit('1',1.0688008903737225,185.0051696574991,4); socket.emit('1',1.4157864076872497,187.4474955820963,4); socket.emit('1',1.7387968567281928,188.50393338071228,4); socket.emit('1',2.0638187970410087,185.00263376503588,4); socket.emit('1',2.4120038699870334,187.99419060173113,4); socket.emit('1',2.7370118576954474,189.99910447157382,4); socket.emit('1',3.0619988665053777,184.00253612382627,4); socket.emit('1',-2.8761799259943577,186.00302201846077,4); socket.emit('1',-2.556188432609745,189.99655260030372,4); socket.emit('1',-0.683690561121664,245.00583911409137,4); socket.emit('1',-0.4336706531212168,244.99976510192815,4); socket.emit('1',-0.1836830943129391,245.00150387293556,4); socket.emit('1',0.06633466736125072,244.99883509927147,4); socket.emit('1',0.31630376020548656,245.00425833033995,4); socket.emit('1',0.5663222553621515,244.99931632557673,4); socket.emit('1',0.8438184133810533,244.99912754946692,4); socket.emit('1',1.093804736419265,244.99647528076807,4); socket.emit('1',1.34381161929555,246.00005223576684,4); socket.emit('1',1.5938069436226814,245.99512291913427,4); socket.emit('1',1.8438081614579171,246.00109959103838,4); socket.emit('1',2.0938349434036105,245.99871239500428,4); socket.emit('1',2.338803689366905,246.0042936617165,4); socket.emit('1',2.5888191509575758,245.99576256513043,4); socket.emit('1',2.849494695722646,244.997646723392,4); socket.emit('1',3.0994980802245906,244.9970295738297,4); socket.emit('1',-2.9336865015107394,244.99592506815293,4); socket.emit('1',-2.683676686914381,245.0010483651039,4); socket.emit('1',-2.4336791586494178,244.99806733931592,4); socket.emit('1',-2.1836723509016505,245.00088367187587,4); socket.emit('1',-1.0511826910191973,129.9983388355404,4); socket.emit('1',-2.091201874202775,129.99966807649935,4); socket.emit('1',-0.8961988929276105,185.00344023828313,4); socket.emit('1',-0.5711856886993952,190.00058947276975,4); socket.emit('1',-2.2361918251795228,185.99857875801084,4); socket.emit('1',-1.9061879934405994,184.99780593293542,4); socket.emit('1',-1.43367298779749,244.9997348978158,4); socket.emit('1',-1.1836882098117298,244.99876938466437,4); socket.emit('1',-0.9337115612363732,245.00104326308494,4); socket.emit('1',-1.9336945659106937,244.9961275204161,4); socket.emit('1',-1.683689228651845,244.99957877514814,4); socket.emit('1',-1.5707963267948966,140,7); socket.emit('1',-1.230009738849916,184.90341505769976,4); socket.emit('1',-2.081591996336938,309.99965709658454,8); socket.emit('1',-1.0600006572528557,309.99965709658454,8); socket.emit('1',-0.6399978747166213,309.99990225804925,8); socket.emit('1',-2.5015947788731716,309.99990225804913,8); socket.emit('1',-1.470005829354906,306.0029846259674,1); socket.emit('1',-0.4299974706868517,305.9957731734215,1); socket.emit('1',-2.7115951829029417,305.9957731734214,1); socket.emit('1',-0.22999785734952188,305.9978777704186,1); socket.emit('1',-2.9115947962402715,305.9978777704186,1); socket.emit('1',-0.030004724276454346,305.9977320177389,1); socket.emit('1',-3.111587929313339,305.997732017739,1); socket.emit('1',0.17000006120172068,306.0010800634533,1); socket.emit('1',2.9715925923880726,306.0010800634534,1); socket.emit('1',0.36998939270590564,305.99641599208314,1); socket.emit('1',2.7716032608838876,305.99641599208314,1); socket.emit('1',0.5700101295229084,305.9999694444429,1); socket.emit('1',2.571582524066885,305.99996944444297,1); socket.emit('1',0.7700076523156121,306.001344441491,1); socket.emit('1',2.371585001274181,306.0013444414909,1); socket.emit('1',0.9700136500621354,306.0031646895175,1); socket.emit('1',2.1715790035276576,306.0031646895175,1); socket.emit('1',1.1699896183257414,306.00169051820615,1); socket.emit('1',1.971603035264052,306.00169051820615,1); socket.emit('1',1.370003953798924,305.99784868524813,1); socket.emit('1',1.7715886997908694,305.99784868524813,1); socket.emit('1',1.5700120132302293,306.00009411763256,1); socket.emit('1',-1.6715868242348872,306.0029846259674,1); socket.emit('1',-1.2700052430104105,305.9985999967974,1); socket.emit('1',-1.8715874105793828,305.9985999967974,1); socket.emit('1',-0.850007998777195,305.995448658963,1); socket.emit('1',-2.291584654812598,305.995448658963,1);}};
   window.statusBar();return auto8;
}

window.autodefense1 = function () {
   var abcp = document.getElementById('auto7');
   if (auto7) {
   auto7 = false;
   abcp.innerHTML = 'UP-Defense: <span class="botao">Off</span>';
   clearInterval(teste7);
   } else {auto7 = true;
   abcp.innerHTML = 'UP-Defense: <span class="botao">On</span>';
   window.teste7 = setInterval(autodefesa1, 1000);
   function autodefesa1() {for (var i = 0; i < units.length; ++i) 3 == units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);for (var i = 0; i < units.length; ++i) 3 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);for (var i = 0; i < units.length; ++i) 0 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);for (var i = 0; i < units.length; ++i) 0 == units[i].type && 4 == units[i].turretIndex && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1);for(i=0;i<units.length;++i)0==units[i].type&&1==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid&&socket.emit("4",units[i].id,1);for(i=0;i<units.length;++i)0==units[i].type&&3==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid&&socket.emit("4",units[i].id,0)}};
   window.statusBar();return auto7;
}

window.autogens = function () {
   var abcdd = document.getElementById('auto2');
   if (autoos) {autoos = false;
   abcdd.innerHTML = 'Auto Generators: <span class="botao">Off</span>';
   clearInterval(teste1);
   } else {autoos = true;
   abcdd.innerHTML = 'Auto Generators: <span class="botao">On</span>';
   window.teste1 = setInterval(autogens, 1000);
   function autogens() {socket.emit('1',-2.1709650072326436,131.99790680158546,3); socket.emit('1',-0.9706276463571494,131.99790680158546,3); socket.emit('1',-2.661038279388777,132.00054128676913,3); socket.emit('1',-0.4805543742010161,132.00054128676913,3); socket.emit('1',3.054972441814363,132.0049108934969,3); socket.emit('1',0.08662021177543015,132.0049108934969,3); socket.emit('1',2.565020525090537,131.9995348476652,3); socket.emit('1',0.5765721284992561,131.9995348476652,3); socket.emit('1',2.075010322858914,131.99635525271137,3); socket.emit('1',1.0665823307308793,131.99635525271137,3); socket.emit('1',1.5710235995182578,132.00000340909085,3); socket.emit('1',-1.9389876596988553,184.87001379347598,3); socket.emit('1',-1.202604993890938,184.87001379347598,3); socket.emit('1',-2.2880010948893057,193.3268602651997,3); socket.emit('1',-0.8535915587004874,193.3268602651997,3); socket.emit('1',-2.6669770215998723,196.12837479569333,3); socket.emit('1',-0.4746156319899209,196.12837479569333,3); socket.emit('1',-3.0009853497071415,185.30879984501547,3); socket.emit('1',-0.1406073038826518,185.30879984501547,3); socket.emit('1',2.949005615914309,195.76931169108204,3); socket.emit('1',0.19258703767548419,195.76931169108204,3); socket.emit('1',2.550986699858048,196.02616662068377,3); socket.emit('1',0.5906059537317451,196.02616662068377,3); socket.emit('1',2.160990536100974,194.88883498035497,3); socket.emit('1',0.9806021174888195,194.88883498035497,3); socket.emit('1',1.8230251704924105,183.32051958250608,3); socket.emit('1',1.3185674830973828,183.32051958250608,3); socket.emit('1',1.7079899763657878,243.85129915585844,3); socket.emit('1',1.4336026772240056,243.85129915585844,3); socket.emit('1',1.9715148966641751,243.8473606582609,3); socket.emit('1',1.1700777569256182,243.8473606582609,3); socket.emit('1',2.3559915033892747,243.84577851584794,3); socket.emit('1',0.7856011502005185,243.84577851584794,3); socket.emit('1',2.7549940380658176,243.8466446355167,3); socket.emit('1',0.3865986155239758,243.8466446355167,3); socket.emit('1',-3.126008647475555,243.84961021088404,3); socket.emit('1',-0.01558400611423803,243.84961021088404,3); socket.emit('1',-2.8624818322653383,243.84667416226932,3); socket.emit('1',-0.2791108213244549,243.84667416226932,3); socket.emit('1',-2.4694967334414293,243.8536883050983,3); socket.emit('1',-0.6720959201483638,243.8536883050983,3); socket.emit('1',-2.0795199522382317,243.84940803700962,3); socket.emit('1',-1.0620727013515618,243.84940803700962,3); socket.emit('1',-1.8160136913812621,243.85502578376347,3); socket.emit('1',-1.3255789622085312,243.85502578376347,3); socket.emit('1',-1.5707963267948966,212.01,3); socket.emit('1',-1.5707963267948966,132,3);}}
   window.statusBar();return autoos;
}

window.autopower = function () {
   var abce = document.getElementById('auto4');
   if (auto4) {auto4 = false;
   abce.innerHTML = 'Auto Power Plants: <span class="botao">Off</span>';
   clearInterval(teste4);
   } else {auto4 = true;
   abce.innerHTML = 'Auto Power Plants: <span class="botao">On</span>';
   window.teste4 = setInterval(autopower, 1000);
   function autopower() {for (var i = 0; i < units.length; ++i) 0 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0)}};
   window.statusBar();return auto4;
}

window.materiais = function () {
   var ab = document.getElementById('auto3');
   if (material) {material = false;
   ab.innerHTML = 'Auto Spikes: <span class="botao">Off</span>';
   clearInterval(teste2)
   } else {material = true;
   ab.innerHTML = 'Auto Spikes: <span class="botao">On</span>';
   window.teste2 = setInterval(spikes, 100);
   function spikes() {for (var i = 0; i < units.length; ++i) 3 == units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);for (var i = 0; i < units.length; ++i) 3 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);}};
   window.statusBar();return material;
}

window.autocommander = function () {
   var abcf = document.getElementById('auto');
   if (auto5) {auto5 = false;
   abcf.innerHTML = 'Auto Commander: <span class="botao">Off</span>';
   clearInterval(teste3);
   } else {auto5 = true;
   abcf.innerHTML = 'Auto Commander: <span class="botao">On</span>';
   window.teste3 = setInterval(commander, 1000);
   function commander() {socket.emit("4",0,0,1)}};
   window.statusBar();return auto5;
}

window.floodao = function () {
   var abcg = document.getElementById('floo');
   if (auto6) {auto6 = false;
   abcg.innerHTML = 'Auto Flood: <span class="botao">Off</span>';
   clearInterval(flood);
   } else {auto6 = true;
   abcg.innerHTML = 'Auto Flood: <span class="botao">On</span>';
   window.flood = setInterval(floodaoo, 50);
   var x = prompt("Digite a frase para flodar: ");
   function floodaoo() {socket.emit("ch",x); socket.emit("ch",x);}};
   window.statusBar();return auto6;
}

window.autodefense7 = function () {
   var abct = document.getElementById('auto10');
   if (auto3) {auto3 = false;
   abct.innerHTML = 'Auto Defend: <span class="botao">Off</span>';
   clearInterval(teste3);
   } else {auto3 = true;
   abct.innerHTML = 'Auto Defend: <span class="botao">On</span>';
   window.teste3 = setInterval(autodefesa7, 150);
   function autodefesa7() {for(var i=0;i<loadedBase.length;i++){var building = loadedBase[i];socket.emit("1",building.dir,building.dst,1);}}};
   window.statusBar();return auto3;
}

window.autobuild = function () {
   var abctq = document.getElementById('build');
   if (build) {build = false;
   abctq.innerHTML = 'Auto Base: <span class="botao">Off</span>';
   clearInterval(teste10);
   } else {build = true;
   abctq.innerHTML = 'Auto Base: <span class="botao">On</span>';
   window.teste10 = setInterval(autodefesa10, 150);
   function autodefesa10() {for(var i=0;i<loadedBase.length;i++){var building = loadedBase[i];socket.emit("1",building.dir,building.dst,building.uPath[0])}};
   window.statusBar();return build;
}}

window.skin = function () {
var abce = document.getElementById('skin');
if (skins1) {
skins1 = false;
abce.innerHTML = 'Skins: <span class="botao">On</span>';
function httpGetAsync(theUrl, callback) {
var xmlHttp = new XMLHttpRequest();
xmlHttp.onreadystatechange = function() {
if (xmlHttp.readyState == 4)
callback(xmlHttp.status == 200 ? xmlHttp.responseText : false);
}
xmlHttp.open("GET", theUrl, true);
xmlHttp.send(null);
}
var customSkins = [];
httpGetAsync("https://andrewprivate.github.io/skins/skinlist", (b) => {
if (b) {
b = b.split('\n').filter((l) => {
return l
});
b.forEach((skin, i) => {
customSkins.push(skin);
})
}
})

window.renderPlayer = function(a, d, c, b, g) {
b.save();
if (a.skin && 0 < a.skin && a.skin <= playerSkins && !skinSprites[a.skin]) {
var e = new Image;
e.onload = function() {
this.readyToDraw = !0;
this.onload = null;
g == currentSkin && changeSkin(0)
};
e.src = ".././img/skins/skin_" + (a.skin - 1) + ".png";
skinSprites[a.skin] = e
} else if (customSkins.length && a && a.name) {
if (!a.resolvedSkin) {
a.resolvedSkin = true;
if (a.name[0] === ':') {
var match = a.name.match(/(?:\:([0-9]*))(.*)/);
if (match[1]) {
a.name = match[2].length ? match[2] : "unknown";
a.customSkin = parseInt(match[1]);
}
}
}
if (a.customSkin !== undefined && customSkins[a.customSkin]) {
var ind = a.customSkin + playerSkins + 1
if (!skinSprites[ind]) {
var e = new Image;
e.onload = function() {
this.readyToDraw = !0;
this.onload = null;
}
e.onerror = function() {
this.onerror = null;
if (skinSprites[ind] !== false) {
setTimeout(function() {
skinSprites[ind] = false;
}, 1000)
}
}
e.src = "https://andrewprivate.github.io/skins/" + customSkins[a.customSkin] + ".png";
skinSprites[ind] = e
}
if (skinSprites[ind].readyToDraw) {
e = a.size - b.lineWidth / 4
b.save()
b.lineWidth /= 2
renderCircle(d, c, a.size, b, !1, !0)
b.clip()
b.drawImage(skinSprites[ind], d - e, c - e, 2 * e, 2 * e)
b.restore();
return;
}
}
}
a.skin && skinSprites[a.skin] && skinSprites[a.skin].readyToDraw ? (e = a.size - b.lineWidth / 4, b.drawImage(skinSprites[a.skin], d - e, c - e, 2 * e, 2 * e), b.lineWidth /= 2, renderCircle(d, c, a.size, b, !1, !0)) : g || (b.fillStyle = playerColors[a.color], renderCircle(d,
c, a.size, b));
b.restore()
}
} else {
skins1 = true;
abce.innerHTML = 'Skins: <span class="botao">Off</span>';;
window.renderPlayer = function(a, d, c, b, g) {
b.save();
if (a.skin && 0 < a.skin && a.skin <= playerSkins && !skinSprites[a.skin]) {
var e = new Image;
e.onload = function() {
this.readyToDraw = !0;
this.onload = null;
g == currentSkin && changeSkin(0);
};
e.src = ".././img/skins/skin_" + (a.skin - 1) + ".png";
skinSprites[a.skin] = e;
}
a.skin && skinSprites[a.skin] && skinSprites[a.skin].readyToDraw ? (e = a.size - b.lineWidth / 4, b.lineWidth /= 2, renderCircle(d, c, a.size, b, !1, !0)) : g || (b.fillStyle = "rgba(255, 255, 255, 0)", renderCircle(d, c, a.size, b));
b.restore();
}
};
window.statusBar();
return skins1;
}

window.inverter2 = function () {
var giro2 = prompt("Digite:\n1 Para inverter base para baixo.\n2 Para inverter para a direita.\n3 Para inverter para a esquerda.\n4 Para mantê-la normal.");
  for(var i=0;i<loadedBase.length;i++){
  var building = loadedBase[i];
  if (giro2 == "1"){socket.emit("1", (building.dir)+3.14, building.dst, building.uPath[0]);}
  if (giro2 == "2"){socket.emit("1", (building.dir)+1.57, building.dst, building.uPath[0]);}
  if (giro2 == "3"){socket.emit("1", (building.dir)+4.71, building.dst, building.uPath[0]);}
  if (giro2 == "4"){socket.emit("1", (building.dir), building.dst, building.uPath[0]);}
}}

window.BOT2 = function () {var bots = prompt("quantidade de bot");for (let i = 0; i < bots; i++) {window.open("http://bloble.io/?l="+partyKey)}}
window.party = function() {alert("http://bloble.io/?l=" + partyKey)};

window.basesautomaticas = function () {
var bases = prompt("Escolha o número da base que deseja fazer:\n1- Base Full Ataque.\n2- Base DPK.\n3- Base 4 Sieges.");
if (bases == "1") {/*Full Atk Tradicional*/
setTimeout(function() {gens1();}, 1000); setTimeout(function() {gens1();}, 10000); setTimeout(function() {gens1();}, 20000); setTimeout(function() {gens1();}, 30000); setTimeout(function() {gens1();}, 40000); setTimeout(function() {gens1();}, 50000); setTimeout(function() {gens1();}, 55000); setTimeout(function() {upgens1();}, 65000); setTimeout(function() {upgens1();}, 75000); setTimeout(function() {upgens1();}, 85000); setTimeout(function() {upgens1();}, 95000); setTimeout(function() {upgens1();}, 105000); setTimeout(function() {upgens1();}, 115000); setTimeout(function() {upgens1();}, 125000); setTimeout(function() {upgens1();}, 135000); setTimeout(function() {uparmory();}, 144000); setTimeout(function() {uparmory();}, 145000); setTimeout(function() {camada311();}, 155000); setTimeout(function() {upmicro();}, 170000); setTimeout(function() {barrack1();}, 175000); setTimeout(function() {upbarrack1();}, 210000); setTimeout(function() {barrack2();}, 215000); setTimeout(function() {upbarrack2();}, 235000); setTimeout(function() {commander();}, 255000); setTimeout(function() {upcommander();}, 295000); setTimeout(function() {vendergens();}, 300000); setTimeout(function() {base();}, 301000); setTimeout(function() {sellbarrack1();}, 330000); setTimeout(function() {barrack1();}, 331000); setTimeout(function() {selecionarsiege();}, 332000); setTimeout(function() {centralizar1();}, 333000); setTimeout(function() {centralizar2();}, 352000); setTimeout(function() {selecionartropas();}, 358000); setTimeout(function() {centralizar3();}, 359000);
function gens1() {socket.emit("1",-1.5532024736165302,243.847739788582,3); socket.emit("1",-0.7357047649976083,243.84981217954626,3); socket.emit("1",-0.4631707810434728,243.85218493997556,3); socket.emit("1",-0.19069612575052558,243.85039122379942,3); socket.emit("1",0.081823242943498,243.84582383137092,3); socket.emit("1",0.3543068427626167,243.84595547189218,3); socket.emit("1",0.6268093323905378,243.84396855366344,3); socket.emit("1",0.8993152888678688,243.84944576520982,3); socket.emit("1",1.1718223321670949,243.85213326932367,3); socket.emit("1",1.4443151477371527,243.84787798953676,3); socket.emit("1",1.7192989793251703,243.85392205170697,3); socket.emit("1",-1.8288944376970422,243.84689971373433,3); socket.emit("1",1.9918103630041337,243.85460668193252,3); socket.emit("1",2.264316448888492,243.84897949345623,3); socket.emit("1",2.5368131007766124,243.85278858360428,3); socket.emit("1",2.8093246351976133,243.84723024877687,3); socket.emit("1",3.0843130098428064,243.8499212630589,3); socket.emit("1",-2.926357644061203,243.84645742761984,3); socket.emit("1",-2.6538811539385643,243.85120319571928,3); socket.emit("1",-2.3788730471629616,243.84483796053584,3); socket.emit("1",-2.1038593986469003,243.85357655773683,3); socket.emit("1",-1.2806671667751037,243.85129320961167,3); socket.emit("1",-1.0081716987983749,243.84706785196326,3); socket.emit("1",1.579987145667095,186.05785820545177,3); socket.emit("1",1.8200377893253108,131.9987878732225,3); socket.emit("1",1.3299885934720075,131.9987367363794,3); socket.emit("1",1.0700140183147795,183.45721926378366,3); socket.emit("1",0.8200112635098129,131.9969037515653,3); socket.emit("1",2.080020169750631,181.88728652657397,3); socket.emit("1",2.339962323692137,131.9988700709214,3); socket.emit("1",2.609997065030747,181.5314595325009,3); socket.emit("1",2.8799849967373223,132.00128673615268,3); socket.emit("1",-3.129973633515593,180.7422001083311,3); socket.emit("1",-2.8600046281491114,131.9987212059268,3); socket.emit("1",0.5500078589016157,181.36809090906803,3); socket.emit("1",0.28000624853648737,132.00094696630012,3); socket.emit("1",0.009993041907008273,181.12904377818583,3); socket.emit("1",-0.2599728532968926,131.99544878517588,3); socket.emit("1",-0.5300137628628261,181.13117705132927,3); socket.emit("1",-0.7999690811162178,132.00256436903035,3); socket.emit("1",-2.590017189612395,181.24926841231655,3); socket.emit("1",-2.320026939739574,131.9970927710153,3); socket.emit("1",-2.039999434196396,181.1243012408882,3); socket.emit("1",-1.0699951440269182,181.07652857286615,3);socket.emit('1',-1.5707963267948966,140,7);}
function base() {socket.emit('1',-1.0500473287277574,130.00221267347712,4); socket.emit('1',-2.091545324862036,130.00221267347712,4); socket.emit('1',-1.4400188097376512,245.84935651736004,4); socket.emit('1',-1.7015738438521422,245.84935651736004,4); socket.emit('1',-1.1900104808317025,245.8494956268977,4); socket.emit('1',-1.9515821727580909,245.8494956268977,4); socket.emit('1',-1.230001106358588,185.3177789635955,4); socket.emit('1',-1.9115915472312053,185.3177789635955,4); socket.emit('1',-0.9400023995383209,245.85184888464838,4); socket.emit('1',-2.2015902540514722,245.85184888464838,4); socket.emit('1',-0.8999702267969633,186.29954642993636,4); socket.emit('1',-2.24162242679283,186.29954642993636,4); socket.emit('1',-0.6899937919514598,245.84766055425473,4); socket.emit('1',-2.4515988616383333,245.84766055425473,4); socket.emit('1',-0.5799805865981342,129.99817383332717,4); socket.emit('1',-2.561612066991659,129.99817383332717,4); socket.emit('1',-0.5800148789500164,190.62603022672414,4); socket.emit('1',-2.561577774639777,190.62603022672414,4); socket.emit('1',-0.440015777851101,245.8482932623286,4); socket.emit('1',-2.7015768757386924,245.8482932623286,4); socket.emit('1',-2.949980511632284,245.84941508980646,4); socket.emit('1',-0.19161214195750892,245.84941508980646,4); socket.emit('1',-3.029975519697537,129.99894807266716,4); socket.emit('1',-0.11161713389225648,129.99894807266716,4); socket.emit('1',-2.8799859836785204,187.29249851502337,4); socket.emit('1',-0.2616066699112727,187.29249851502337,4); socket.emit('1',0.059990681918325274,245.85226397167858,4); socket.emit('1',3.0816019716714678,245.85226397167858,4); socket.emit('1',0.3600220650583072,130.004726452541,4); socket.emit('1',2.781570588531486,130.004726452541,4); socket.emit('1',0.31000666746342326,245.84925645606506,4); socket.emit('1',2.83158598612637,245.84925645606506,4); socket.emit('1',0.41000325305834856,189.58270437990896,4); socket.emit('1',2.7315894005314445,189.58270437990896,4); socket.emit('1',0.5599876344550477,245.85084522937896,4); socket.emit('1',2.5816050191347455,245.85084522937896,4); socket.emit('1',0.0800029313861146,184.43993629363453,4); socket.emit('1',3.0615897222036788,184.43993629363453,4); socket.emit('1',2.3099981404518664,129.9988511487697,4); socket.emit('1',0.8315945131379268,129.9988511487697,4); socket.emit('1',2.409979735719911,187.95915646756882,4); socket.emit('1',0.7316129178698823,187.95915646756882,4); socket.emit('1',2.3299899423563737,245.85351024543056,4); socket.emit('1',0.8116027112334195,245.85351024543056,4); socket.emit('1',2.080008458387522,245.85145535465102,4); socket.emit('1',1.0615841952022713,245.85145535465102,4); socket.emit('1',2.0799704311134937,182.97025359330956,4); socket.emit('1',1.0616222224763,182.97025359330956,4); socket.emit('1',1.8400303001017062,130.00337995606105,4); socket.emit('1',1.3015623534880871,130.00337995606105,4); socket.emit('1',1.82998124233891,245.85164164593252,4); socket.emit('1',1.3116114112508834,245.85164164593252,4); socket.emit('1',1.5699828228051445,245.85008135040349,4); socket.emit('1',1.4000268915066985,188.65410597174923,4); socket.emit('1',1.7415657620830949,188.65410597174923,4);}
function upgens1() {for (var i = 0; i < units.length; ++i) 0 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0)}
function barrack1() {socket.emit('1',-2.081591996336938,309.99965709658454,8);}
function upbarrack1() {for (i = 0; i < units.length; ++i) {if (2 === units[i].type && "square" == units[i].shape && units[i].owner == player.sid) {socket.emit("4", units[i].id, 2);}}}
function barrack2() {socket.emit('1',-1.0600006572528557,309.99965709658454,8);socket.emit('1',-0.6399978747166213,309.99990225804925,8);socket.emit('1',-2.5015947788731716,309.99990225804913,8)}
function camada311() {socket.emit('1',-1.470005829354906,306.0029846259674,1); socket.emit('1',-0.4299974706868517,305.9957731734215,1); socket.emit('1',-2.7115951829029417,305.9957731734214,1); socket.emit('1',-0.22999785734952188,305.9978777704186,1); socket.emit('1',-2.9115947962402715,305.9978777704186,1); socket.emit('1',-0.030004724276454346,305.9977320177389,1); socket.emit('1',-3.111587929313339,305.997732017739,1); socket.emit('1',0.17000006120172068,306.0010800634533,1); socket.emit('1',2.9715925923880726,306.0010800634534,1); socket.emit('1',0.36998939270590564,305.99641599208314,1); socket.emit('1',2.7716032608838876,305.99641599208314,1); socket.emit('1',0.5700101295229084,305.9999694444429,1); socket.emit('1',2.571582524066885,305.99996944444297,1); socket.emit('1',0.7700076523156121,306.001344441491,1); socket.emit('1',2.371585001274181,306.0013444414909,1); socket.emit('1',0.9700136500621354,306.0031646895175,1); socket.emit('1',2.1715790035276576,306.0031646895175,1); socket.emit('1',1.1699896183257414,306.00169051820615,1); socket.emit('1',1.971603035264052,306.00169051820615,1); socket.emit('1',1.370003953798924,305.99784868524813,1); socket.emit('1',1.7715886997908694,305.99784868524813,1); socket.emit('1',1.5700120132302293,306.00009411763256,1); socket.emit('1',-1.6715868242348872,306.0029846259674,1); socket.emit('1',-1.2700052430104105,305.9985999967974,1); socket.emit('1',-1.8715874105793828,305.9985999967974,1); socket.emit('1',-0.850007998777195,305.995448658963,1); socket.emit('1',-2.291584654812598,305.995448658963,1);}
function uparmory() {for (i = 0; i < units.length; ++i) {if (0 === units[i].type && "circle" == units[i].shape && units[i].owner == player.sid) {socket.emit("4", units[i].id, 0);}}}
function upbarrack2() {for (i = 0; i < units.length; ++i) {if (2 === units[i].type && "square" == units[i].shape && units[i].owner == player.sid) {socket.emit("4", units[i].id, 0);}}}
function vendergens() {for (var a = [], d = 0; d < units.length; ++d) {if (units[d].type === 0 && units[d].owner == player.sid) {var name = getUnitFromPath(units[d].uPath).name;(name === 'Generator' || name === 'Power Plant') && a.push(units[d].id)}}socket.emit("3", a)}
function sellbarrack1() {for (var a = [], d = 0; d < units.length; ++d) {if (units[d].type === 2 && units[d].owner == player.sid) {var name = getUnitFromPath(units[d].uPath).name;(name === 'Siege Factory') && a.push(units[d].id)}}socket.emit("3", a)}
function commander(){socket.emit("4",0,0,1);}
function upmicro() {for (var i = 0; i < units.length; ++i) 3 == units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1)}
function upantitank() {for (var i = 0; i < units.length; ++i) 0 == units[i].type && 4 == units[i].turretIndex && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1)}
function upcommander() {for (var i = 0; i < units.length; ++i) 1 == units[i].type && "star" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);}
function selecionartropas(){selUnits = [];units.forEach((unit) => {if (unit.owner === player.sid && unit.type === 1) {if (!unit.info) unit.info = getUnitFromPath(unit.uPath);unit.info.name !== 'Siege Ram' && selUnits.push(unit);}})}
function selecionarsiege() {selUnits = [];units.forEach((unit) => {if (unit.owner === player.sid && unit.type === 1) {if (!unit.info) unit.info = getUnitFromPath(unit.uPath);if (unit.info.name === 'Siege Ram') {selUnits.push(unit);return false;}}return true;});selUnitType = "Unit";}
function centralizar1() {if(player.x==null){player.x==0};if(player.y==null){player.y==0};for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x))*1, ((player.y)-150)*1, e, 0, -1);}
function centralizar2() {if(player.x==null){player.x==0};if(player.y==null){player.y==0};for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", (player.x)*1, (player.y)*1, e, 0, -1);}
function centralizar3() {if(player.x==null){player.x==0};if(player.y==null){player.y==0};for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x))*1, ((player.y)-140)*1, e, 0, -1);}
}

if (bases == "2") {/*DPK*/
setTimeout(function(){ gens();},1000); setTimeout(function(){ gens();},12000); setTimeout(function(){ gens();},24000); setTimeout(function(){ upgens();},68000); setTimeout(function(){ upgens();},120000); setTimeout(function(){ turrets();},130000); setTimeout(function(){ upturrets();},156000); setTimeout(function(){ upturrets2();},198000); setTimeout(function(){ walls();},212000); setTimeout(function(){ upwalls();},254000); setTimeout(function(){ upwalls2();},375000); setTimeout(function(){ commander();},408000);
function gens(){for(i=-3.14;i<=3.14;i+=0.5233){ socket.emit("1",i,132,3); }for(i=-2.965;i<=3.14;i+=0.3488){ socket.emit("1",i,243.85,3); }}
function upgens(){for(i=0;i<units.length;++i){ if(0===units[i].type&&"hexagon"==units[i].shape&&units[i].owner==player.sid){ socket.emit("4",units[i].id,0); } }}
function turrets(){for(i=-3.14;i<=3.14;i+=0.3488){ socket.emit("1",i,194,2); }}
function upturrets(){for(i=0;i<units.length;++i){ if(0===units[i].type&&1==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid){ socket.emit("4",units[i].id,1); } }}
function upturrets2(){for(i=0;i<units.length;++i){ if(0===units[i].type&&3==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid){ socket.emit("4",units[i].id,0); } }}
function walls(){for(i=-3.14;i<3.14;i+=0.216){ socket.emit("1",i,1e3,1); }}
function upwalls(){for(i=0;i<units.length;++i){ if(3==units[i].type&&"circle"==units[i].shape&&units[i].owner==player.sid){ socket.emit("4",units[i].id,0); } }}
function upwalls2(){for(i=0;i<units.length;++i){ if(3==units[i].type&&"hexagon"==units[i].shape&&units[i].owner==player.sid){ socket.emit("4",units[i].id,0); } }}
function commander(){socket.emit("4",0,0,1);}
}

if (bases == "3") {/*Full Siege*/
setTimeout(function(){ gens();},1000); setTimeout(function(){ gens();},10000); setTimeout(function(){ gens();},20000); setTimeout(function(){ gens();},30000); setTimeout(function(){ gens();},50000); setTimeout(function(){ gens();},55000); setTimeout(function(){ house();},65000); setTimeout(function(){ micro();},86000); setTimeout(function(){ barraca();},136000); setTimeout(function(){ vendergens();},206000); setTimeout(function(){ house();},207000); setTimeout(function(){ venderhouse();},284000); setTimeout(function(){ gens();},285000); setTimeout(function(){ siege();},286000); setTimeout(function(){ wall();},287000); setTimeout(function(){ micro();},288000); setTimeout(function(){ power();},294000);
function micro(){for (var i = 0; i < units.length; ++i) 3== units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1)}
function vendergens(){for (var a = [], d = 0; d < units.length; ++d) { if (units[d].type === 0 && units[d].owner == player.sid) { var name = getUnitFromPath(units[d].uPath).name; (name === 'Generator') && a.push(units[d].id)}} socket.emit("3", a)}
function barraca(){for(i=0;i<units.length;++i){ if(2===units[i].type&&"square"==units[i].shape&&units[i].owner==player.sid){ socket.emit("4",units[i].id,2);}}}
function venderhouse(){for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'House' && a.push(units[d].id); socket.emit("3", a);}
function siege(){for (var a = [], d = 0; d < units.length; ++d) { if (units[d].type === 2 && units[d].owner == player.sid) { var name = getUnitFromPath(units[d].uPath).name; (name === 'Siege Factory') && a.push(units[d].id)}} socket.emit("3", a)}  function wall(){ socket.emit("1",10.07,311,1);}
function gens(){socket.emit("1",4.73,245,3); socket.emit("1",5.0025,245,3); socket.emit("1",5.275,245,3); socket.emit("1",5.5475,245,3); socket.emit("1",5.82,245,3); socket.emit("1",6.0925,245,3); socket.emit("1",6.365,245,3); socket.emit("1",6.6375,245,3); socket.emit("1",6.91,245,3); socket.emit("1",7.1825,245,3); socket.emit("1",7.455,245,3); socket.emit("1",7.7275,245,3); socket.emit("1",8.0025,245,3); socket.emit("1",8.275,245,3); socket.emit("1",8.5475,245,3); socket.emit("1",8.82,245,3); socket.emit("1",9.0925,245,3); socket.emit("1",9.3675,245,3); socket.emit("1",9.64,245,3); socket.emit("1",9.9125,245,3); socket.emit("1",10.1875,245,3); socket.emit("1",10.4625,245,3); socket.emit("1",10.7375,245,3); socket.emit("1",4.5889,186.5,3); socket.emit("1",5.085,180.5,3); socket.emit("1",5.64,180,3); socket.emit("1",5.999,180,3); socket.emit("1",6.51,185,3); socket.emit("1",7.05,185,3); socket.emit("1",7.6,185,3); socket.emit("1",8.15,185,3); socket.emit("1",8.675,185,3); socket.emit("1",9.225,185,3); socket.emit("1",9.78,185,3); socket.emit("1",10.325,185,3); socket.emit("1",4.81,130,3); socket.emit("1",5.36,130,3); socket.emit("1",6.275,130,3); socket.emit("1",6.775,130,3); socket.emit("1",7.3,130,3); socket.emit("1",7.85,130,3); socket.emit("1",8.4,130,3); socket.emit("1",8.925,130,3); socket.emit("1",9.5,130,3); socket.emit("1",10.05,130,3); socket.emit("1",10.6,130,3); }
function house(){socket.emit('1',-0.5811542723109486,130.00258651273057,4); socket.emit('1',-0.11114990729294812,130.00221690417442,4); socket.emit('1',0.3588066832712505,129.9987726865143,4); socket.emit('1',0.8338246592937211,130.00549911446043,4); socket.emit('1',1.3037818924024915,129.99670034273956,4); socket.emit('1',1.8370078961250351,129.99929384423604,4); socket.emit('1',2.307002098927474,129.99620379072604,4); socket.emit('1',2.7770146385296464,129.9939421665487,4); socket.emit('1',-3.031215756225037,130.00110191840687,4); socket.emit('1',-2.5611638848659366,130.000493075988,4); socket.emit('1',-0.25118563284946677,185.99687766196513,4); socket.emit('1',0.07780833217389749,184.999724324119,4); socket.emit('1',0.4253129513754257,189.5028772868633,4); socket.emit('1',0.7463010458397235,188.50315753323613,4); socket.emit('1',1.0688008903737225,185.0051696574991,4); socket.emit('1',1.4157864076872497,187.4474955820963,4); socket.emit('1',1.7387968567281928,188.50393338071228,4); socket.emit('1',2.0638187970410087,185.00263376503588,4); socket.emit('1',2.4120038699870334,187.99419060173113,4); socket.emit('1',2.7370118576954474,189.99910447157382,4); socket.emit('1',3.0619988665053777,184.00253612382627,4); socket.emit('1',-2.8761799259943577,186.00302201846077,4); socket.emit('1',-2.556188432609745,189.99655260030372,4); socket.emit('1',-0.683690561121664,245.00583911409137,4); socket.emit('1',-0.4336706531212168,244.99976510192815,4); socket.emit('1',-0.1836830943129391,245.00150387293556,4); socket.emit('1',0.06633466736125072,244.99883509927147,4); socket.emit('1',0.31630376020548656,245.00425833033995,4); socket.emit('1',0.5663222553621515,244.99931632557673,4); socket.emit('1',0.8438184133810533,244.99912754946692,4); socket.emit('1',1.093804736419265,244.99647528076807,4); socket.emit('1',1.34381161929555,246.00005223576684,4); socket.emit('1',1.5938069436226814,245.99512291913427,4); socket.emit('1',1.8438081614579171,246.00109959103838,4); socket.emit('1',2.0938349434036105,245.99871239500428,4); socket.emit('1',2.338803689366905,246.0042936617165,4); socket.emit('1',2.5888191509575758,245.99576256513043,4); socket.emit('1',2.849494695722646,244.997646723392,4); socket.emit('1',3.0994980802245906,244.9970295738297,4); socket.emit('1',-2.9336865015107394,244.99592506815293,4); socket.emit('1',-2.683676686914381,245.0010483651039,4); socket.emit('1',-2.4336791586494178,244.99806733931592,4); socket.emit('1',-2.1836723509016505,245.00088367187587,4); socket.emit('1',-1.0511826910191973,129.9983388355404,4); socket.emit('1',-2.091201874202775,129.99966807649935,4); socket.emit('1',-0.8961988929276105,185.00344023828313,4); socket.emit('1',-0.5711856886993952,190.00058947276975,4); socket.emit('1',-2.2361918251795228,185.99857875801084,4); socket.emit('1',-1.9061879934405994,184.99780593293542,4); socket.emit('1',-1.43367298779749,244.9997348978158,4); socket.emit('1',-1.1836882098117298,244.99876938466437,4); socket.emit('1',-0.9337115612363732,245.00104326308494,4); socket.emit('1',-1.9336945659106937,244.9961275204161,4); socket.emit('1',-1.683689228651845,244.99957877514814,4); socket.emit('1',-1.230009738849916,184.90341505769976,4); socket.emit('1',-2.081591996336938,309.99965709658454,8); socket.emit('1',-1.0600006572528557,309.99965709658454,1); socket.emit('1',-0.6399978747166213,309.99990225804925,1); socket.emit('1',-2.5015947788731716,309.99990225804913,1); socket.emit('1',-1.470005829354906,306.0029846259674,1); socket.emit('1',-0.4299974706868517,305.9957731734215,1); socket.emit('1',-2.7115951829029417,305.9957731734214,1); socket.emit('1',-0.22999785734952188,305.9978777704186,1); socket.emit('1',-2.9115947962402715,305.9978777704186,1); socket.emit('1',-0.030004724276454346,305.9977320177389,1); socket.emit('1',-3.111587929313339,305.997732017739,1); socket.emit('1',0.17000006120172068,306.0010800634533,1); socket.emit('1',2.9715925923880726,306.0010800634534,1); socket.emit('1',0.36998939270590564,305.99641599208314,1); socket.emit('1',2.7716032608838876,305.99641599208314,1); socket.emit('1',0.5700101295229084,305.9999694444429,1); socket.emit('1',2.571582524066885,305.99996944444297,1); socket.emit('1',0.7700076523156121,306.001344441491,1); socket.emit('1',2.371585001274181,306.0013444414909,1); socket.emit('1',0.9700136500621354,306.0031646895175,1); socket.emit('1',2.1715790035276576,306.0031646895175,1); socket.emit('1',1.1699896183257414,306.00169051820615,1); socket.emit('1',1.971603035264052,306.00169051820615,1); socket.emit('1',1.370003953798924,305.99784868524813,1); socket.emit('1',1.7715886997908694,305.99784868524813,1); socket.emit('1',1.5700120132302293,306.00009411763256,1); socket.emit('1',-1.6715868242348872,306.0029846259674,1); socket.emit('1',-1.2700052430104105,305.9985999967974,1); socket.emit('1',-1.8715874105793828,305.9985999967974,1); socket.emit('1',-0.850007998777195,305.995448658963,1); socket.emit('1',-2.291584654812598,305.995448658963,1);}
function power(){for (var i = 0; i < units.length; ++i) 0 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0)}
}
}
window.CE = function () {if(player.x==null){player.x==0}if(player.y==null){player.y==0}for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", (player.x)*1, (player.y)*1, e, 0, -1);}
window.centralizar = function () {selecionar1234()
if (selUnits.length == 1) {setTimeout(function() {centralizar11();}, 50);setTimeout(function() {centralizar1234();}, 18000);}
if (selUnits.length == 2) {setTimeout(function() {centralizar2();}, 50);setTimeout(function() {centralizar1234();}, 24000);}
if (selUnits.length == 3) {setTimeout(function() {centralizar3();}, 50);setTimeout(function() {centralizar31();}, 24000);}
if (selUnits.length == 4 || selUnits.length > 4) {setTimeout(function() {centralizar1234();}, 50);setTimeout(function() {centralizar4();}, 21000);}
function selecionar1234() {selUnits = []; units.forEach((unit) => { if (unit.owner === player.sid && unit.type === 1) { if (!unit.info) unit.info = getUnitFromPath(unit.uPath); if (unit.info.name === 'Siege Ram') { selUnits.push(unit); return false; } } return true; }); selUnitType = "Unit"; }
function centralizar1234() {if(player.x==null){player.x==0}if(player.y==null){player.y==0}for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", (player.x)*1, (player.y)*1, e, 0, -1);}
function centralizar2() {if(player.x==null){player.x==0}if(player.y==null){player.y==0}for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x))*1, ((player.y)+40)*1, e, 0, -1);for (var e = [], b = 0; b < Math.floor(selUnits.length-1); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x))*1, ((player.y)-40)*1, e, 0, -1)}
function centralizar3() {if(player.x==null){player.x==0}if(player.y==null){player.y==0}for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x)-25)*1, ((player.y)-25)*1, e, 0, -1);for (var e = [], b = 0; b < Math.floor(selUnits.length-1); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x)+25)*1, ((player.y)-25)*1, e, 0, -1);for (var e = [], b = 0; b < Math.floor(selUnits.length-2); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x))*1, ((player.y)+33)*1, e, 0, -1);}
function centralizar31() {if(player.x==null){player.x==0}if(player.y==null){player.y==0}for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x)-25)*1, ((player.y)-13)*1, e, 0, -1);for (var e = [], b = 0; b < Math.floor(selUnits.length-1); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x)+25)*1, ((player.y)-13)*1, e, 0, -1);for (var e = [], b = 0; b < Math.floor(selUnits.length-2); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x))*1, ((player.y)+17)*1, e, 0, -1);}
function centralizar4() {if(player.x==null){player.x==0 }if(player.y==null){player.y==0}for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x)+40)*1, ((player.y))*1, e, 0, -1);for (var e = [], b = 0; b < Math.floor(selUnits.length-1); ++b) e.push(selUnits[b].id);socket.emit("5", ((player.x))*1, ((player.y)+40)*1, e, 0, -1);for (var e = [], b = 0; b < Math.floor(selUnits.length-2); ++b) e.push(selUnits[b].id); socket.emit("5", ((player.x)-40)*1, ((player.y))*1, e, 0, -1);for (var e = [], b = 0; b < Math.floor(selUnits.length-3); ++b) e.push(selUnits[b].id); socket.emit("5", ((player.x))*1, ((player.y)-40)*1, e, 0, -1); }
function centralizar11() {if(player.x==null){ player.x==0 }if(player.y==null){ player.y==0 }for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id); socket.emit("5", (player.x), (player.y)-150, e, 0, -1); }
};

window.upar = function () {
var chat = prompt("Oque Deseja Upar?\n1 - Power Plants\n2 - Micro Generators\n3 - Boulders\n4 - Spikes\n5 - AntiTanks\n6 - Greater Barracks\n7 - SemiAuto\n8 - Ranged Turret\n9 - Spotter Turret\n10 - Rapid Turret\n11 - Gatlin Turret");
if (chat == "1") {/*power plants*/for (var i = 0; i < units.length; ++i) 0 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0)}
if (chat == "2"){/*micro generators*/for (var i = 0; i < units.length; ++i) 3 == units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1)}
if (chat == "3") {/*boulders*/for (var i = 0; i < units.length; ++i) 3 == units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0)}
if (chat == "4") {/*spikes*/for (var i = 0; i < units.length; ++i) 3 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0)}
if (chat == "5") {/*antitanks*/for (var i = 0; i < units.length; ++i) 0 == units[i].type && 4 == units[i].turretIndex && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1)}
if (chat == "6") {/*greater barracks*/for(i=0;i<units.length;++i){ if(2==units[i].type&&"square"==units[i].shape&&units[i].owner==player.sid){ socket.emit("4",units[i].id,0);}}}
if (chat == "7") {/*semiauto*/for(i=0;i<units.length;++i)0==units[i].type&&4==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid&&socket.emit("4",units[i].id,0)}
if (chat == "8") {/*ranged turret*/for(i=0;i<units.length;++i)0==units[i].type&&1==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid&&socket.emit("4",units[i].id,1)}
if (chat == "9") {/*spotter turret*/for(i=0;i<units.length;++i)0==units[i].type&&3==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid&&socket.emit("4",units[i].id,0)}
if (chat == "10") {/*rapid turret*/for(i=0;i<units.length;++i)0==units[i].type&&1==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid&&socket.emit("4",units[i].id,0)}
if (chat == "11") {/*gatlin turret*/for(i=0;i<units.length;++i)0==units[i].type&&2==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid&&socket.emit("4",units[i].id,0)}
};

window.vender = function () {
var chat = prompt("O que deseja vender?\n1 - Walls\n2 - Generators\n3 - Houses\n4 - Micro Generators\n5 - Boulders\n6 - Spikes\n7 - Sniper Turrets\n8 - Simple Turret\n9 - Barracks\n10 - All");
if (chat == "1") {/*sell walls*/for (var a = [], d = 0; d < units.length; ++d) units[d].type === 3 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Wall' && a.push(units[d].id);socket.emit("3", a)}
if (chat == "2") {/*sell generators*/for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Generator' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Power Plant' && a.push(units[d].id);socket.emit("3", a)}
if (chat == "3") {/*sell houses*/for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'House' && a.push(units[d].id);socket.emit("3", a)}
if (chat == "4") {/*sell micro generators*/for (var a = [], d = 0; d < units.length; ++d) units[d].type === 3 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Micro Generator' && a.push(units[d].id);socket.emit("3", a)}
if (chat == "5") {/*sell boulder*/for (var a = [], d = 0; d < units.length; ++d) units[d].type === 3 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Boulder' && a.push(units[d].id);socket.emit("3", a)}
if (chat == "6") {/*sell spikes*/for (var a = [], d = 0; d < units.length; ++d) units[d].type === 3 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Spikes' && a.push(units[d].id);socket.emit("3", a)}
if (chat == "7") {/*sell sniper turrets*/for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Sniper Turret' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Semi-Auto Sniper' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Anti Tank Gun' && a.push(units[d].id);socket.emit("3", a)}
if (chat == "8") {/*sell simple turrets*/for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Rapid Turret' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Gatlin Turret' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Ranged Turret' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Spotter Turret' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 0 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Simple Turret' && a.push(units[d].id);socket.emit("3", a)}
if (chat == "9") {/*sell barracks*/for (var a = [], d = 0; d < units.length; ++d) units[d].type === 2 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Barracks' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 2 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Greater Barracks' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 2 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Tank Factory' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 2 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Siege Factory' && a.push(units[d].id);socket.emit("3", a);for (var a = [], d = 0; d < units.length; ++d) units[d].type === 2 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Blitz Factory' && a.push(units[d].id);socket.emit("3", a)}
if (chat == "10") {/*sell all*/for (var a = [], d = 0; d < units.length; ++d)(units[d].type === 3 || units[d].type === 2 || units[d].type === 0) && units[d].owner == player.sid && a.push(units[d].id);socket.emit("3", a)}
};

function Timer() {
    var xd = document.createElement('demo');
    var countDownDate = new Date().getTime();
    var x = setInterval(function() {
    var now = new Date().getTime();
    var distance = now - countDownDate;
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    document.getElementById("demo").innerHTML = "Living Time: <span class='botao'>" + hours + "h " + minutes + "m " + seconds + "s " + "</span>";
    if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "Living Time: Expired, you survived for:" + hours + "h" + minutes + "m" + seconds + "s"
}}, 1000)};iniciarTimer();
function iniciarTimer() {setTimeout(Timer, 100)};

var resolution = 1;
var rate = 0;
window.removeEventListener("mousemove", gameInput);
window.gameInput = function (a) {
a.preventDefault();
a.stopPropagation();
mouseX = a.clientX * resolution;
mouseY = a.clientY * resolution;
};
window.addEventListener("mousemove", gameInput, false);
window.removeEventListener("resize", resize);
window.resize = function (n) {
screenWidth = window.innerWidth * resolution;
screenHeight = window.innerHeight * resolution;
scaleFillNative = MathMAX(screenWidth / maxScreenWidth, screenHeight / maxScreenHeight);
if (n !== true) {
mainCanvas.width = screenWidth;
mainCanvas.height = screenHeight;
mainCanvas.style.width = (screenWidth / resolution) + "px";
mainCanvas.style.height = (screenHeight / resolution) + "px";
};
mainContext.setTransform(scaleFillNative, 0, 0, scaleFillNative, Math.floor((screenWidth - maxScreenWidth * scaleFillNative) / 2), Math.floor((screenHeight - maxScreenHeight * scaleFillNative) / 2));
player || renderBackground();
};

window.setRes = function () {
var el = document.getElementById('res');
if (resolution === 1) {resolution = .1;el.innerHTML = 'Resolução<span><span class="botao">(.1)';
} else if (resolution === .1) {resolution = .2;el.innerHTML = 'Resolução<span><span class="botao">(.2)';
} else if (resolution === .2) {resolution = .3;el.innerHTML = 'Resolução<span><span class="botao">(.3)';
} else if (resolution === .3) {resolution = .4;el.innerHTML = 'Resolução<span><span class="botao">(.4)';
} else if (resolution === .4) {resolution = .5;el.innerHTML = 'Resolução<span><span class="botao">(.5)';
} else if (resolution === .5) {resolution = .6;el.innerHTML = 'Resolução<span><span class="botao">(.6)';
} else if (resolution === .6) {resolution = .7;el.innerHTML = 'Resolução<span><span class="botao">(.7)';
} else if (resolution === .7) {resolution = .8;el.innerHTML = 'Resolução<span><span class="botao">(.8)';
} else if (resolution === .8) {resolution = .9;el.innerHTML = 'Resolução<span><span class="botao">(.9)';
} else if (resolution === .9) {resolution = 1;el.innerHTML = 'Resolução<span><span class="botao">(1)';
}unitSprites = {};resize();window.statusBar();
};

window.setFPS = function () {
var el = document.getElementById('fps');
if (rate === 0) {el.textContent = 'Anti-Lag';
rate = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999;
} else {el.textContent = 'Normal';
rate = 0;}
unitSprites = {};resize();window.statusBar();
};



window.makeUI = function () {
    if (window.hasMadeUI) return;
    window.hasMadeUI = true;
    window.statusItems.sort(function (a, b) {
        return a.order - b.order;
    })
    var levels = [];
    window.UIList.forEach((item) => {
        if (!levels[item.level]) levels[item.level] = [];
        levels[item.level].push(item)
    })

    levels = levels.filter((a) => {
        if (a) {
            a.sort(function (a, b) {
                return a.x - b.x;
            })
            return true;
        } else {
            return false;
        }
    })

    var headAppend = document.getElementsByTagName("head")[0],
        style = document.createElement("div");

    var toast = document.createElement('div');
    toast.id = "snackbar";
    var css = document.createElement('div');



    var height = levels.length * (14 + 19) + (levels.length - 1) * 7 - 20;
    style.innerHTML = "<style>\n\
#noobscriptUI, #noobscriptUI > div > div {\n\
background-color:rgba(0, 0, 0);\n\
margin-left: 0px;\n\
border-radius:10px;\n\
pointer-events:all\n\
}\n\
#noobscriptUI {\n\
top: -" + (height + 13) + "px;\n\
transition: 0.8s;\n\
margin-left:20px;\n\
position:absolute;\n\
padding-left:24px;\n\
border: 2px solid blue;\n\
margin-top:9px;\n\
padding-top:15px;\n\
padding-bottom:15px;\n\
width:675px;\n\
height: " + height + "px;\n\
font-family:arial;\n\
left:2%\n\
hoverMessage:Upgrades\n\
}\n\
#noobscriptUI:hover{\n\
top:0px\n\
}\n\
#noobscriptUI > div > div {\n\
color:#ffffff;\n\
padding:10px;\n\
height:10px;\n\
display:inline-block;\n\
border: 0.5px solid blue;\n\
cursor:pointer;\n\
font-size:15px\n\
}\n\
#noobscriptUI > div > div > div {\n\
color:blue;\n\
padding:10px;\n\
height:10px;\n\
display:inline-block;\n\
cursor:pointer;\n\
font-size:12px\n\
}\n\
</style>";

    headAppend.appendChild(style);
    headAppend.appendChild(css);


    var contAppend = document.getElementById("gameUiContainer"),
        menuA = document.createElement("div");

    var code = ['<div id="noobscriptUI">\n'];

    levels.forEach((items, i) => {
        code.push(i === 0 ? '    <div>\n' : '    <div style="margin-top:7px;">\n');
        items.forEach((el) => {
            code.push('        ' + el.html + '\n');
        })
        code.push('    </div>\n');
    })
    code.push('    <div id="confinfo" style="margin-top:4px; color: white; text-align: center; font-size: 10px; white-space:pre"></div>')
    code.push('</div>');

    menuA.innerHTML = code.join("");
    contAppend.insertBefore(menuA, contAppend.firstChild)
    contAppend.appendChild(toast)
    var toastTimeout = false;
    window.showToast = function (msg) {
        toast.textContent = msg;

        if (toastTimeout) clearTimeout(toastTimeout);
        else toast.className = "show";
        toastTimeout = setTimeout(function () {
            toast.className = 'hide'
            setTimeout(function () {
                toast.className = '';
            }, 400);
            toastTimeout = false;
        }, 3000);
    }
    window.statusBar = function () {
        var el = document.getElementById('confinfo');
        var text = [];

        window.statusItems.forEach((item, i) => {
            if (i !== 0) text.push('     ');
            if (item.name) text.push(item.name + ': ');
        })

        el.textContent = text.join('');
    }
    window.statusBar();

    window.initFuncs.forEach((func) => {
        func();
    })
}
setTimeout(() => {
    window.makeUI();
}, 1000)

/*KEYCODES*/
function CeS() {selUnits = []; units.forEach((unit) => { if (unit.owner === player.sid && unit.type === 1) { if (!unit.info) unit.info = getUnitFromPath(unit.uPath); unit.info.name !== 'Siege Ram' && selUnits.push(unit)  } });  selUnitType = "Unit";}
function Com() {selUnits = []; units.every((unit) => { if (unit.owner === player.sid && unit.type === 1) { if (!unit.info) unit.info = getUnitFromPath(unit.uPath); if (unit.info.name === 'Commander') { selUnits.push(unit); return false; } } return true; }); selUnitType = "Unit";}
function Sol() {selUnits = []; units.forEach((unit) => { if (unit.owner === player.sid && unit.type === 1) { if (!unit.info) unit.info = getUnitFromPath(unit.uPath); if (unit.info.name === 'Soldier') { selUnits.push(unit); return false; } } return true; }); selUnitType = "Unit"; }
function Gens() {socket.emit('1',-2.1709650072326436,131.99790680158546,3); socket.emit('1',-0.9706276463571494,131.99790680158546,3); socket.emit('1',-2.661038279388777,132.00054128676913,3); socket.emit('1',-0.4805543742010161,132.00054128676913,3); socket.emit('1',3.054972441814363,132.0049108934969,3); socket.emit('1',0.08662021177543015,132.0049108934969,3); socket.emit('1',2.565020525090537,131.9995348476652,3); socket.emit('1',0.5765721284992561,131.9995348476652,3); socket.emit('1',2.075010322858914,131.99635525271137,3); socket.emit('1',1.0665823307308793,131.99635525271137,3); socket.emit('1',1.5710235995182578,132.00000340909085,3); socket.emit('1',-1.9389876596988553,184.87001379347598,3); socket.emit('1',-1.202604993890938,184.87001379347598,3); socket.emit('1',-2.2880010948893057,193.3268602651997,3); socket.emit('1',-0.8535915587004874,193.3268602651997,3); socket.emit('1',-2.6669770215998723,196.12837479569333,3); socket.emit('1',-0.4746156319899209,196.12837479569333,3); socket.emit('1',-3.0009853497071415,185.30879984501547,3); socket.emit('1',-0.1406073038826518,185.30879984501547,3); socket.emit('1',2.949005615914309,195.76931169108204,3); socket.emit('1',0.19258703767548419,195.76931169108204,3); socket.emit('1',2.550986699858048,196.02616662068377,3); socket.emit('1',0.5906059537317451,196.02616662068377,3); socket.emit('1',2.160990536100974,194.88883498035497,3); socket.emit('1',0.9806021174888195,194.88883498035497,3); socket.emit('1',1.8230251704924105,183.32051958250608,3); socket.emit('1',1.3185674830973828,183.32051958250608,3); socket.emit('1',1.7079899763657878,243.85129915585844,3); socket.emit('1',1.4336026772240056,243.85129915585844,3); socket.emit('1',1.9715148966641751,243.8473606582609,3); socket.emit('1',1.1700777569256182,243.8473606582609,3); socket.emit('1',2.3559915033892747,243.84577851584794,3); socket.emit('1',0.7856011502005185,243.84577851584794,3); socket.emit('1',2.7549940380658176,243.8466446355167,3); socket.emit('1',0.3865986155239758,243.8466446355167,3); socket.emit('1',-3.126008647475555,243.84961021088404,3); socket.emit('1',-0.01558400611423803,243.84961021088404,3); socket.emit('1',-2.8624818322653383,243.84667416226932,3); socket.emit('1',-0.2791108213244549,243.84667416226932,3); socket.emit('1',-2.4694967334414293,243.8536883050983,3); socket.emit('1',-0.6720959201483638,243.8536883050983,3); socket.emit('1',-2.0795199522382317,243.84940803700962,3); socket.emit('1',-1.0620727013515618,243.84940803700962,3); socket.emit('1',-1.8160136913812621,243.85502578376347,3); socket.emit('1',-1.3255789622085312,243.85502578376347,3); socket.emit('1',-1.5707963267948966,212.01,3); socket.emit('1',-1.5707963267948966,132,3);}
function BaseZ() {socket.emit('1',-1.5707963267948966,140,7); socket.emit('1',-1.0500473287277574,130.00221267347712,4); socket.emit('1',-2.091545324862036,130.00221267347712,4); socket.emit('1',-1.4400188097376512,245.84935651736004,4); socket.emit('1',-1.7015738438521422,245.84935651736004,4); socket.emit('1',-1.1900104808317025,245.8494956268977,4); socket.emit('1',-1.9515821727580909,245.8494956268977,4); socket.emit('1',-1.230001106358588,185.3177789635955,4); socket.emit('1',-1.9115915472312053,185.3177789635955,4); socket.emit('1',-0.9400023995383209,245.85184888464838,4); socket.emit('1',-2.2015902540514722,245.85184888464838,4); socket.emit('1',-0.8999702267969633,186.29954642993636,4); socket.emit('1',-2.24162242679283,186.29954642993636,4); socket.emit('1',-0.6899937919514598,245.84766055425473,4); socket.emit('1',-2.4515988616383333,245.84766055425473,4); socket.emit('1',-0.5799805865981342,129.99817383332717,4); socket.emit('1',-2.561612066991659,129.99817383332717,4); socket.emit('1',-0.5800148789500164,190.62603022672414,4); socket.emit('1',-2.561577774639777,190.62603022672414,4); socket.emit('1',-0.440015777851101,245.8482932623286,4); socket.emit('1',-2.7015768757386924,245.8482932623286,4); socket.emit('1',-2.949980511632284,245.84941508980646,4); socket.emit('1',-0.19161214195750892,245.84941508980646,4); socket.emit('1',-3.029975519697537,129.99894807266716,4); socket.emit('1',-0.11161713389225648,129.99894807266716,4); socket.emit('1',-2.8799859836785204,187.29249851502337,4); socket.emit('1',-0.2616066699112727,187.29249851502337,4); socket.emit('1',0.059990681918325274,245.85226397167858,4); socket.emit('1',3.0816019716714678,245.85226397167858,4); socket.emit('1',0.3600220650583072,130.004726452541,4); socket.emit('1',2.781570588531486,130.004726452541,4); socket.emit('1',0.31000666746342326,245.84925645606506,4); socket.emit('1',2.83158598612637,245.84925645606506,4); socket.emit('1',0.41000325305834856,189.58270437990896,4); socket.emit('1',2.7315894005314445,189.58270437990896,4); socket.emit('1',0.5599876344550477,245.85084522937896,4); socket.emit('1',2.5816050191347455,245.85084522937896,4); socket.emit('1',0.0800029313861146,184.43993629363453,4); socket.emit('1',3.0615897222036788,184.43993629363453,4); socket.emit('1',2.3099981404518664,129.9988511487697,4); socket.emit('1',0.8315945131379268,129.9988511487697,4); socket.emit('1',2.409979735719911,187.95915646756882,4); socket.emit('1',0.7316129178698823,187.95915646756882,4); socket.emit('1',2.3299899423563737,245.85351024543056,4); socket.emit('1',0.8116027112334195,245.85351024543056,4); socket.emit('1',2.080008458387522,245.85145535465102,4); socket.emit('1',1.0615841952022713,245.85145535465102,4); socket.emit('1',2.0799704311134937,182.97025359330956,4); socket.emit('1',1.0616222224763,182.97025359330956,4); socket.emit('1',1.8400303001017062,130.00337995606105,4); socket.emit('1',1.3015623534880871,130.00337995606105,4); socket.emit('1',1.82998124233891,245.85164164593252,4); socket.emit('1',1.3116114112508834,245.85164164593252,4); socket.emit('1',1.5699828228051445,245.85008135040349,4); socket.emit('1',1.4000268915066985,188.65410597174923,4); socket.emit('1',1.7415657620830949,188.65410597174923,4); socket.emit('1',-2.0815919963369383,309.9996570965847,8); socket.emit('1',-1.060000657252855,309.9996570965847,8); socket.emit('1',-0.6399978747166213,309.99990225804925,8); socket.emit('1',-2.501594778873172,309.99990225804925,8); socket.emit('1',-1.470005829354906,306.0029846259674,1); socket.emit('1',-0.42999747068685196,305.9957731734213,1); socket.emit('1',-2.711595182902941,305.9957731734213,1); socket.emit('1',-0.22999785734952188,305.9978777704186,1); socket.emit('1',-2.9115947962402715,305.9978777704186,1); socket.emit('1',-0.030004724276454325,305.9977320177391,1); socket.emit('1',-3.111587929313339,305.9977320177391,1); socket.emit('1',0.17000006120172054,306.0010800634535,1); socket.emit('1',2.9715925923880726,306.0010800634535,1); socket.emit('1',0.36998939270590564,305.99641599208314,1); socket.emit('1',2.7716032608838876,305.99641599208314,1); socket.emit('1',0.5700101295229084,305.9999694444429,1); socket.emit('1',2.571582524066885,305.9999694444429,1); socket.emit('1',0.7700076523156126,306.00134444149086,1); socket.emit('1',2.3715850012741804,306.00134444149086,1); socket.emit('1',0.9700136500621354,306.0031646895175,1); socket.emit('1',2.1715790035276576,306.0031646895175,1); socket.emit('1',1.169989618325742,306.0016905182061,1); socket.emit('1',1.9716030352640512,306.0016905182061,1); socket.emit('1',1.3700039537989233,305.9978486852482,1); socket.emit('1',1.77158869979087,305.9978486852482,1); socket.emit('1',1.57001201323023,306.00009411763256,1); socket.emit('1',-1.6715868242348872,306.0029846259674,1); socket.emit('1',-1.2700052430104112,305.9985999967973,1); socket.emit('1',-1.8715874105793822,305.9985999967973,1); socket.emit('1',-0.8500079987771956,305.99544865896286,1); socket.emit('1',-2.2915846548125978,305.99544865896286,1);}
function BaseX() {socket.emit('1',-1.5707963267948966,130,1); socket.emit('1',-1.5599944396497256,190.7111260519428,1); socket.emit('1',-1.0500473287277574,130.00221267347712,1); socket.emit('1',-2.091545324862036,130.00221267347712,1); socket.emit('1',-1.4400188097376512,245.84935651736004,1); socket.emit('1',-1.7015738438521422,245.84935651736004,1); socket.emit('1',-1.1900104808317025,245.8494956268977,1); socket.emit('1',-1.9515821727580909,245.8494956268977,1); socket.emit('1',-1.230001106358588,185.3177789635955,1); socket.emit('1',-1.9115915472312053,185.3177789635955,1); socket.emit('1',-0.9400023995383209,245.85184888464838,1); socket.emit('1',-2.2015902540514722,245.85184888464838,1); socket.emit('1',-0.8999702267969633,186.29954642993636,1); socket.emit('1',-2.24162242679283,186.29954642993636,1); socket.emit('1',-0.6899937919514598,245.84766055425473,1); socket.emit('1',-2.4515988616383333,245.84766055425473,1); socket.emit('1',-0.5799805865981342,129.99817383332717,1); socket.emit('1',-2.561612066991659,129.99817383332717,1); socket.emit('1',-0.5800148789500164,190.62603022672414,1); socket.emit('1',-2.561577774639777,190.62603022672414,1); socket.emit('1',-0.440015777851101,245.8482932623286,1); socket.emit('1',-2.7015768757386924,245.8482932623286,1); socket.emit('1',-2.949980511632284,245.84941508980646,1); socket.emit('1',-0.19161214195750892,245.84941508980646,1); socket.emit('1',-3.029975519697537,129.99894807266716,1); socket.emit('1',-0.11161713389225648,129.99894807266716,1); socket.emit('1',-2.8799859836785204,187.29249851502337,1); socket.emit('1',-0.2616066699112727,187.29249851502337,1); socket.emit('1',0.059990681918325274,245.85226397167858,1); socket.emit('1',3.0816019716714678,245.85226397167858,1); socket.emit('1',0.3600220650583072,130.004726452541,1); socket.emit('1',2.781570588531486,130.004726452541,1); socket.emit('1',0.31000666746342326,245.84925645606506,1); socket.emit('1',2.83158598612637,245.84925645606506,1); socket.emit('1',0.41000325305834856,189.58270437990896,1); socket.emit('1',2.7315894005314445,189.58270437990896,1); socket.emit('1',0.5599876344550477,245.85084522937896,1); socket.emit('1',2.5816050191347455,245.85084522937896,1); socket.emit('1',0.0800029313861146,184.43993629363453,1); socket.emit('1',3.0615897222036788,184.43993629363453,1); socket.emit('1',2.3099981404518664,129.9988511487697,1); socket.emit('1',0.8315945131379268,129.9988511487697,1); socket.emit('1',2.409979735719911,187.95915646756882,1); socket.emit('1',0.7316129178698823,187.95915646756882,1); socket.emit('1',2.3299899423563737,245.85351024543056,1); socket.emit('1',0.8116027112334195,245.85351024543056,1); socket.emit('1',2.080008458387522,245.85145535465102,1); socket.emit('1',1.0615841952022713,245.85145535465102,1); socket.emit('1',2.0799704311134937,182.97025359330956,1); socket.emit('1',1.0616222224763,182.97025359330956,1); socket.emit('1',1.8400303001017062,130.00337995606105,1); socket.emit('1',1.3015623534880871,130.00337995606105,1); socket.emit('1',1.82998124233891,245.85164164593252,1); socket.emit('1',1.3116114112508834,245.85164164593252,1); socket.emit('1',1.5699828228051445,245.85008135040349,1); socket.emit('1',1.4000268915066985,188.65410597174923,1); socket.emit('1',1.7415657620830949,188.65410597174923,1); socket.emit('1',-2.0815919963369383,309.9996570965847,1); socket.emit('1',-1.060000657252855,309.9996570965847,1); socket.emit('1',-0.6399978747166213,309.99990225804925,1); socket.emit('1',-2.501594778873172,309.99990225804925,1); socket.emit('1',-1.470005829354906,306.0029846259674,1); socket.emit('1',-0.42999747068685196,305.9957731734213,1); socket.emit('1',-2.711595182902941,305.9957731734213,1); socket.emit('1',-0.22999785734952188,305.9978777704186,1); socket.emit('1',-2.9115947962402715,305.9978777704186,1); socket.emit('1',-0.030004724276454325,305.9977320177391,1); socket.emit('1',-3.111587929313339,305.9977320177391,1); socket.emit('1',0.17000006120172054,306.0010800634535,1); socket.emit('1',2.9715925923880726,306.0010800634535,1); socket.emit('1',0.36998939270590564,305.99641599208314,1); socket.emit('1',2.7716032608838876,305.99641599208314,1); socket.emit('1',0.5700101295229084,305.9999694444429,1); socket.emit('1',2.571582524066885,305.9999694444429,1); socket.emit('1',0.7700076523156126,306.00134444149086,1); socket.emit('1',2.3715850012741804,306.00134444149086,1); socket.emit('1',0.9700136500621354,306.0031646895175,1); socket.emit('1',2.1715790035276576,306.0031646895175,1); socket.emit('1',1.169989618325742,306.0016905182061,1); socket.emit('1',1.9716030352640512,306.0016905182061,1); socket.emit('1',1.3700039537989233,305.9978486852482,1); socket.emit('1',1.77158869979087,305.9978486852482,1); socket.emit('1',1.57001201323023,306.00009411763256,1); socket.emit('1',-1.6715868242348872,306.0029846259674,1); socket.emit('1',-1.2700052430104112,305.9985999967973,1); socket.emit('1',-1.8715874105793822,305.9985999967973,1); socket.emit('1',-0.8500079987771956,305.99544865896286,1); socket.emit('1',-2.2915846548125978,305.99544865896286,1);}
function Micro() {for (var i = 0; i < units.length; ++i) 3 == units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1);}
function Commander() {socket.emit("4",0,0,1);}
function SellWall() {for (var a = [], d = 0; d < units.length; ++d) units[d].type === 3 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Wall' && a.push(units[d].id);socket.emit("3", a)}
function Centralizar() {if(player.x==null){player.x==0};if(player.y==null){player.y==0};for (var e = [], b = 0; b < Math.floor(selUnits.length-0); ++b) e.push(selUnits[b].id);socket.emit("5", (player.x)*1, (player.y)*1, e, 0, -1);}
function Dpk() {for(i=-3.14;i<=3.14;i+=0.5233){socket.emit("1",i,132,3);}for(i=-2.965;i<=3.14;i+=0.3488){socket.emit("1",i,243.85,3);}for(i=-3.14;i<=3.14;i+=0.3488){socket.emit("1",i,194,2);}for(i=-3.14;i<3.14;i+=0.216){socket.emit("1",i,1e3,1);}}
function DefendDpk() {for(i=-3.14;i<=3.14;i+=0.5233){socket.emit("1",i,132,1);}for(i=-2.965;i<=3.14;i+=0.3488){socket.emit("1",i,243.85,1);}for(i=-3.14;i<=3.14;i+=0.3488){socket.emit("1",i,194,1);}for(i=-3.14;i<3.14;i+=0.216){socket.emit("1",i,1e3,1);}}
function vender() {for (var a = [], d = 0; d < units.length; ++d) units[d].type === 3 && units[d].owner == player.sid && getUnitFromPath(units[d].uPath).name === 'Wall' && a.push(units[d].id);socket.emit("3", a)};
function upDpk() {for (var i = 0; i < units.length; ++i) 0 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);for(i=0;i<units.length;++i)0==units[i].type&&1==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid&&socket.emit("4",units[i].id,1);for(i=0;i<units.length;++i)0==units[i].type&&3==units[i].turretIndex&&"circle"==units[i].shape&&units[i].owner==player.sid&&socket.emit("4",units[i].id,0);for (var i = 0; i < units.length; ++i) 3 == units[i].type && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);for (var i = 0; i < units.length; ++i) 3 == units[i].type && "hexagon" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 0);    for (var i = 0; i < units.length; ++i) 0 == units[i].type && 4 == units[i].turretIndex && "circle" == units[i].shape && units[i].owner == player.sid && socket.emit("4", units[i].id, 1);}
function GensDef() {socket.emit('1',-2.1709650072326436,131.99790680158546,1); socket.emit('1',-0.9706276463571494,131.99790680158546,1); socket.emit('1',-2.661038279388777,132.00054128676913,1); socket.emit('1',-0.4805543742010161,132.00054128676913,1); socket.emit('1',3.054972441814363,132.0049108934969,1); socket.emit('1',0.08662021177543015,132.0049108934969,1); socket.emit('1',2.565020525090537,131.9995348476652,1); socket.emit('1',0.5765721284992561,131.9995348476652,1); socket.emit('1',2.075010322858914,131.99635525271137,1); socket.emit('1',1.0665823307308793,131.99635525271137,1); socket.emit('1',1.5710235995182578,132.00000340909085,1); socket.emit('1',-1.9389876596988553,184.87001379347598,1); socket.emit('1',-1.202604993890938,184.87001379347598,1); socket.emit('1',-2.2880010948893057,193.3268602651997,1); socket.emit('1',-0.8535915587004874,193.3268602651997,1); socket.emit('1',-2.6669770215998723,196.12837479569333,1); socket.emit('1',-0.4746156319899209,196.12837479569333,1); socket.emit('1',-3.0009853497071415,185.30879984501547,1); socket.emit('1',-0.1406073038826518,185.30879984501547,1); socket.emit('1',2.949005615914309,195.76931169108204,1); socket.emit('1',0.19258703767548419,195.76931169108204,1); socket.emit('1',2.550986699858048,196.02616662068377,1); socket.emit('1',0.5906059537317451,196.02616662068377,1); socket.emit('1',2.160990536100974,194.88883498035497,1); socket.emit('1',0.9806021174888195,194.88883498035497,1); socket.emit('1',1.8230251704924105,183.32051958250608,1); socket.emit('1',1.3185674830973828,183.32051958250608,1); socket.emit('1',1.7079899763657878,243.85129915585844,1); socket.emit('1',1.4336026772240056,243.85129915585844,1); socket.emit('1',1.9715148966641751,243.8473606582609,1); socket.emit('1',1.1700777569256182,243.8473606582609,1); socket.emit('1',2.3559915033892747,243.84577851584794,1); socket.emit('1',0.7856011502005185,243.84577851584794,1); socket.emit('1',2.7549940380658176,243.8466446355167,1); socket.emit('1',0.3865986155239758,243.8466446355167,1); socket.emit('1',-3.126008647475555,243.84961021088404,1); socket.emit('1',-0.01558400611423803,243.84961021088404,1); socket.emit('1',-2.8624818322653383,243.84667416226932,1); socket.emit('1',-0.2791108213244549,243.84667416226932,1); socket.emit('1',-2.4694967334414293,243.8536883050983,1); socket.emit('1',-0.6720959201483638,243.8536883050983,1); socket.emit('1',-2.0795199522382317,243.84940803700962,1); socket.emit('1',-1.0620727013515618,243.84940803700962,1); socket.emit('1',-1.8160136913812621,243.85502578376347,1); socket.emit('1',-1.3255789622085312,243.85502578376347,1); socket.emit('1',-1.5707963267948966,212.01,1); socket.emit('1',-1.5707963267948966,132,1);}

addEventListener("keydown", function(a){
if(a.keyCode == 69){CeS();}
if(a.keyCode == 67){Com();}
if(a.keyCode == 81){Sol();}
if(a.keyCode == 120){Gens();}
if(a.keyCode == 90){BaseZ();}
if(a.keyCode == 88){BaseX();}
if(a.keyCode == 98){Micro();}
if(a.keyCode == 67){Commander();}
if(a.keyCode == 96){SellWall();}
if(a.keyCode == 194){Centralizar();}
if(a.keyCode == 33){Dpk();}
if(a.keyCode == 34){DefendDpk();}
if(a.keyCode == 97){setTimeout(function() {vender();},20);setTimeout(function() {BaseZ();},30);}
if(a.keyCode == 226){if (selUnits.length) {var a = player.x + targetDst * MathCOS(targetDir) + camX,d = player.y + targetDst * MathSIN(targetDir) + camY;for (var e = [], b = 0; b < selUnits.length; ++b) e.push(selUnits[b].id);socket.emit("5", UTILS.roundToTwo(a), UTILS.roundToTwo(d), e, 0, -1)}}
if(a.keyCode == 121){GensDef();}
if(a.keyCode == 118){upDpk();}

})

addEventListener("keydown",function(a){if(document.activeElement == mainCanvas && selUnits.length){if(a.key=="*"){effect1();}}});
var rot = 0.1;
function effect1(){var radiuslenght = prompt("Digite o tamanho do círculo:");var radius = radiuslenght;var x = player.x+targetDst*MathCOS(targetDir)+camX;var y = player.y+targetDst*MathSIN(targetDir)+camY;var interval = (Math.PI*2)/selUnits.length;rot+=0.1;
for(let i=0;i<selUnits.length;i++){ socket.emit("5",x+(Math.cos(interval*i+rot)*radius),y+(Math.sin(interval*i+rot)*radius),[selUnits[i].id],0,0);
}};

addEventListener("keydown",function(a){if(document.activeElement == mainCanvas && selUnits.length){if(a.key=="/"){effect700();}}});
var rot = 0.1;
function effect700(){var radiuslenght = 700;var radius = radiuslenght;var x = player.x+targetDst*MathCOS(targetDir)+camX;var y = player.y+targetDst*MathSIN(targetDir)+camY;var interval = (Math.PI*2)/selUnits.length;rot+=0.1;
for(let i=0;i<selUnits.length;i++){socket.emit("5",x+(Math.cos(interval*i+rot)*radius),y+(Math.sin(interval*i+rot)*radius),[selUnits[i].id],0,0);
}};
