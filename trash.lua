--[[
    
    Self leak @https://github.com/matas3535/gamesneeze
    
    Leaking cause exploiting is dead and I have quit this community long ago
    No reason for me to keep this private anymore

    For any questions etc contact me on my telegram @beheaded

    This version is a little outdated as I accidently deleted all of my files from my USB
    Includes everything like languages and loader so not that old but still a little outdated

    Doesn't include esp spotted check, Other languages (russian, belarussian, italian, french, albanian, german, latvian)
                        ^^^^ these were on my usb sry accidently deleted (sry to all those people that wrote all the stuff out for the languages xD) ^^^^

    You are free to paste from this no need to provide credit or anything
                ⚠⚠ Use it as a learning resource :D ⚠⚠

]]

-- // Folders
local CustomChat
local Sample
--
do -- Folders
    if not isfolder("Atlanta") then
        makefolder("Atlanta")
    end
    --
    if not isfile("Atlanta/Relations.Atlanta") then
        writefile("Atlanta/Relations.Atlanta", "")
    end
    --
    if not isfolder("Atlanta/Images") then
        makefolder("Atlanta/Images")
    end
    --
    if not isfolder("Atlanta/Configs") then
        makefolder("Atlanta/Configs")
    end
    --
    if not isfolder("Atlanta/Configs/Universal") then
        makefolder("Atlanta/Configs/Universal")
    end
    --
    if not isfolder("Atlanta/Configs/Legit") then
        makefolder("Atlanta/Configs/Legit")
    end
    --
    if not isfolder("Atlanta/Luas") then
        makefolder("Atlanta/Luas")
    end
    --
    if not isfile("Atlanta/Chat.Atlanta") then
        writefile("Atlanta/Chat.Atlanta", "edit your chat here, use commas to seperate chats, etc : so bad, 🤣😂so bad")
    end
    --
    if isfile("Atlanta/Chat.Atlanta") then
        local Chat = readfile("Atlanta/Chat.Atlanta"):gsub("\n", ""):split(",")
        --
        if Chat and typeof(Chat) == "table" and #Chat > 0 then
            CustomChat = Chat
        end
    end
    --
    if isfile("Atlanta/Sample.Atlanta") then
        local SampleText = readfile("Atlanta/Sample.Atlanta")
        --
        if SampleText and typeof(SampleText) == "string" and #SampleText > 0 then
            Sample = SampleText
        end
    end
end

local repo = 'https://raw.githubusercontent.com/Eggn886/everline.cc/main/'

-- // Tables

local Library, Utility, Flags, Theme = loadstring(game:HttpGet(repo .. 'Library.lua'))()
--
local Themes, Visualisation, Visuals, Desync, Movement, Camera, Color, Math, Tween, Chat, Languages, Atlanta = {
    Default = {1, [[{"Outline":"000000","Accent":"5d3e98","LightText":"ffffff","DarkText":"afafaf","LightContrast":"1e1e1e","CursorOutline":"0a0a0a","DarkContrast":"141414","TextBorder":"000000","Inline":"323232"}]]},
    Abyss = {2, [[{"Outline":"0a0a0a","Accent":"8c87b4","LightText":"ffffff","DarkText":"afafaf","LightContrast":"1e1e1e","CursorOutline":"141414","DarkContrast":"141414","TextBorder":"0a0a0a","Inline":"2d2d2d"}]]},
    Fatality = {3, [[{"Outline":"0f0f28","Accent":"f00f50","LightText":"c8c8ff","DarkText":"afafaf","LightContrast":"231946","CursorOutline":"0f0f28","DarkContrast":"191432","TextBorder":"0a0a0a","Inline":"322850"}]]},
    Neverlose = {4, [[{"Outline":"000005","Accent":"00b4f0","LightText":"ffffff","DarkText":"afafaf","LightContrast":"000f1e","CursorOutline":"0f0f28","DarkContrast":"050514","TextBorder":"0a0a0a","Inline":"0a1e28"}]]},
    Aimware = {5, [[{"Outline":"000005","Accent":"c82828","LightText":"e8e8e8","DarkText":"afafaf","LightContrast":"2b2b2b","CursorOutline":"191919","DarkContrast":"191919","TextBorder":"0a0a0a","Inline":"373737"}]]},
    Youtube = {6, [[{"Outline":"000000","Accent":"ff0000","LightText":"f1f1f1","DarkText":"aaaaaa","LightContrast":"232323","CursorOutline":"121212","DarkContrast":"0f0f0f","TextBorder":"121212","Inline":"393939"}]]},
    Gamesense = {7, [[{"Outline":"000000","Accent":"a7d94d","LightText":"ffffff","DarkText":"afafaf","LightContrast":"171717","CursorOutline":"141414","DarkContrast":"0c0c0c","TextBorder":"141414","Inline":"282828"}]]},
    Onetap = {8, [[{"Outline":"000000","Accent":"dda85d","LightText":"d6d9e0","DarkText":"afafaf","LightContrast":"2c3037","CursorOutline":"000000","DarkContrast":"1f2125","TextBorder":"000000","Inline":"4e5158"}]]},
    Entropy = {9, [[{"Outline":"0a0a0a","Accent":"81bbe9","LightText":"dcdcdc","DarkText":"afafaf","LightContrast":"3d3a43","CursorOutline":"000000","DarkContrast":"302f37","TextBorder":"000000","Inline":"4c4a52"}]]},
    Interwebz = {10, [[{"Outline":"1a1a1a","Accent":"c9654b","LightText":"fcfcfc","DarkText":"a8a8a8","LightContrast":"291f38","CursorOutline":"1a1a1a","DarkContrast":"1f162b","TextBorder":"000000","Inline":"40364f"}]]},
    Dracula = {11, [[{"Outline":"202126","Accent":"9a81b3","LightText":"b4b4b8","DarkText":"88888b","LightContrast":"2a2c38","CursorOutline":"202126","DarkContrast":"252730","TextBorder":"2a2c38","Inline":"3c384d"}]]},
    Spotify = {12, [[{"Outline":"0a0a0a","Accent":"1ed760","LightText":"d0d0d0","DarkText":"949494","LightContrast":"181818","CursorOutline":"000000","DarkContrast":"121212","TextBorder":"000000","Inline":"292929"}]]},
    Sublime = {13, [[{"Outline":"000000","Accent":"ff9800","LightText":"e8ffff","DarkText":"d3d3c2","LightContrast":"32332d","CursorOutline":"000000","DarkContrast":"282923","TextBorder":"000000","Inline":"484944"}]]},
    Vape = {14, [[{"Outline":"0a0a0a","Accent":"26866a","LightText":"dcdcdc","DarkText":"afafaf","LightContrast":"1f1f1f","CursorOutline":"000000","DarkContrast":"1a1a1a","TextBorder":"000000","Inline":"363636"}]]},
    Neko = {15, [[{"Outline":"000000","Accent":"d21f6a","LightText":"ffffff","DarkText":"afafaf","LightContrast":"171717","CursorOutline":"0a0a0a","DarkContrast":"131313","TextBorder":"000000","Inline":"2d2d2d"}]]},
    Corn = {16, [[{"Outline":"000000","Accent":"ff9000","LightText":"dcdcdc","DarkText":"afafaf","LightContrast":"252525","CursorOutline":"000000","DarkContrast":"191919","TextBorder":"000000","Inline":"333333"}]]},
    Minecraft = {17, [[{"Outline":"000000","Accent":"27ce40","LightText":"ffffff","DarkText":"d7d7d7","LightContrast":"333333","CursorOutline":"000000","DarkContrast":"262626","TextBorder":"000000","Inline":"333333"}]]},
}, {
    Character = nil,
    Texture = 5,
    LastUpdate = {}
}, {
    Bases = {},
    Base = {}
}, {
    Enabled = false,
    SmoothValue = 0,
    Rotate = Vector3.new(720, 360, 720),
    Rotate2 = Vector3.new(),
    Real = {
        CFrame = nil,
        Velocity = nil,
        RotVelocity = nil
    },
    Fake = {
        CFrame = CFrame.new(),
        Velocity = Vector3.new(),
        RotVelocity = Vector3.new()
    },
    Sent = CFrame.new()
}, {
    Velocity = 0,
    State = {},
    LastPosition = CFrame.new()
}, {
}, {
}, {
    Conversions = {}
}, {
}, {
    LastTick = tick()
}, {
    ["Lt"] = {
        ["[%s]  -  [Account = $ACC [$UID],  Build = $BUILD,  Ping = $PING,  FPS = $FPS]"] = "[%s]  -  [Akountas = $ACC [$UID],  Versija = $BUILD,  Ping = $PING,  FPS = $FPS]",
        ["Legit"] = "Taikymas",
        ["Rage"] = "Akivaizdus",
        ["Players"] = "Zaidejiai",
        ["Visuals"] = "Vaizdai",
        ["Misc"] = "Ivairus",
        ["Settings"] = "Parametrai",
        ["Configs"] = "Konfigur..",

        
        ["Aim Assist"] = "Taikymo Pagalba",
        ["Trigger Bot"] = "Saidymo Botas",

        ["Enabled"] = "Ijungtas",
        ["Field Of View"] = "Matymo Ratas",
        ["Horizontal Smoothing"] = "Horizontalus Lygumas",
        ["Vertical Smoothing"] = "Vertikalus Lygumas",
        ["Dynamic Smoothing"] = "Dinaminis Lygumas",
        ["Aim Assist Checks"] = "Taikymo Pagalbos Patikrinimai",
        ["Hit Boxes"] = "Patikymo Dalis",
        ["Randomise Hitbox Position"] = "Atsitiktinis Patikymo Dalis Pos.",
        ["Hitscan Type"] = "Hit Skano Tipas",
        ["Wall Check Origin"] = "Sienu Patikrinimas",
        ["Readjustment"] = "Koregavimas",
        ["Deadzone"] = "Ne Taikymo Zona",
        ["Stutter"] = "Mikcioti",
        ["Humaniser"] = "Humanizatorius",
        ["Humaniser Scale"] = "Humanizatoriu Skale",

        ["Delay"] = "Sutrukdyti",
        ["Interval"] = "Intervalas",
        ["Trigger Bot Checks"] = "Saidymo Boto Patikrinimai",

        ["Cursor Offset"] = "Peles Poslinkis",


        ["Enemies"] = "Priesai",
        ["Friendlies"] = "Draugai",
        ["Local"] = "Vietinis",
        ["Colors"] = "Spalvos",
        ["Extra"] = "Papildomai",

        ["Name"] = "Vardas",
        ["Bounding Box"] = "Erdvine Dezute",
        ["Health Bar"] = "Sveikatos Dezute",
        ["Health Number"] = "Sveikatos Numeris",
        ["Offscreen Arrows"] = "Rodykles",
        ["Arrow Size"] = "Rodykles Dydis",
        ["Arrow Position"] = "Rodykles Posicija",
        ["Arrow Types"] = "Rodykliu Tipai",
        ["Arrow Distance"] = "Rodykliu Atstumas",
        ["Tool"] = "Irankis",
        ["Distance"] = "Atstumas",
        ["Flags"] = "Tipai",
        ["Flag Types"] = "Tipu Veliaveles",
        ["Chams"] = "Kuno Uzpildymas",
        ["Automatic Color"] = "Automatine Spalva",
        ["Max Distance"] = "Maksimalus Atstumas",

        ["Visualisation"] = "Vizualizacija",
        ["Visualise Server Position"] = "Vizualizuoti Serverio Posicija",
        ["Visualisation Material"] = "Vizualizacijos Medziaga",

        ["Highlight Friendlies"] = "Paryskinti Draugus",
        ["Highlight Priorities"] = "Paryskinti Prioritetus",
        ["Highlight Targets"] = "Paryskinti Tikslus",

        ["Use Display Name"] = "Naudoti Pavadinima",
        ["Name Length"] = "Vardo Ilgis",
        ["Text Surround"] = "Teksto Apsuptis",
        ["ESP Fade Out"] = "ESP Isnyks Laikas",
        ["Distance Measurement"] = "Atstumo Matavimas",


        ["Lighting"] = "Atmosfera",
        ["Camera"] = "Kamera",

        ["Ambient"] = "Atmosfera",
        ["Brightness"] = "Ryskuma",
        ["Clock Time"] = "Laikas",
        ["Color Shift"] = "Spalvu Poslinkis",
        ["Exposure"] = "Poveikis",
        ["Fog"] = "Rukas",
        ["Fog End"] = "Ruko Galas",
        ["Fog Start"] = "Ruko Pradis",
        
        ["Velocity Graph"] = "Greicio Grafikas",
        ["Third Person"] = "Kameros Atstumas",
        ["Freecam"] = "Pilna Kamera",
        ["Zoom"] = "Priartinimas",
        
        ["Field Of View "] = "Kameros Priartinimas",
        
        ["Aim Assist FOV Circle"] = "Taikymo Pagalbos Ratas",
        ["Deadzone FOV Circle"] = "Ne Taikymos Zonos Ratas",
        
        ["Cursor"] = "Pelite",
        ["Dot"] = "Taskas",
        ["Size"] = "Dydis",
        ["Dynamic Size"] = "Dynamiskas Dydzis",
        ["Gap"] = "Tarpas",
        ["Spinning"] = "Sukasi",
        ["Follow Mouse"] = "Sekti Pelite",
        ["Thickness"] = "Storis",
        ["Easing Style"] = "Svelninimo Stilius",


        ["Main"] = "Pagrindinis",
        ["Custom"] = "Pasirinktinis",
        ["Chat"] = "Pokalbiu",
        ["Movement"] = "Judejimas",

        ["Client Desync"] = "Desinchronizavimas",
        ["Speed"] = "Greitis",
        ["Position Method"] = "Posicijios Metodas",
        ["Turn Method"] = "Pasukimo Metodas",
        ["Turn Smoothing"] = "Pasukimo Lygimas",
        ["Easing Direction"] = "Svelninimo Kryptis",
        ["Velocity Method"] = "Velocijos Metodas",
        ["Velocity Multiplier"] = "Velocjos Daugiklis",

        ["Chat Spam"] = "Pokalbio Slamstas",
        ["Chat Spam Type"] = "Pokalbio Slamsto Tipas",
        ["Song Name"] = "Dainos Pavadinimas",
        ["Multiple"] = "Kelis",
        ["Emojis"] = "Jaustukai",
        ["Symbols"] = "Symbolai",

        ["Speed"] = "Greitis",
        ["Fly"] = "Skraidinimas",
        ["Bunnyhop"] = "Bhop",
        ["Bunnyhop Type"] = "Bhop Tipas",
        ["Bunnyhop Velocity"] = "Bhop Greitis",
        ["Bunnyhop Gains"] = "Bhop Prieaugis",
        ["Jumpbug"] = "Suolio Bug",
        ["Jumpbug Delay"] = "Suolio Bug Sutrukdinimas",
        ["Click Teleport"] = "Spausti Teleportas",
        ["Noclip"] = "Ne Susidurimo",
        ["Disable Networking"] = "Isjungti Tinkla",
        ["Fake Lag"] = "Netikras Atsilikimas",
        ["Fake Lag Ammount"] = "Atsilikimo Suma",
        ["Fake Lag Multiplier"] = "Atsilikimo Daugiklis",
        ["Return Desync"] = "Grazinti Desinchro..",
        ["Return Type"] = "Grazinimo Tipas",
        ["Lag Switch"] = "Strigimo Jungiklis",

    },
    ["Eng"] = {}
}, {
    Configs = {},
    Drawings = {},
    Locals = {
        SelectedPage = "Config",
        SelectedPlayersSection = "Enemies",
        LastTick = tick(),
        ShiftTick = tick(),
        LastStutter = tick(),
        TriggerTick = tick(),
        Shift = 0,
        CursorAngle = 0,
        CursorSize = 0,
        AimAssistFOV = 100,
        DeadzoneFOV = 90,
        Humaniser = {
            Tick = tick(),
            Sample = nil,
            Index = 1
        },
        Sample = Sample,
        SongQueue = 1,
        LastPreviewUpdate = tick(),
        BadWords = {"bitch", "fuck", "nigga", "nigger", "fucking", "retard", "dumbass", "stupid", "whore", "idiot", "weed", "crack", "faggot", "gay", "lean", "love", "kiss", "abuse", "clang", "shit", "high", "kill", "child", "hoe", " ho ", "perc", "pill"},
        Strings = {
            Atlanta = {"Atlanta", "Space", "OMG", "Lost 2 ATLANTA", "gamesneeze.cc", "omg so bad", "imagine dying to me", "WOW!", "WOWZIES", "OH MY DAYS", "atlanta'd", "1d luh bro", "WOW U SUCK", "sooooo bad", "couldnt be me", "just broke ur ankles", "UR ANKLES? GONE?", "destroyed", "LOL DESTROYED", "LOL"},
            Troll = {"Cheating? Whats that?", "My aim is so good", "Uhh guys..?", "How do I play the game?", "How do I shoot", "Whoops misclicked", "You mad bro?", "My dog is playing for me", "GET GUD", "How do i kill somebody", "Whoopsies didnt mean to shoot 🙊", "Sorry brah", "What the hell", "Guys who is that cheater", "Wow HACKER", "HACKER IN THE GAME GUYS"},
            Toxic = {"lol so bad", "Yall doo doo", "Cant hit me?", "Try harder", "omg you are terrible", "terrible", "DESTROYED", "POW", "oh my god", "you suck brah", "bruh..", "TROLL", "troll", "wth? ur bad?", "not cheating just good", "2 GOOD 4 U", "soooo good", "omg so easy", "SO EASY", "bro this is too easy LOL", "LOL", "wow you guys are really terrible", "about to fall asleep", "ASLEEP 🛏💤😪😴", "snoozing.. 💤💤", "bruh yall suck 🗣🗣", "so bad lol", "better than u", "OMG SO BAD WTH", "1 tapped", "1D LUH BRO", "IM NOT CHEATING"},
            Fulcrum = {"faded than a h__", "double penjamin city", "need i say more?", "tripple penjamin city", "dabingnton town", "dabington", "penjamin", "yodie gang", "yodie", "gang", "yuuuuuuuuuuuuuup", "come in", "theres 5 things i need to tell you", "boinkers city", "yodie town", "yodieville", "faded"},
            Custom = CustomChat,
            Song = {}
        },
        PartSizes = {
            ["Head"] = Vector3.new(2, 1, 1),
            ["Torso"] = Vector3.new(2, 2, 1),
            ["Left Arm"] = Vector3.new(1, 2, 1),
            ["Right Arm"] = Vector3.new(1, 2, 1),
            ["Left Leg"] = Vector3.new(1, 2, 1),
            ["Right Leg"] = Vector3.new(1, 2, 1)
        },
        Emojis = {"😀", "😁", "😂", "🤣", "😃", "😄", "😅", "😆", "😊", "😎", "🙂", "🤗", "🤩", "🤔", "🤨", "😐", "😑", "😶", "🙄", "😣", "😥", "😮", "🤐", "😯", "😪", "😫", "🥱", "😴", "😌", "😛", "😜", "😝", "😒", "🤤", "😓", "😔", "😕", "🙃", "🤑", "😲", "🙁", "😖", "😞", "😟", "😤", "😢", "😭", "😦", "😧", "😨", "😩", "🤯", "😬", "😰", "😱", "🥵", "🥶", "😳", "🤪", "😵", "🥴", "😠", "😡", "🤬", "😷", "🤒", "🤕", "🤢", "🤮", "🤧", "😇", "🥳", "🥺", "🤠", "🤡", "🤥", "🤫", "🤭", "🧐", "🤓", "😈", "👿", "👹", "👺", "💀", "☠", "👻", "👽", "👾", "🤖", "💩", "😺", "😸", "😹", "😼", "😽", "🙀", "😿", "😾", "🐱‍", "👤", "🐱‍", "🏍", "🐱‍💻", "🐱‍", "🐉", "🐱‍", "👓", "🐱‍🚀", "🙈", "🙉", "🙊", "🐵", "🐶", "🐺", "🐱", "🦁", "🐯", "🦒", "🦊", "🦝", "🐮", "🐷", "🐗", "🐭", "🐹", "🐰", "🐻", "🐲", "🐔", "🦄", "🐴", "🦓", "🐸", "🐼", "🐨", "🐽", "🐾", "🐒", "🦍", "🦧", "🦮", "🐕‍", "🦺", "🐩", "🦛", "🦏", "🦌", "🐎", "🐆", "🐅", "🐈", "🐕", "👀", "👁", "🧠", "🦾", "🦿", "👣", "🤺", "🕷", "🕸", "🎅", "👲", "👩‍🎓", "👨‍🎓", "🎆", "🎇", "🎨", "🎪", "🕶", "👓", "🥽", "🏀", "🥎", "🏐", "⚾", "⚽", "💎", "💍", "💄", "🏈", "🏉", "🎱", "🔊", "🔉", "🔈", "📢", "📣", "🎧", "🪕", "🎸", "🎺", "🎷", "🎻", "✂", "📐", "📏", "🗃", "🍕", "🍔", "🍟", "🌭", "🍿", "🧂", "🥓", "🌮", "🌯", "🍒"} ,
        Symbols = {"$", "!", "£", "%", "^", "&", "*", "(", ")", "_", "-", "+", "=", "[", "]", "{", "}", "@", ":", ";", "/", "?", "<", ">"}
    },
    Safe = true,
    Version = "Universal",
    Language = "Eng",
    Account = {
        Username = (lgVarsTbl and lgVarsTbl["DiscordUsername"] or "Matas"),
        UserID = 1
    }
}
-- // Variables
local ReplicatedStorage, UserInputService, TeleportService, HttpService, RunService, Workspace, Lighting, CoreGui, Players, Teams, Stats = game:GetService("ReplicatedStorage"), game:GetService("UserInputService"), game:GetService("TeleportService"), game:GetService("HttpService"), game:GetService("RunService"), game:GetService("Workspace"), game:GetService("Lighting"), game:GetService("CoreGui"), game:GetService("Players"), game:GetService("Teams"), game:GetService("Stats")
--
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local Network = settings():GetService("NetworkSettings")
--
local Client = Players.LocalPlayer
--
local ResetMemoryCategory, SetMemoryCategory, SetUpvalueName, SetMetatable, ProfileBegin, GetMetatable, GetConstants, GetRegistry, GetUpvalues, GetConstant, SetConstant, GetUpvalue, ValidLevel, LoadModule, SetUpvalue, ProfileEnd, GetProtos, GetLocals, Traceback, SetStack, GetLocal, DumpHeap, GetProto, SetLocal, GetStack, GetFenv, GetInfo, Info = debug.resetmemorycategory, debug.setmemorycategory, debug.setupvaluename, debug.setmetatable, debug.profilebegin, debug.getmetatable, debug.getconstants, debug.getregistry, debug.getupvalues, debug.getconstant, debug.setconstant, debug.getupvalue, debug.validlevel, debug.loadmodule, debug.setupvalue, debug.profileend, debug.getprotos, debug.getlocals, debug.traceback, debug.setstack, debug.getlocal, debug.dumpheap, debug.getproto, debug.setlocal, debug.getstack, debug.getfenv, debug.getinfo, debug.info
local RandomSeed, Random, Frexp, Floor, Atan2, Log10, Noise, Round, Ldexp, Clamp, Sinh, Sign, Asin, Acos, Fmod, Huge, Tanh, Sqrt, Atan, Modf, Ceil, Cosh, Deg, Min, Log, Cos, Exp, Max, Rad, Abs, Pow, Sin, Tan, Pi = math.randomseed, math.random, math.frexp, math.floor, math.atan2, math.log10, math.noise, math.round, math.ldexp, math.clamp, math.sinh, math.sign, math.asin, math.acos, math.fmod, math.huge, math.tanh, math.sqrt, math.atan, math.modf, math.ceil, math.cosh, math.deg, math.min, math.log, math.cos, math.exp, math.max, math.rad, math.abs, math.pow, math.sin, math.tan, math.pi
local Foreachi, Isfrozen, Foreach, Insert, Remove, Concat, Freeze, Create, Unpack, Clear, Clone, Maxn, Move, Pack, Find, Sort, Getn = table.foreachi, table.isfrozen, table.foreach, table.insert, table.remove, table.concat, table.freeze, table.create, table.unpack, table.clear, table.clone, table.maxn, table.move, table.pack, table.find, table.sort, table.getn
local PackSize, Reverse, SUnpack, Gmatch, Format, Lower, Split, Match, Upper, Byte, Char, Pack, Gsub, SFind, Rep, Sub, Len = string.packsize, string.reverse, string.unpack, string.gmatch, string.format, string.lower, string.split, string.match, string.upper, string.byte, string.char, string.pack, string.gsub, string.find, string.rep, string.sub, string.len
local Countlz, Rrotate, Replace, Lrotate, Countrz, Arshift, Extract, Lshift, Rshift, Btest, Band, Bnot, Bxor, Bor = bit32.countlz, bit32.rrotate, bit32.replace, bit32.lrotate, bit32.countrz, bit32.arshift, bit32.extract, bit32.lshift, bit32.rshift, bit32.btest, bit32.band, bit32.bnot, bit32.bxor, bit32.bor
local NfcNormalize, NfdNormalize, CharPattern, CodePoint, Graphemes, Offset, Codes, Char, Len = utf8.nfcnormalize, utf8.nfdnormalize, utf8.charpattern, utf8.codepoint, utf8.graphemes, utf8.offset, utf8.codes, utf8.char, utf8.len
local Isyieldable, Running, Status, Create, Resume, Close, Yield, Wrap = coroutine.isyieldable, coroutine.running, coroutine.status, coroutine.create, coroutine.resume, coroutine.close, coroutine.yield, coroutine.wrap
local Desynchronize, Synchronize, Cancel, Delay, Defer, Spawn, Wait = task.desynchronize, task.synchronize, task.cancel, task.delay, task.defer, task.spawn, task.wait
--
local DefaultChatSystemChatEvents = ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
local SayMessage = DefaultChatSystemChatEvents and DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest")
--
local Storage = Instance.new("Folder");Storage.Parent = CoreGui
local Mouse = Client:GetMouse()
local Ping = Stats.PerformanceStats.Ping
local Dot = Vector3.new().Dot
-- // Preload
do -- Preload
    for Index, Value in pairs(listfiles("Atlanta/Configs/" .. Atlanta.Version)) do
        local Split = Split(Value, "\\")
        --
        if Split[2] and Sub(Split[2], -7) == "Atlanta" then
            local Name = Sub(Split[2], 0, #Split[2] - 8)
            --
            Atlanta.Configs[#Atlanta.Configs + 1] = Name
        end
    end
    --
    do -- Saving
        Atlanta.Locals.FieldOfView = Workspace.CurrentCamera.FieldOfView
        Atlanta.Locals.Lighting = {}
        --
        for Index, Value in pairs({"Ambient", "OutdoorAmbient", "Brightness", "ClockTime", "ColorShift_Bottom", "ColorShift_Top", "ExposureCompensation", "FogColor", "FogEnd", "FogStart"}) do
            Atlanta.Locals.Lighting[Value] = Lighting[Value]
        end
        --
        Atlanta.Locals.FieldOfView = Workspace.CurrentCamera.FieldOfView
    end
    --
    do -- Humaniser
        if Atlanta.Locals.Sample then
            local Passed, Statement = pcall(function()
                return HttpService:JSONDecode(Atlanta.Locals.Sample)
            end)
            --
            if Passed then
                Atlanta.Locals.Humaniser.Sample = Statement
            else
                Atlanta.Locals.Sample = nil
            end
        end
    end
    --
    do -- Random Language
        Languages["Rnd"] = {}
        Languages["Mrs"] = {}
        Languages["Rev"] = {}
        --
        for Index, Value in pairs(Languages["Lt"]) do
            Languages["Rnd"][Index] = Char(math.random(100, 160))..Char(math.random(100, 160))..Char(math.random(100, 160))..Char(math.random(100, 160))..Char(math.random(100, 160))..Char(math.random(100, 160))
        end
        --
        for Index, Value in pairs(Languages["Lt"]) do
            local Str = "."
            Languages["Mrs"][Index] = Rep(Str, math.random(1, 5)) .. " " .. Rep(Str, math.random(1, 8)) .. " " .. Rep(Str, math.random(1, 5)) .. " " .. Rep(Str, math.random(1, 12))
        end
        --
        for Index, Value in pairs(Languages["Lt"]) do
            if Index ~= "[%s]  -  [Account = $ACC [$UID],  Build = $BUILD,  Ping = $PING,  FPS = $FPS]" then
                Languages["Rev"][Index] = Reverse(Index)
            end
        end
        --
        Languages["Rev"]["[%s]  -  [Account = $ACC [$UID],  Build = $BUILD,  Ping = $PING,  FPS = $FPS]"] = "[$FPS = SPF,  $PING = gniP,  $BUILD = dliuB, [$UID] $ACC = tnuoccA] = [%s]"
    end
end
-- // Functions
do -- Utility
    function Utility:GetTableIndexes(Table, Custom)
        local Table2 = {}
        --
        for Index, Value in pairs(Table) do
            Table2[Custom and Value[1] or #Table2 + 1] = Index 
        end
        --
        return Table2
    end
    --
    function Utility:ConvertTable(Table1)
        local Table2 = {}
        --
        for Index, Value in pairs(Table1) do
            Table2[typeof(Index) ~= "number" and Index or (#Table2 + 1)] = tostring(Value)
        end
        --
        return Table2
    end
    --
    function Utility:ConvertString(Value)
        if typeof(Value) == "Color3" then
            Value = Value:ToHex()
        end
        --
        return Value
    end
    --
    function Utility:Encode(Table)
        local Table2 = {}
        --
        for Index, Value in pairs(Table) do
            Table2[Index] = Utility:ConvertString(Value)
        end
        --
        return HttpService:JSONEncode(Table2)
    end
    --
    function Utility:Decode(Table)
        return HttpService:JSONDecode(Table)
    end
    --
    function Library:UpdateColor(ColorType, ColorValue)
        local ColorType = ColorType:lower()
        --
        Theme[ColorType] = ColorValue
        --
        for Index, Value in pairs(Library.colors) do
            for Index2, Value2 in pairs(Value) do
                if Value2 == ColorType then
                    Index[Index2] = Theme[Value2]
                end
            end
        end
    end
    --
    function Library:UpdateTheme(ThemeType, ThemeValue)
        if Flags["ConfigTheme_" .. ThemeType] then
            Flags["ConfigTheme_" .. ThemeType]:Set(ThemeValue)
        end
    end
    --
    function Library:LoadTheme(ThemeType)
        if Themes[ThemeType] then
            local ThemeValue = Utility:Decode(Themes[ThemeType][2])
            --
            for Index, Value in pairs(ThemeValue) do
                Library:UpdateTheme(Index, Color3.fromHex(Value)) 
            end
        end
    end
    --
    function Library:RefreshConfigList()
        Flags["ConfigConfiguration_Box"].options = Atlanta.Configs
        Flags["ConfigConfiguration_Box"].current = Clamp(Flags["ConfigConfiguration_Box"].current, 0, #Atlanta.Configs)
        Flags["ConfigConfiguration_Box"]:UpdateScroll()
    end
    --
    function Library:GetConfig()
        local Config = ""
        --
        for Index, Value in pairs(Flags) do
            if Index ~= "ConfigConfiguration_Box" and Index ~= "ConfigConfiguration_Name" then
                local Value2 = Value:Get()
                local Final = ""
                --
                if typeof(Value2) == "Color3" then
                    local Values = Value.current
                    --
                    Final = ("rgb(%s,%s,%s,%s)"):format(Values[1], Values[2], Values[3], Values[4])
                elseif typeof(Value2) == "table" and Value2.Color and Value2.Transparency then
                    local Values = Value.current
                    --
                    Final = ("rgb(%s,%s,%s,%s)"):format(Values[1], Values[2], Values[3], Values[4])
                elseif Value.mode then
                    local Values = Value.current
                    --
                    Final = ("key(%s,%s,%s)"):format(Values[1] or "nil", Values[2] or "nil", Value.mode)
                elseif (Value2 ~= nil) then
                    if typeof(Value2) == "boolean" then
                        Value2 = ("bool(%s)"):format(tostring(Value2))
                    elseif typeof(Value2) == "table" then
                        local New = "table("
                        --
                        for Index2, Value3 in pairs(Value2) do
                            New = New .. Value3 .. ","
                        end
                        --
                        if New:sub(#New) == "," then
                            New = New:sub(0, #New - 1)
                        end
                        --
                        Value2 = New .. ")"
                    elseif typeof(Value2) == "string" then
                        Value2 = ("string(%s)"):format(Value2)
                    elseif typeof(Value2) == "number" then
                        Value2 = ("number(%s)"):format(Value2)
                    end
                    --
                    Final = Value2
                end
                --
                Config = Config .. Index .. ": " .. Final .. "\n"
            end
        end
        --
        return Config .. "[ gamesneeze.cc ]"
    end
    --
    function Library:LoadConfig(Config)
        if typeof(Config) == "table" then
            for Index, Value in pairs(Config) do
                if typeof(Flags[Index]) ~= "nil" then
                    Flags[Index]:Set(Value)
                end
            end
        end
    end
    --
    function Library:PerformConfigAction(ConfigName, Action)
        if ConfigName then
            if Action == "Delete" then
                local Found = Find(Atlanta.Configs, ConfigName)
                --
                if Found then
                    Remove(Atlanta.Configs, Found) 
                    Library:RefreshConfigList()
                end
                --
                delfile(("Atlanta/Configs/%s/%s"):format(Atlanta.Version, ConfigName .. ".Atlanta"), Config)
            elseif Action == "Save" then
                local Config = Library:GetConfig()
                --
                if Config then
                    if not Find(Atlanta.Configs, ConfigName) then
                        Atlanta.Configs[#Atlanta.Configs + 1] = ConfigName
                        Library:RefreshConfigList()
                    end
                    --
                    writefile(("Atlanta/Configs/%s/%s"):format(Atlanta.Version, ConfigName .. ".Atlanta"), Config)
                end
            elseif Action == "Load" then
                local Config = readfile(("Atlanta/Configs/%s/%s"):format(Atlanta.Version, ConfigName .. ".Atlanta"))
                local Table = Split(Config, "\n")
                local Table2 = {}
                --
                if Table[#Table] == "[ gamesneeze.cc ]" then
                    Remove(Table, #Table)
                end
                --
                for Index, Value in pairs(Table) do
                    local Table3 = Split(Value, ":")
                    --
                    if Table3[1] ~= "ConfigConfiguration_Name" and #Table3 >= 2 then
                        local Value = Table3[2]:sub(2, #Table3[2])
                        --
                        if Value:sub(1, 3) == "rgb" then
                            local Table4 = Split(Value:sub(5, #Value - 1), ",")
                            --
                            Value = Table4
                        elseif Value:sub(1, 3) == "key" then
                            local Table4 = Split(Value:sub(5, #Value - 1), ",")
                            --
                            if Table4[1] == "nil" and Table4[2] == "nil" then
                                Table4[1] = nil
                                Table4[2] = nil
                            end
                            --
                            Value = Table4
                        elseif Value:sub(1, 4) == "bool" then
                            local Bool = Value:sub(6, #Value - 1)
                            --
                            Value = Bool == "true"
                        elseif Value:sub(1, 5) == "table" then
                            local Table4 = Split(Value:sub(7, #Value - 1), ",")
                            --
                            Value = Table4
                        elseif Value:sub(1, 6) == "string" then
                            local String = Value:sub(8, #Value - 1)
                            --
                            Value = String
                        elseif Value:sub(1, 6) == "number" then
                            local Number = tonumber(Value:sub(8, #Value - 1))
                            --
                            Value = Number
                        end
                        --
                        Table2[Table3[1]] = Value
                    end
                end
                -- 
                Library:LoadConfig(Table2)
            end
        end
    end
    --
    function Library:UpdateHue()
        if (tick() - Atlanta.Locals.ShiftTick) >= (1 / 60) then
            Atlanta.Locals.Shift = Atlanta.Locals.Shift + 0.01
            --
            if Flags["ConfigTheme_AccentEffect"]:Get() == "Rainbow" then
                Library:UpdateColor("Accent", Color3.fromHSV(Math:Shift(Atlanta.Locals.Shift), 0.55, 1))
            elseif Flags["ConfigTheme_AccentEffect"]:Get() == "Shift" then
                local Hue, Saturation, Value = Flags["ConfigTheme_Accent"]:Get():ToHSV()
                --
                Library:UpdateColor("Accent", Color3.fromHSV(Math:Shift(Hue + (Math:Shift(Atlanta.Locals.Shift) * (Flags["ConfigTheme_EffectLength"]:Get() / 360))), Saturation, Value))
            elseif Flags["ConfigTheme_AccentEffect"]:Get() == "Reverse Shift" then
                local Hue, Saturation, Value = Flags["ConfigTheme_Accent"]:Get():ToHSV()
                --
                Library:UpdateColor("Accent", Color3.fromHSV(Math:Shift(Clamp(Hue - (Math:Shift(Atlanta.Locals.Shift) * (Flags["ConfigTheme_EffectLength"]:Get() / 360)), 0, 9999)), Saturation, Value))
            end
            --
            Atlanta.Locals.ShiftTick = tick()
        end
    end
    --
    function Utility:ClampString(String, Length, Font)
        local Font = (Font or 2)
        local Split = String:split("\n")
        --
        local Clamped = ""
        --
        for Index, Value2 in pairs(Split) do
            if (Index * 13) <= Length then
                Clamped = Clamped .. Value2 .. (Index == #Split and "" or "\n")
            end
        end
        --
        return (Clamped ~= String and (Clamped == "" and "" or Clamped:sub(0, #Clamped - 1) .. " ...") or Clamped)
    end
    --
    function Utility:UpdatePreview(Pass)
        if (Atlanta.Locals.Window.isVisible and Atlanta.Locals.SelectedPage == "Players") or Pass then
            local Size = {0, 0}
            local Selection = ("Players" .. Atlanta.Locals.SelectedPlayersSection .. "_")
            --
            if Flags[Selection .. "Chams"]:Get() then
                local ChamsFill, ChamsFillTransparency = Flags[Selection .. "ChamsFill"]:Get().Color, Flags[Selection .. "ChamsFill"]:Get().Transparency
                local ChamsOutline, ChamsOutlineTransparency = Flags[Selection .. "ChamsOutline"]:Get().Color, Flags[Selection .. "ChamsOutline"]:Get().Transparency
                --
                local ChamsAuto = Atlanta.Locals.SelectedPlayersSection ~= "Local" and Flags[Selection .. "ChamsAuto"]:Get()
                local ChamsVisible, ChamsVisibleTransparency = ChamsAuto and Flags[Selection .. "ChamsVisible"]:Get().Color, ChamsAuto and Flags[Selection .. "ChamsVisible"]:Get().Transparency
                local ChamsHidden, ChamsHiddenTransparency = ChamsAuto and Flags[Selection .. "ChamsHidden"]:Get().Color, ChamsAuto and Flags[Selection .. "ChamsHidden"]:Get().Transparency
                --
                Atlanta.Locals.Window.VisualPreview:SetComponentProperty("Chams", "Color", ChamsOutline, 1)
                Atlanta.Locals.Window.VisualPreview:SetComponentProperty("Chams", "Transparency", 1 - ChamsOutlineTransparency, 1)
                Atlanta.Locals.Window.VisualPreview:SetComponentProperty("Chams", "Color", ChamsAuto and ((Atlanta.Locals.Window.VisualPreview.Visible) and ChamsVisible or ChamsHidden) or ChamsFill, 2)
                Atlanta.Locals.Window.VisualPreview:SetComponentProperty("Chams", "Transparency", 1 - (ChamsAuto and ((Atlanta.Locals.Window.VisualPreview.Visible) and ChamsVisibleTransparency or ChamsHiddenTransparency) or ChamsFillTransparency), 2)
            else
                Atlanta.Locals.Window.VisualPreview:SetComponentProperty("Chams", "Transparency", 0, 1)
                Atlanta.Locals.Window.VisualPreview:SetComponentProperty("Chams", "Transparency", 0, 2)
            end
            --
            if Flags[Selection .. "Box"]:Get() then
                local BoxColor, BoxTransparency = Flags[Selection .. "BoxColor"]:Get().Color, Flags[Selection .. "BoxColor"]:Get().Transparency
                local BoxFillColor, BoxFillTransparency = Flags[Selection .. "BoxFill"]:Get().Color, Flags[Selection .. "BoxFill"]:Get().Transparency
                --
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Box", "Box", "Color", BoxColor)
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Box", "Box", "Transparency", 1 - BoxTransparency)
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Box", "Outline", "Transparency", 1 - BoxTransparency)
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Box", "Fill", "Color", BoxFillColor)
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Box", "Fill", "Transparency", 1 - BoxFillTransparency)
            else
                Atlanta.Locals.Window.VisualPreview:SetComponentProperty("Box", "Transparency", 0)
            end
            --
            local HealthBarColor, HealthBarColor2, HealthBarTransparency = Flags[Selection .. "HealthBarColor1"]:Get().Color, Flags[Selection .. "HealthBarColor2"]:Get().Color, Flags[Selection .. "HealthBarColor1"]:Get().Transparency
            --
            if Flags[Selection .. "HealthBar"]:Get() then
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("HealthBar", "Box", "Transparency", 1 - HealthBarTransparency)
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("HealthBar", "Outline", "Transparency", 1 - HealthBarTransparency)
                --
                Size[1] = 5
            else
                Atlanta.Locals.Window.VisualPreview:SetComponentProperty("HealthBar", "Transparency", 0)
            end
            --
            if Flags[Selection .. "HealthNum"]:Get() or Flags[Selection .. "HealthBar"]:Get() then
                Atlanta.Locals.Window.VisualPreview.Color1 = HealthBarColor
                Atlanta.Locals.Window.VisualPreview.Color2 = HealthBarColor2
                --
                Atlanta.Locals.Window.VisualPreview:UpdateHealthBar()
            end
            --
            if Flags[Selection .. "HealthNum"]:Get() then
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("HealthBar", "Value", "Transparency", 1 - HealthBarTransparency or 0)
                --
                Atlanta.Locals.Window.VisualPreview:UpdateHealthValue(Size[1])
            else
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("HealthBar", "Value", "Transparency", 0)
            end
            --
            if Flags[Selection .. "Name"]:Get() then
                local NameColor, NameTransparency = Flags[Selection .. "NameColor"]:Get().Color, Flags[Selection .. "NameColor"]:Get().Transparency
                --
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Title", "Text", "Color", NameColor)
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Title", "Text", "Transparency", 1 - NameTransparency)
            else
                Atlanta.Locals.Window.VisualPreview:SetComponentProperty("Title", "Transparency", 0)
            end
            --
            if Flags[Selection .. "Distance"]:Get() then
                local DistanceColor, DistanceTransparency = Flags[Selection .. "DistanceColor"]:Get().Color, Flags[Selection .. "DistanceColor"]:Get().Transparency
                --
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Distance", "Text", "Color", DistanceColor)
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Distance", "Text", "Transparency", 1 - DistanceTransparency)
            else
                Atlanta.Locals.Window.VisualPreview:SetComponentProperty("Distance", "Transparency", 0)
            end
            --
            if Flags[Selection .. "Tool"]:Get() then
                local ToolColor, ToolTransparency = Flags[Selection .. "ToolColor"]:Get().Color, Flags[Selection .. "ToolColor"]:Get().Transparency
                --
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Tool", "Text", "Color", ToolColor)
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Tool", "Text", "Transparency", 1 - ToolTransparency)
            else
                Atlanta.Locals.Window.VisualPreview:SetComponentProperty("Tool", "Transparency", 0)
            end
            --
            if Flags[Selection .. "Flags"]:Get() then
                local FlagsColor, FlagsTransparency = Flags[Selection .. "FlagsColor"]:Get().Color, Flags[Selection .. "FlagsColor"]:Get().Transparency
                --
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Flags", "Text", "Color", FlagsColor)
                Atlanta.Locals.Window.VisualPreview:SetComponentSelfProperty("Flags", "Text", "Transparency", 1 - FlagsTransparency)
            else
                Atlanta.Locals.Window.VisualPreview:SetComponentProperty("Flags", "Transparency", 0)
            end
            --
            Atlanta.Locals.Window.VisualPreview:ValidateSize("X", Size[1])
        end
    end
    --
    function Utility:ThreadFunction(Func, Name, ...)
        local Func = Name and function()
            local Passed, Statement = pcall(Func)
            --
            if not Passed and not Atlanta.Safe then
                warn("Atlanta:\n", "              " .. Name .. ":", Statement)
            end
        end or Func
        local Thread = Create(Func)
        --
        Resume(Thread, ...)
        return Thread
    end
    --
    function Utility:SafeCheck(Text)
        local Safe = Text:lower()
        --
        for Index, Value in pairs(Atlanta.Locals.BadWords) do Safe = Safe:gsub(Value, "_") end
        --
        return Safe
    end
    --
    function Utility:TableToString(Table)
        if #Table > 1 then
            local Text = ""
            --
            for Index, Value in pairs(Table) do
                Text = Text .. Value .. "\n"
            end
            --
            return Text:sub(0, #Text - 1)
        else
            return Table[1]
        end
    end
    --
    function Utility:MousePosition(Offset)
        if Offset then
            return UserInputService:GetMouseLocation() + Atlanta:CursorOffset()
        else
            return UserInputService:GetMouseLocation()
        end
    end
    --
    function Utility:Console(Action, ...)
        if not Atlanta.Safe then
            Action(...)
        end
    end
end
--
do -- Visualisation
    function Visualisation:CreateClone(Character)
        local Clone = Utility:Instance("Model", {
            Name = "Visualisation",
            Parent = Workspace
        })
        --
        local Head = Character:FindFirstChild("Head")
        --
        local PartsTable = {}
        --
        for Index, Value in pairs(Character:GetChildren()) do
            if Value:IsA("BasePart") and (Value.Name == "Head" or Value.Name:find("Arm") or Value.Name:find("Torso") or Value.Name:find("Leg") or Value.Name:find("Hand") or Value.Name:find("Foot")) then
                local Part = Utility:Instance("Part", {
                    Name = Value.Name,
                    Color = Color3.fromRGB(93, 62, 152),
                    Size = Value.Size * 1.025,
                    CFrame = Value.CFrame,
                    CanCollide = false,
                    Transparency = 0,
                    Anchored = true,
                    Material = "SmoothPlastic",
                    BackSurface = "Smooth",
                    BottomSurface = "Smooth",
                    FrontSurface = "Smooth",
                    LeftSurface = "Smooth",
                    RightSurface = "Smooth",
                    TopSurface = "Smooth",
                    Shape = (Value.Name == "Head" and "Cylinder" or "Block"),
                    Parent = Clone
                })
                --
                for Index, Value in pairs({"Back", "Bottom", "Front", "Left", "Right", "Top"}) do
                    local Texture = Utility:Instance("Texture", {
                        Color3 = Color3.fromRGB(93, 62, 152),
                        OffsetStudsU = 0,
                        OffsetStudsV = 0,
                        StudsPerTileU = 12.5,
                        StudsPerTileV = 12.5,
                        Transparency = 0.5,
                        Face = Value,
                        Parent = Part
                    })
                end
                --
                PartsTable[Value] = Part
            end
        end
        --
        Visualisation.Character = PartsTable
    end
    --
    function Visualisation:Update(FakeLagging)
        local Object, Humanoid, RootPart = Atlanta:ValidateClient(Client)
        --
        if RootPart then
            if Visualisation.Character then
                local VisualisationColor, VisualisationTransparency = Flags["PlayersLocal_VisualisationColor"]:Get().Color, Flags["PlayersLocal_VisualisationColor"]:Get().Transparency
                local VisualisationTransparency2 = Clamp(VisualisationTransparency + 0.25, 0, 1)
                local ServerPosition = Flags["PlayersLocal_ServerPosition"]:Get()
                local VisualisationMaterial = Flags["PlayersLocal_VisualisationMaterial"]:Get()
                --
                if FakeLagging then
                    for Index, Perform in pairs(Visualisation.LastUpdate) do
                        if ServerPosition then Delay(Atlanta:GetLatency() * 1.75, Perform) else Perform() end
                    end
                else
                    Visualisation.LastUpdate = {}
                    --
                    for Index, Value in pairs(Visualisation.Character) do
                        if Index then
                            local OldCFrame = Index.CFrame
                            --
                            Value.Material = (VisualisationMaterial == "Ghost" and "ForceField" or VisualisationMaterial == "Smooth Plastic" and "SmoothPlastic" or VisualisationMaterial == "Animated" and "Neon" or VisualisationMaterial)
                            Value.Color = VisualisationColor
                            Value.Transparency = VisualisationTransparency
                            --
                            for Index2, Value2 in pairs(Value:GetChildren()) do
                                if Value2:IsA("Texture") then
                                    if VisualisationMaterial == "Animated" then
                                        Value2.Color3 = VisualisationColor
                                        Value2.Transparency = VisualisationTransparency2
                                        Value2.Texture = Format("rbxasset://textures/water/normal_%02d.dds", Visualisation.Texture)
                                    else
                                        Value2.Transparency = 1
                                    end
                                end
                            end
                            --
                            local Perform = function()
                                local Radius = (Index.Name == "Head" and ((Index.Size.X * (Value:FindFirstChildOfClass("WrapTarget") and 0.45 or 0.275)) + 0.1))
                                --
                                Value.Size = Index.Name == "Head" and Vector3.new(Index.Size.Y, Radius * 2, Radius * 2) or (Index.Size * 0.99)
                                Value.CFrame = OldCFrame * CFrame.Angles(0, 0, Index.Name == "Head" and Rad(90) or 0)
                            end
                            --
                            Visualisation.LastUpdate[Value] = Perform
                            --
                            if ServerPosition then Delay(Atlanta:GetLatency() * 1.75, Perform) else Perform() end
                        else
                            Value:Remove()
                        end
                    end
                end
                --
                Visualisation.Texture = Visualisation.Texture + 1
                --
                if Visualisation.Texture > 25 then
                    Visualisation.Texture = 1
                end
            end
        end
    end
end
--
do -- Movement
    function Movement:HandleHumanoid(Humanoid)
        Humanoid.StateChanged:Connect(function(Old, New)
            if New == Enum.HumanoidStateType.Landed then
                if Flags["MiscMovement_Bunnyhop"]:Get() then
                    Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
                end
            end
        end)
    end
    --
    function Movement:Update()
        local Object, Humanoid, RootPart = Atlanta:ValidateClient(Client)
        --
        if RootPart then
            local Camera = Workspace.CurrentCamera
            --
            if Flags["MiscMovement_SpeedKey"]:Active() then
                local SpeedNum = Flags["MiscMovement_SpeedNum"]:Get()
                --
                local Travel = Vector3.new(0, 0, 0)
                local LookVector = Camera.CFrame.LookVector
                local RightVector = Camera.CFrame.RightVector
                --
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    Travel += LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    Travel -= LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    Travel += RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    Travel -= RightVector
                end
                --
                --RootPart.CFrame = RootPart.CFrame + (RootPart.CFrame.LookVector * 0.25)
                RootPart.Velocity = Vector3.new(Travel.X * SpeedNum, RootPart.Velocity.Y, Travel.Z * SpeedNum)
            end
            --
            if Flags["MiscMovement_FlyKey"]:Active() then
                local FlyNum = Flags["MiscMovement_FlyNum"]:Get()
                --
                local Travel = Vector3.new(0, 0, 0)
                local LookVector = Camera.CFrame.LookVector
                --
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    Travel += LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    Travel -= LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    Travel += Vector3.new(-LookVector.Z, 0, LookVector.X)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    Travel += Vector3.new(LookVector.Z, 0, -LookVector.X)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    Travel += Vector3.new(0, 1, 0)
                end
                --
                if Travel.Unit.X == Travel.Unit.X then
                    RootPart.Anchored = false
                    RootPart.Velocity = Travel.Unit * FlyNum
                else
                    RootPart.Velocity = Vector3.new(0, 0, 0)
                    RootPart.Anchored = true
                end
            else
                if RootPart.Anchored then
                    RootPart.Anchored = false
                end
            end
            --
            if Flags["MiscMovement_BunnyhopKey"]:Active() then
                local BunnyhopVelocity = Flags["MiscMovement_BunnyhopVelocity"]:Get()
                local BunnyhopType = Flags["MiscMovement_BunnyhopType"]:Get()
                --
                if not Atlanta:OnGround(Object, RootPart) and Movement.Velocity ~= 0 then
                    Movement.Velocity = Clamp(Movement.Velocity, 0, BunnyhopVelocity)
                    --
                    RootPart.CFrame = RootPart.CFrame + (RootPart.CFrame.LookVector * ((BunnyhopType == "Gradual" and Movement.Velocity or BunnyhopVelocity) / 5) / 6)
                end
                --
                if not UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    Movement.Velocity = 0
                elseif UserInputService:IsKeyDown(Enum.KeyCode.Space) and UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    Movement.Velocity = Clamp(Movement.Velocity - 0.01, 0, BunnyhopVelocity)
                end
            end
            --
            if Flags["MiscMovement_JumpbugKey"]:Active() then
                local Delay = Flags["MiscMovement_JumpbugDelay"]:Get()
                --
                Movement.State = {Humanoid:GetState(), Movement.State[1]}
                --
                if Movement.State[2] ~= Movement.State[1] and Movement.State[1] == Enum.HumanoidStateType.Freefall and Movement.State[2] ~= Enum.HumanoidStateType.Jumping then
                    RootPart.CFrame = Movement.LastPosition
                    RootPart.Velocity = Vector3.new(RootPart.Velocity.X, Atlanta:GetJumpPower(), RootPart.Velocity.Z)
                end
                --
                Movement.LastPosition = RootPart.CFrame
            end
        end
    end
end
--
do -- Camera
    function Camera:AngleEdge(Angle, Inset)
        local ScreenSize = Workspace.CurrentCamera.ViewportSize
        local Sine = Sin(Angle)
        local Cosine = Cos(Angle)
        local Slope = (Sine / Cosine)
        local EdgeX = ScreenSize.X - Inset
        local EdgeY = ScreenSize.Y - Inset
        --
        if Sine < 0 then EdgeY = Inset end
        if Cosine < 0 then EdgeX = Inset end
        --
        local Height = (Slope * EdgeX) + (ScreenSize.y / 2) - Slope * (ScreenSize.x / 2)
        --
        return (Height > 0 and Height < ScreenSize.Y - Inset) and Vector2.new(EdgeX, Height) or Vector2.new((EdgeY - ScreenSize.Y / 2 + Slope * (ScreenSize.X / 2)) / Slope, EdgeY)
    end
end
--
do -- Color
	function Color:Multiply(Color, Multiplier)
		return Color3.new(Color.R * Multiplier, Color.G * Multiplier, Color.B * Multiplier)
	end
    --
	function Color:Add(Color, Addition)
		return Color3.new(Color.R + Addition, Color.G + Addition, Color.B + Addition)
	end
    --
    function Color:Lerp(Value, MinColor, MaxColor)
        if Value <= 0 then return MaxColor end
        if Value >= 100 then return MinColor end
        --
        return Color3.new(
            MaxColor.R + (MinColor.R - MaxColor.R) * Value,
            MaxColor.G + (MinColor.G - MaxColor.G) * Value,
            MaxColor.B + (MinColor.B - MaxColor.B) * Value
        )
    end
end
--
do -- Math
    do -- Conversions
        Math.Conversions["Studs"] = {
            Conversion = function(Studs)
                return Studs
            end,
            Measurement = "st",
            Round = function(Number)
                return Round(Number)
            end
        }
        --
        Math.Conversions["Meters"] = {
            Conversion = function(Studs)
                return Studs * 0.28
            end,
            Measurement = "m",
            Round = function(Number)
                return Round(Number * 10) / 10
            end
        }
        --
        Math.Conversions["Centimeters"] = {
            Conversion = function(Studs)
                return Studs * 28
            end,
            Measurement = "cm",
            Round = function(Number)
                return Round(Number)
            end
        }
        --
        Math.Conversions["Kilometers"] = {
            Conversion = function(Studs)
                return Studs * 0.00028
            end,
            Measurement = "km",
            Round = function(Number)
                return Round(Number * 1000) / 1000
            end
        }
        --
        Math.Conversions["Millimeters"] = {
            Conversion = function(Studs)
                return Studs * 280
            end,
            Measurement = "mm",
            Round = function(Number)
                return Round(Number)
            end
        }
        --
        Math.Conversions["Micrometers"] = {
            Conversion = function(Studs)
                return Studs * 280000
            end,
            Measurement = "μm",
            Round = function(Number)
                return Round(Number)
            end
        }
        --
        Math.Conversions["Inches"] = {
            Conversion = function(Studs)
                return Studs * 11.0236224
            end,
            Measurement = [['']],
            Round = function(Number)
                return Round(Number)
            end
        }
        --
        Math.Conversions["Miles"] = {
            Conversion = function(Studs)
                return Studs * 0.000173983936
            end,
            Measurement = "mi",
            Round = function(Number)
                return Round(Number * 10000) / 10000
            end
        }
        --
        Math.Conversions["Nautical Miles"] = {
            Conversion = function(Studs)
                return Studs * 0.0005399568
            end,
            Measurement = "nmi",
            Round = function(Number)
                return Round(Number * 10000) / 10000
            end
        }
        --
        Math.Conversions["Yards"] = {
            Conversion = function(Studs)
                return Studs * 0.30621164
            end,
            Measurement = "yd",
            Round = function(Number)
                return Round(Number * 10) / 10
            end
        }
        --
        Math.Conversions["Feet"] = {
            Conversion = function(Studs)
                return Studs * 0.9186352
            end,
            Measurement = "ft",
            Round = function(Number)
                return Round(Number)
            end
        }
    end
    --
    function Math:RotatePoint(Point, Radians)
        local Unit = Point.Unit
        --
        local Sine = Sin(Radians)
        local Cosine = Cos(Radians)
        --
        return Vector2.new((Cosine * Unit.X) - (Sine * Unit.Y), (Sine * Unit.X) + (Cosine * Unit.Y)).Unit * Point.Magnitude
    end
    --
    function Math:RoundVector(Vector)
        return Vector2.new(Round(Vector.X), Round(Vector.Y))
    end
    --
    function Math:Shift(Number)
        return Acos(Cos(Number * Pi)) / Pi
    end
    --
    function Math:Conversion(Studs, Conversion)
        local Conversion = Math.Conversions[Conversion]
        --
        local Converted = Conversion.Conversion(Studs)
        local Measurement = Conversion.Measurement
        local Rounded = Conversion.Round(Converted)
        --
        return Converted, Measurement, Rounded
    end
    --
    function Math:Random(Number)
        return Random(-Number, Number)
    end
    --
    function Math:RandomVec3(X, Y, Z)
        return Vector3.new(Math:Random(X), Math:Random(Y), Math:Random(Z))
    end
end
--
do -- Tween
    Tween.EasingStyles = {
        [Enum.EasingStyle.Linear] = {
            [Enum.EasingDirection.In] = function(Delta)
                return Delta
            end,
            [Enum.EasingDirection.Out] = function(Delta)
                return Delta
            end,
            [Enum.EasingDirection.InOut] = function(Delta)
                return Delta
            end
        },
        [Enum.EasingStyle.Cubic] = {
            [Enum.EasingDirection.In] = function(Delta)
                return Delta ^ 3
            end,
            [Enum.EasingDirection.Out] = function(Delta)
                return ((Delta - 1) ^ 3) + 1
            end,
            [Enum.EasingDirection.InOut] = function(Delta)
                if 0 <= Delta and Delta <= 0.5 then
                    return (4 * Delta ^ 3)
                elseif 0.5 <= Delta and Delta <= 1 then
                    return (4 * (Delta - 1) ^ 3) + 1
                end
            end
        },
        [Enum.EasingStyle.Quad] = {
            [Enum.EasingDirection.In] = function(Delta)
                return Delta ^ 2
            end,
            [Enum.EasingDirection.Out] = function(Delta)
                return (-(Delta - 1) ^ 2) + 1
            end,
            [Enum.EasingDirection.InOut] = function(Delta)
                if 0 <= Delta and Delta <= 0.5 then
                    return (2 * Delta ^ 2)
                elseif 0.5 <= Delta and Delta <= 1 then
                    return -(2 * (Delta - 1) ^ 2) + 1
                end
            end
        },
        [Enum.EasingStyle.Quart] = {
            [Enum.EasingDirection.In] = function(Delta)
                return Delta ^ 4
            end,
            [Enum.EasingDirection.Out] = function(Delta)
                return (-(Delta - 1) ^ 4) + 1
            end,
            [Enum.EasingDirection.InOut] = function(Delta)
                if 0 <= Delta and Delta <= 0.5 then
                    return (8 * Delta ^ 4)
                elseif 0.5 <= Delta and Delta <= 1 then
                    return -(8 * (Delta - 1) ^ 4) + 1
                end
            end
        },
        [Enum.EasingStyle.Quint] = {
            [Enum.EasingDirection.In] = function(Delta)
                return Delta ^ 5
            end,
            [Enum.EasingDirection.Out] = function(Delta)
                return ((Delta - 1) ^ 5) + 1
            end,
            [Enum.EasingDirection.InOut] = function(Delta)
                if 0 <= Delta and Delta <= 0.5 then
                    return (16 * Delta ^ 5)
                elseif 0.5 <= Delta and Delta <= 1 then
                    return (16 * (Delta - 1) ^ 5) + 1
                end
            end
        },
        [Enum.EasingStyle.Sine] = {
            [Enum.EasingDirection.In] = function(Delta)
                return Sin(((Pi / 2) * Delta) - (Pi / 2)) + 1
            end,
            [Enum.EasingDirection.Out] = function(Delta)
                return Sin((Pi / 2) * Delta)
            end,
            [Enum.EasingDirection.InOut] = function(Delta)
                return (0.5 * Sin((Pi * Delta) - (Pi / 2))) + 0.5
            end
        },
        [Enum.EasingStyle.Exponential] = {
            [Enum.EasingDirection.In] = function(Delta)
                return (2 ^ ((10 * Delta) - 10)) - 0.001
            end,
            [Enum.EasingDirection.Out] = function(Delta)
                return 1.001 * (-2 ^ -(10 * Delta)) + 1
            end,
            [Enum.EasingDirection.InOut] = function(Delta)
                if 0 <= Delta and Delta <= 0.5 then
                    return 0.5 * (2 ^ ((20 * Delta) - 10)) - 0.0005
                elseif 0.5 <= Delta and Delta <= 1 then
                    return 0.50025 * (-2 ^ (-(20 * Delta) + 10)) + 1
                end
            end
        },
        [Enum.EasingStyle.Back] = {
            [Enum.EasingDirection.In] = function(Delta)
                return (Delta * Delta) * (Delta * (1.70158 + 1) - 1.70158)
            end,
            [Enum.EasingDirection.Out] = function(Delta)
                return ((Delta - 1) ^ 2) * ((Delta - 1) * (1.70158 + 1) + 1.70158) + 1
            end,
            [Enum.EasingDirection.InOut] = function(Delta)
                if 0 <= Delta and Delta <= 0.5 then
                    return (2 * (Delta * Delta)) * ((2 * Delta) * (2.5949095 + 1) - 2.5949095)
                elseif 0.5 <= Delta and Delta <= 1 then
                    return (0.5 * ((2 * Delta) - 2) ^ 2) * (((2 * Delta) - 2) * (2.5949095 + 1) + 2.5949095) + 1
                end
            end
        },
        [Enum.EasingStyle.Bounce] = {
            [Enum.EasingDirection.In] = function(Delta)
                if 0 <= Delta and Delta <= (1 / 2.75) then
                    return 7.5625 * (Delta * Delta)
                elseif (1 / 2.75) <= Delta and Delta <= (2 / 2.75) then
                    return 7.5625 * (Delta - (1.5 / 2.75)) ^ 2 + 0.75
                elseif (2 / 2.75) <= Delta and Delta <= (2.5 / 2.75) then
                    return 7.5625 * (Delta - (2.25 / 2.75)) ^ 2 + 0.9375
                elseif (2.5 / 2.75) <= Delta and Delta <= 1 then
                    return 7.5625 * (Delta - (2.625 / 2.75)) ^ 2 + 0.984375
                end
            end,
            [Enum.EasingDirection.Out] = function(Delta)
                if 0 <= Delta and Delta <= (0.25 / 2.75) then
                    return -7.5625 * (1 - Delta - (2.625 / 2.75)) ^ 2 + 0.015625
                elseif (0.25 / 2.75) <= Delta and Delta <= (0.75 / 2.75) then
                    return -7.5625 * (1 - Delta - (2.25 / 2.75)) ^ 2 + 0.0625
                elseif (0.75 / 2.75) <= Delta and Delta <= (1.75 / 2.75) then
                    return -7.5625 * (1 - Delta - (1.5 / 2.75)) ^ 2 + 0.25
                elseif (1.75 / 2.75) <= Delta and Delta <= 1 then
                    return 1 - 7.5625 * (1 - Delta) ^ 2
                end
            end,
            [Enum.EasingDirection.InOut] = function(Delta)
                if 0 <= Delta and Delta <= (0.125 / 2.75) then
                    return 0.5 * (-7.5625 * (1 - (2 * Delta) - (2.625 / 2.75)) ^ 2 + 0.015625)
                elseif (0.125 / 2.75) <= Delta and Delta <= (0.375 / 2.75) then
                    return 0.5 * (-7.5625 * (1 - (2 * Delta) - (2.25 / 2.75)) ^ 2 + 0.0625)
                elseif (0.375 / 2.75) <= Delta and Delta <= (0.875 / 2.75) then
                    return 0.5 * (-7.5625 * (1 - (2 * Delta) - (1.5 / 2.75)) ^ 2 + 0.25)
                elseif (0.875 / 2.75) <= Delta and Delta <= 0.5 then
                    return 0.5 * (1 - 7.5625 * (1 - (2 * Delta)) ^ 2)
                elseif 0.5 <= Delta and Delta <= (1.875 / 2.75) then
                    return 0.5 + 3.78125 * ((2 * Delta) - 1) ^ 2
                elseif (1.875 / 2.75) <= Delta and Delta <= (2.375 / 2.75) then
                    return 3.78125 * ((2 * Delta) - (4.25 / 2.75)) ^ 2 + 0.875
                elseif (2.375 / 2.75) <= Delta and Delta <= (2.625 / 2.75) then
                    return 3.78125 * ((2 * Delta) - (5 / 2.75)) ^ 2 + 0.96875
                elseif (2.625 / 2.75) <= Delta and Delta <= 1 then
                    return 3.78125 * ((2 * Delta) - (5.375 / 2.75)) ^ 2 + 0.9921875
                end
            end
        },
        [Enum.EasingStyle.Elastic] = {
            [Enum.EasingDirection.In] = function(Delta)
                return (-2 ^ (10 * (Delta - 1))) * Sin(((2 * Pi) * (Delta - 1 - (0.3 / 4))) / 0.3)
            end,
            [Enum.EasingDirection.Out] = function(Delta)
                return (2 ^ (-10 * Delta)) * Sin(((2 * Pi) * (Delta - (0.3 / 4))) / 0.3) + 1
            end,
            [Enum.EasingDirection.InOut] = function(Delta)
                if 0 <= Delta and Delta <= 0.5 then
                    return -0.5 * (2 ^ ((20 * Delta) - 10)) * Sin(((2 * Pi) * ((2 * Delta) - 1.1125)) / 0.45)
                elseif 0.5 <= Delta and Delta <= 1 then
                    return 0.5 * (2 ^ ((-20 * Delta) + 10)) * Sin(((2 * Pi) * ((2 * Delta) - 1.1125)) / 0.45) + 1
                end
            end
        },
        [Enum.EasingStyle.Circular] = {
            [Enum.EasingDirection.In] = function(Delta)
                return -Sqrt(1 - Delta ^ 2) + 1
            end,
            [Enum.EasingDirection.Out] = function(Delta)
                return Sqrt(-(Delta - 1) ^ 2 + 1)
            end,
            [Enum.EasingDirection.InOut] = function(Delta)
                if 0 <= Delta and Delta <= 0.5 then
                    return -Sqrt(-Delta ^ 2 + 0.25) + 0.5
                elseif 0.5 <= Delta and Delta <= 1 then
                    return Sqrt(-(Delta - 1) ^ 2 + 0.25) + 0.5
                end
            end
        }
    }
end
--
do -- Chat
    function Chat:SendMessage(Message)
        if Message and Message ~= "" and Message ~= " " and SayMessage then
            SayMessage:FireServer(Message, "All")
        end
    end
    --
    function Chat:GenerateText()
        local Type = Flags["MiscChat_Type"]:Get()
        local Strings = Atlanta.Locals.Strings[Type]
        local String = ""
        --
        if Strings and typeof(Strings) == "table" and #Strings > 0 then
            if Type == "Song" then
                if Strings and typeof(Strings) == "table" and #Strings > 0 then
                    local Symbols = Flags["MiscChat_Symbols"]:Get()
                    --
                    local SymbolAmmount = Random(0, 6)
                    --
                    local First = Atlanta.Locals.Symbols[Random(1, #Atlanta.Locals.Symbols)]
                    local Second = Atlanta.Locals.Symbols[Random(1, #Atlanta.Locals.Symbols)]
                    --
                    String = (Symbols and Rep(First, SymbolAmmount) or "") .. Strings[Atlanta.Locals.SongQueue] .. (Symbols and Rep(Second, SymbolAmmount) or "")
                    --
                    if Flags["MiscChat_Emojis"]:Get() then
                        for Index = 1, Random(0, 8) do
                            if Random(1, 2) == 1 then
                                String = String .. Atlanta.Locals.Emojis[Random(1, #Atlanta.Locals.Emojis)]
                            else
                                String = Atlanta.Locals.Emojis[Random(1, #Atlanta.Locals.Emojis)] .. String
                            end
                        end
                    end
                    --
                    if (Atlanta.Locals.SongQueue + 1) > #Strings then
                        Atlanta.Locals.SongQueue = 1
                    else
                        Atlanta.Locals.SongQueue = Atlanta.Locals.SongQueue + 1
                    end
                end
            else
                if Flags["MiscChat_Multiple"]:Get() then
                    for Index = 1, Random(4, 8) do
                        local Symbols = Flags["MiscChat_Symbols"]:Get()
                        --
                        local SymbolAmmount = Random(0, 6)
                        --
                        local First = Atlanta.Locals.Symbols[Random(1, #Atlanta.Locals.Symbols)]
                        local Second = Atlanta.Locals.Symbols[Random(1, #Atlanta.Locals.Symbols)]
                        --
                        String = String .. (Symbols and Rep(First, SymbolAmmount) or "") .. Strings[Random(1, #Strings)] .. (Symbols and Rep(Second, SymbolAmmount) or "") .. " "
                        --
                        if Flags["MiscChat_Emojis"]:Get() then
                            for Index = 1, Random(0, 3) do
                                String = String .. Atlanta.Locals.Emojis[Random(1, #Atlanta.Locals.Emojis)]
                            end
                        end
                    end
                else
                    local Symbols = Flags["MiscChat_Symbols"]:Get()
                    --
                    local SymbolAmmount = Random(0, 6)
                    --
                    local First = Atlanta.Locals.Symbols[Random(1, #Atlanta.Locals.Symbols)]
                    local Second = Atlanta.Locals.Symbols[Random(1, #Atlanta.Locals.Symbols)]
                    --
                    String = (Symbols and Rep(First, SymbolAmmount) or "") .. Strings[Random(1, #Strings)] .. (Symbols and Rep(Second, SymbolAmmount) or "")
                    --
                    if Flags["MiscChat_Emojis"]:Get() then
                        for Index = 1, Random(0, 8) do
                            if Random(1, 2) == 1 then
                                String = String .. Atlanta.Locals.Emojis[Random(1, #Atlanta.Locals.Emojis)]
                            else
                                String = Atlanta.Locals.Emojis[Random(1, #Atlanta.Locals.Emojis)] .. String
                            end
                        end
                    end
                end
            end
            --
            return String:sub(0, 200)
        end
    end
    --
    function Chat:AttemptSend()
        local Tick = tick()
        --
        if Flags["MiscChat_ChatSpam"]:Get() and (Tick - Chat.LastTick) >= Flags["MiscChat_Delay"]:Get() then
            Chat.LastTick = Tick
            --
            Chat:SendMessage(Chat:GenerateText())
        end
    end
    --
    function Chat:GenerateSong(Name)
        local Split = Name:split(":")
        --
        if Split and typeof(Split) == "table" and #Split >= 2 then
            local Artist = Split[1]:lower():gsub("[^%w]+", "")
            local Song = Split[2]:lower():gsub("[^%w]+", "")
            --
            local Passed, Statement = pcall(function()
                return game:HttpGet("https://www.azlyrics.com/lyrics/" .. Artist .. "/" .. Song .. ".html")
            end)
            --
            if Passed then
                local Filter = Statement:split("<!-- Usage of azlyrics.com content by any third-party lyrics provider is prohibited by our licensing agreement. Sorry about that. -->")[2]
                local Data = Filter:sub(0, Filter:find("</div>") - 1):gsub("[\n\t]+", ""):split("<br>")
                local Final = {}
                --
                for Index, Value in pairs(Data) do
                    local Safe = Utility:SafeCheck(Value):gsub("&quot;", ""):gsub("amp;", "")
                    --
                    if Safe and typeof(Safe) == "string" and Safe ~= "" and Safe ~= " " then
                        Final[#Final + 1] = Safe
                    end
                end
                --
                if Final and #Final > 0 then
                    Final[1] = Final[1]:sub(2)
                    --
                    Atlanta.Locals.SongQueue = 1
                    Atlanta.Locals.Strings.Song = Final
                end
            end
        end
    end
end
--
do -- Languages
    function Languages:GetTranslate(Word)
        for Index, Value in pairs(Languages[Atlanta.Language]) do
            if Value == Word then
                return Index
            end
        end
        --
        return Word
    end
    --
    function Languages:GetTranslation(Word)
        return (Languages[Atlanta.Language][Word] or Word)
    end
end
--
do -- Atlanta
    function Atlanta:Unload()
        Atlanta.Locals.Window:Fade()
        --
        Wait(0.25)
        --
        Visuals:Unload()
        --
        Wait(0.25)
        --
        Storage:Remove()
        RunService:UnbindFromRenderStep("Desync")
        Atlanta.Locals.Window:Unload()
    end
    --
    function Atlanta:GetCharacter(Player)
        return Player.Character
    end
    --
    function Atlanta:GetHumanoid(Player, Character)
        return Character:FindFirstChildOfClass("Humanoid")
    end
    --
    function Atlanta:GetHealth(Player, Character, Humanoid)
        if Humanoid then
            return Clamp(Humanoid.Health, 0, Humanoid.MaxHealth), Humanoid.MaxHealth
        end
    end
    --
    function Atlanta:GetJumpPower(Player, Chareacter, Humanoid)
        return Humanoid.JumpPower
    end
    --
    function Atlanta:GetRootPart(Player, Character, Humanoid)
        return Humanoid.RootPart
    end
    --
    function Atlanta:GetLatency()
        return (Ping:GetValue() / 1000)
    end
    --
    function Atlanta:GetTeam(Player)
        return Player.Team
    end
    --
    function Atlanta:GetPlayerParent(Player)
        return Player.Parent
    end
    --
    function Atlanta:CheckTeam(Player1, Player2)
        if Library.Relations[Player2.UserId] == "Friend" then
            return false
        elseif Library.Relations[Player2.UserId] == "Enemy" or Library.Relations[Player2.UserId] == "Priority" then
            return true
        end
        --
        return Flags["SettingsMain_Deathmatch"]:Get() or (Atlanta:GetTeam(Player1) ~= Atlanta:GetTeam(Player2))
    end
    --
    function Atlanta:GetIgnore(Unpacked)
        return
    end
    --
    function Atlanta:GetOrigin(Origin)
        if Origin == "Head" then
            local Object, Humanoid, RootPart = Atlanta:ValidateClient(Client)
            local Head = Object:FindFirstChild("Head")
            --
            if Head and Head:IsA("RootPart") then
                return Head.CFrame.Position
            end
        elseif Origin == "Torso" then
            local Object, Humanoid, RootPart = Atlanta:ValidateClient(Client)
            --
            if RootPart then
                return RootPart.CFrame.Position
            end
        end
        --
        return Workspace.CurrentCamera.CFrame.Position
    end
    --
    function Atlanta:CursorOffset()
        if Flags["LegitMisc_CursorOffset"]:Get() then
            local CursorOffsetX = Flags["LegitMisc_CursorOffsetX"]:Get()
            local CursorOffsetY = Flags["LegitMisc_CursorOffsetY"]:Get()
            --
            return Vector2.new(CursorOffsetX, CursorOffsetY)
        else
            return Vector2.new(0, 0)
        end
    end
    --
    function Atlanta:GetBodyParts(Character, RootPart, Indexes, Hitboxes)
        local Parts = {}
        local Hitboxes = Hitboxes or {"Head", "Torso", "Arms", "Legs"}
        --
        for Index, Part in pairs(Character:GetChildren()) do
            if Part:IsA("BasePart") and Part ~= RootPart then
                if Find(Hitboxes, "Head") and Part.Name:lower():find("head") then
                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                elseif Find(Hitboxes, "Torso") and Part.Name:lower():find("torso") then
                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                elseif Find(Hitboxes, "Arms") and Part.Name:lower():find("arm") then
                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                elseif Find(Hitboxes, "Legs") and Part.Name:lower():find("leg") then
                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                elseif (Find(Hitboxes, "Arms") and Part.Name:lower():find("hand")) or (Find(Hitboxes, "Legs ") and Part.Name:lower():find("foot")) then
                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                end
            end
        end
        --
        return Parts
    end
    --
    function Atlanta:ClientAlive(Player, Character, Humanoid)
        local Health, MaxHealth = Atlanta:GetHealth(Player, Character, Humanoid)
        --
        return (Health > 0)
    end
    --
    function Atlanta:ValidateClient(Player)
        local Object = Atlanta:GetCharacter(Player)
        local Humanoid = (Object and Atlanta:GetHumanoid(Player, Object))
        local RootPart = (Humanoid and Atlanta:GetRootPart(Player, Object, Humanoid))
        --
        return Object, Humanoid, RootPart
    end
    --
    function Atlanta:OnGround(Character, RootPart)
        local Raycast = Ray.new(RootPart.Position, -(RootPart.CFrame.UpVector * 100))
        local Hit, Position = workspace:FindPartOnRay(Raycast, Character)
        --
        if Hit and Position then
            return Ceil((RootPart.Position - Position).Magnitude) <= 2
        end
    end
    --
    function Atlanta:DistanceFromGround(Character, RootPart)
        local Raycast = Ray.new(RootPart.Position, -(RootPart.CFrame.UpVector * 100))
        local Hit, Position = workspace:FindPartOnRay(Raycast, Character)
        --
        if Hit and Position then
            return Ceil((RootPart.Position - Position).Magnitude)
        end
    end
    --
    function Atlanta:GetBoundingBox(BodyParts, RootPart)
        local Size = Vector3.new(0, 0, 0)
        --
        for Index, Value in pairs({"Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}) do
            local Part = BodyParts[Value]
            local PartSize = (Part and Part.Size or Atlanta.Locals.PartSizes[Value])
            --
            if Value == "Head" then
                Size = (Size + Vector3.new(0, PartSize.Y, 0))
            elseif Value == "Torso" then
                Size = (Size + Vector3.new(PartSize.X, PartSize.Y, PartSize.Z))
            elseif Value == "Left Arm" then
                Size = (Size + Vector3.new(PartSize.X, 0, 0))
            elseif Value == "Right Arm" then
                Size = (Size + Vector3.new(PartSize.X, 0, 0))
            elseif Value == "Left Leg" then
                Size = (Size + Vector3.new(0, PartSize.Y, 0))
            elseif Value == "Right Leg" then
                Size = (Size + Vector3.new(0, PartSize.Y, 0))
            end
        end
        --
        return (RootPart.CFrame + Vector3.new(0, -0.125, 0)), Size
    end
    --
    function Atlanta:RayCast(Part, Origin, Ignore, Distance)
        local Ignore = Ignore or {}
        local Distance = Distance or 2000
        --
        local Cast = Ray.new(Origin, (Part.Position - Origin).Unit * Distance)
        local Hit = Workspace:FindPartOnRayWithIgnoreList(Cast, Ignore)
        --
        return (Hit and Hit:IsDescendantOf(Part.Parent)) == true, Hit
    end
    --
    function Atlanta:GetPlayers()
        return Players:GetPlayers()
    end
    --
    function Atlanta:GetAimAssistTarget()
        local Target = {
            Player = nil,
            Object = nil,
            Part = nil,
            Vector = nil,
            Magnitude = Huge
        }
        --
        local MouseLocation = Utility:MousePosition(true)
        --
        local Randomise = Flags["LegitAimAssist_RandomiseHitbox"]:Get()
        local Origin = Flags["LegitAimAssist_WallCheckOrigin"]:Get()
        local FOVType = Flags["LegitAimAssist_FOVType"]:Get()
        local FieldOfView = Flags["LegitAimAssist_FieldOfView"]
        local Deadzone = Flags["LegitAimAssist_Deadzone"]
        local Hitboxes = Flags["LegitAimAssist_Hitbox"]:Get()
        local Checks = Flags["LegitAimAssist_Checks"]:Get()
        local Dynamic = Flags["LegitAimAssist_Dynamic"]:Get() * 25
        --
        local Disabled = FieldOfView.Disabled
        local FieldOfView = Atlanta.Locals.AimAssistFOV / 2
        local Disabled2 = Deadzone.Disabled
        local Deadzone = Atlanta.Locals.DeadzoneFOV / 2
        --
        local DynamicHigh = Dynamic * 2
        local DynamicLow = Dynamic / 8.5
        --
        local PossibleTarget = {
            Player = nil,
            Object = nil,
            Magnitude = Huge
        }
        --
        for Index, Player in pairs(Atlanta:GetPlayers()) do
            if Player ~= Client then
                if (Find(Checks, "Team Check") and not Atlanta:CheckTeam(Client, Player)) then continue end
                --
                local Object, Humanoid, RootPart = Atlanta:ValidateClient(Player)
                --
                if (Object and Humanoid and RootPart) then
                    if (Find(Checks, "Forcefield Check") and Object:FindFirstChildOfClass("ForceField")) then continue end
                    if (Find(Checks, "Alive Check") and not Atlanta:ClientAlive(Player, Character, Humanoid)) then continue end
                    --
                    local Position, Visible = Workspace.CurrentCamera:WorldToViewportPoint(RootPart.CFrame.Position)
                    local Position2 = Vector2.new(Position.X, Position.Y)
                    local Magnitude = (MouseLocation - Position2).Magnitude
                    local Distance = (Workspace.CurrentCamera.CFrame.Position - RootPart.CFrame.Position).Magnitude
                    local SelfAimAssistFOV = FieldOfView
                    local SelfDeadzoneFOV = Deadzone
                    local SelfMultiplier = 1
                    --
                    if FOVType == "Dynamic" then
                        SelfMultiplier = (Distance - DynamicLow) > 0 and (1 - ((Distance - DynamicLow) / Dynamic)) or (1 + (Clamp(Abs((Distance - DynamicLow) * 1.75), 0, DynamicHigh) / 100)) * 1.25
                    end
                    --
                    if Visible and Magnitude <= PossibleTarget.Magnitude then
                        PossibleTarget = {
                            Player = Player,
                            Object = Object,
                            Distance = Distance,
                            Multiplier = SelfMultiplier,
                            Magnitude = Magnitude
                        }
                    end
                    --
                    SelfAimAssistFOV = (SelfAimAssistFOV * SelfMultiplier)
                    SelfDeadzoneFOV = (SelfDeadzoneFOV * SelfMultiplier)
                    --
                    if ((not Disabled) and not (Magnitude <= SelfAimAssistFOV)) then continue end
                    --
                    if Visible and Magnitude <= Target.Magnitude then
                        local ClosestPart, ClosestVector, ClosestMagnitude = nil, nil, Huge
                        --
                        for Index2, Part in pairs(Atlanta:GetBodyParts(Object, RootPart, false, Hitboxes)) do
                            if (Find(Checks, "Visible Check") and not (Part.Transparency ~= 1)) then continue end
                            --
                            local HitboxPosition
                            --
                            if Randomise then
                                local HitboxSize = Part.Size / 2
                                --
                                HitboxPosition = Part.CFrame.Position + Math:RandomVec3(HitboxSize.X, HitboxSize.Y, HitboxSize.Z)
                            else
                               HitboxPosition = Part.CFrame.Position
                            end
                            --
                            local Position3, Visible2 = Workspace.CurrentCamera:WorldToViewportPoint(HitboxPosition)
                            local Position4 = Vector2.new(Position3.X, Position3.Y)
                            local Magnitude2 = (MouseLocation - Position4).Magnitude
                            --
                            if Position4 and Visible2 then
                                if ((not Disabled) and not (Magnitude2 <= SelfAimAssistFOV)) then continue end
                                if (Find(Checks, "Wall Check") and not Atlanta:RayCast(Part, Atlanta:GetOrigin(Origin), {Atlanta:GetCharacter(Client), Atlanta:GetIgnore(true)})) then continue end
                                --
                                if Magnitude2 <= ClosestMagnitude then
                                    ClosestPart = Part
                                    ClosestVector = Position4
                                    ClosestMagnitude = Magnitude2
                                end
                            end
                        end
                        --
                        if ClosestPart and ClosestVector and ClosestMagnitude then
                            Target = {
                                Player = Player,
                                Object = Object,
                                Part = ClosestPart,
                                Vector = ClosestVector,
                                Distance = Distance,
                                Multiplier = SelfMultiplier,
                                Magnitude = ClosestMagnitude
                            }
                        end
                    end
                end
            end
        end
        --
        if Target.Player and Target.Object and Target.Part and Target.Vector and Target.Magnitude then
            PossibleTarget = {
                Player = Target.Player,
                Object = Target.Object,
                Distance = Target.Distance,
                Multiplier = Target.Multiplier,
                Magnitude = Target.Magnitude
            }
            --
            Atlanta.Locals.Target = Target
        else
            Atlanta.Locals.Target = nil
        end
        --
        if PossibleTarget and PossibleTarget.Distance and PossibleTarget.Multiplier then
            Atlanta.Locals.PossibleTarget = PossibleTarget
        else
            Atlanta.Locals.PossibleTarget = nil
        end
    end
    --
    function Atlanta:GetTriggerBotTarget()
        local Targets = {}
        --
        local MouseLocation = Utility:MousePosition(true)
        --
        local Hitboxes = Flags["LegitTriggerbot_Hitbox"]:Get()
        local Checks = Flags["LegitTriggerbot_Checks"]:Get()
        local Origin = Flags["LegitTriggerbot_WallCheckOrigin"]:Get()
        --
        for Index, Player in pairs(Atlanta:GetPlayers()) do
            if Player ~= Client then
                if (Find(Checks, "Team Check") and not Atlanta:CheckTeam(Client, Player)) then continue end
                --
                local Object, Humanoid, RootPart = Atlanta:ValidateClient(Player)
                --
                if (Object and Humanoid and RootPart) then
                    if (Find(Checks, "Forcefield Check") and Object:FindFirstChildOfClass("ForceField")) then continue end
                    if (Find(Checks, "Alive Check") and not Atlanta:ClientAlive(Player, Character, Humanoid)) then continue end
                    --
                    for Index2, Part in pairs(Atlanta:GetBodyParts(Object, RootPart, false, Hitboxes)) do
                        if (Find(Checks, "Visible Check") and not (Part.Transparency ~= 1)) then continue end
                        if (Find(Checks, "Wall Check") and not Atlanta:RayCast(Part, Atlanta:GetOrigin(Origin), {Atlanta:GetCharacter(Client), Atlanta:GetIgnore(true)})) then continue end
                        --
                        Targets[#Targets + 1] = Part
                    end
                end
            end
        end
        --
        local PointRay = Workspace.CurrentCamera:ViewportPointToRay(MouseLocation.X, MouseLocation.Y, 0)
        local Hit, Position, Normal, Material = Workspace:FindPartOnRayWithWhitelist(Ray.new(PointRay.Origin, PointRay.Direction * 1000), Targets, false, false)
        --
        if Hit then
            Atlanta.Locals.TriggerTarget = {
                Part = Hit,
                Position = Position,
                Material = Material
            }
        else
            Atlanta.Locals.TriggerTarget = nil
        end
    end
    --
    function Atlanta:AimAssist()
        if Atlanta.Locals.Target and Atlanta.Locals.Target.Part and Atlanta.Locals.Target.Vector then
            local Stutter = Flags["LegitAimAssist_Stutter"]
            local Deadzone = Flags["LegitAimAssist_Deadzone"].Disabled
            local Humaniser = Flags["LegitAimAssist_Humaniser"]:Get()
            local DynamicSmoothing = Flags["LegitAimAssist_DynamicSmoothing"]
            local Multiplier = Atlanta.Locals.Target.Multiplier
            --
            if not ((not Stutter.Disabled) and not ((tick() - Atlanta.Locals.LastStutter) >= (Stutter:Get() / 1000))) and not ((not Deadzone) and not (Atlanta.Locals.Target.Magnitude >= ((Atlanta.Locals.DeadzoneFOV * Multiplier) / 2))) then
                Atlanta.Locals.LastStutter = tick()
                --
                local MouseLocation = Utility:MousePosition(true)
                local MoveVector =  (Atlanta.Locals.Target.Vector - MouseLocation)
                local Smoothness = Vector2.new((Flags["LegitAimAssist_HorizontalSmoothing"]:Get() / 2), (Flags["LegitAimAssist_VerticalSmoothing"]:Get() / 2))
                --
                if not DynamicSmoothing.Disabled then
                    local SmoothingMultiplier = DynamicSmoothing:Get()
                    local SmoothnessMultplier = 1
                    --
                    if Multiplier <= 1 then
                        SmoothnessMultplier = 1 + ((1 - Multiplier) * SmoothingMultiplier)
                        --(Distance - DynamicLow) > 0 and (1 - ((Distance - DynamicLow) / Dynamic)) or (1 + (Clamp(Abs((Distance - DynamicLow) * 1.75), 0, DynamicHigh) / 100)) * 1.25
                    end
                end
                --
                local FinalVector = Math:RoundVector(Vector2.new(MoveVector.X / Smoothness.X, MoveVector.Y / Smoothness.Y))
                --
                if Humaniser and Atlanta.Locals.Humaniser.Sample then
                    local Delta = 25 / Atlanta.Locals.Target.Magnitude
                    --
                    if Delta <= 0.8 then
                        local Tick = tick()
                        local HumaniserSample = Atlanta.Locals.Humaniser.Sample[Atlanta.Locals.Humaniser.Index]
                        --
                        FinalVector = FinalVector + (Vector2.new(HumaniserSample[1], HumaniserSample[2]) * Delta)
                        --
                        if (Tick - Atlanta.Locals.Humaniser.Tick) > 0.1 then
                            Atlanta.Locals.Humaniser.Tick = Tick
                            --
                            if (Atlanta.Locals.Humaniser.Index + 1) > #Atlanta.Locals.Humaniser.Sample then
                                Atlanta.Locals.Humaniser.Index = 1
                            else
                                Atlanta.Locals.Humaniser.Index = Atlanta.Locals.Humaniser.Index + 1
                            end
                        end
                    end
                end
                --
                mousemoverel(FinalVector.X, FinalVector.Y)
            end
        end
    end
    --
    function Atlanta:TriggerBot()
        if Atlanta.Locals.TriggerTarget then
            local Tick = tick()
            --
            local TriggerDelay = Flags["LegitTriggerbot_Delay"]
            local Interval = Flags["LegitTriggerbot_Interval"]
            --
            if not ((not Interval.Disabled) and not ((Tick - Atlanta.Locals.TriggerTick) >= (Interval:Get() / 1000))) then
                Atlanta.Locals.TriggerTick = Tick
                --
                if not TriggerDelay.Disabled then
                    Delay(TriggerDelay:Get() / 1000, function()
                        mouse1press()
                        task.wait(0.05)
                        mouse1release()
                    end)
                else
                    mouse1press()
                    task.wait(0.05)
                    mouse1release()
                end
            end
        end
    end
    --
    function Atlanta:UpdateFieldOfView()
        local ScreenSize = Workspace.CurrentCamera.ViewportSize
        --
        local FieldOfView = Flags["LegitAimAssist_FieldOfView"]:Get()
        local Deadzone = Flags["LegitAimAssist_Deadzone"]:Get()
        local Multiplier = (Atlanta.Locals.PossibleTarget and Atlanta.Locals.PossibleTarget.Multiplier or 1)
        --
        Atlanta.Locals.AimAssistFOV = ((FieldOfView / 100) * ScreenSize.Y)
        Atlanta.Locals.DeadzoneFOV = (Atlanta.Locals.AimAssistFOV * 0.9) * (Deadzone / 100)
        --
        Atlanta.Locals.VisualAimAssistFOV = (Atlanta.Locals.AimAssistFOV * Multiplier)
        Atlanta.Locals.VisualDeadzoneFOV = (Atlanta.Locals.DeadzoneFOV * Multiplier)
    end
    --
    function Atlanta:TeleportPlace(PlaceId, JobId)
        if JobId == game.JobId and #Players:GetPlayers() <= 1 then
            Client:Kick("Atlanta: Current Server has 0 players, Rejoining.")
            --
            Wait()
            --
            TeleportService:Teleport(PlaceId, Client)
        else
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, Client)
        end
    end
    --
    function Atlanta:Rejoin()
        Atlanta:TeleportPlace(game.PlaceId, game.JobId)
    end
    --
    do -- Game LUAs
        local Games = {
            [{8392422325}] = {Name = "Testing", Func = function()
                Atlanta.Safe = false
            end},
            [{6808416928, 6808489605}] = {Name = "Aimblox", Func = function()
                function Atlanta:GetTeam(Player)
                    return Player:GetAttribute("Team")
                end
            end},
            [{3233893879}] = {Name = "Bad Business", Func = function()
                local Modules
                --
                for Index, Value in pairs(getgc(false)) do
                    if typeof(Value) == "function" and islclosure(Value) and not is_synapse_function(Value) then
                        for Index, Value in pairs(getupvalues(Value)) do
                            if type(Value) == "table" and rawget(Value, "Kitty") then
                                Modules = getupvalue(getrawmetatable(Value).__index, 1);break
                            end
                        end
                    end
                end
                --
                function Movement:HandleHumanoid(Humanoid)
                end
                --
                function Atlanta:GetTeam(Player)
                    for Index, Team in pairs(Teams:GetChildren()) do
                        if Team.Players:FindFirstChild(Player.Name) then
                            return Team
                        end
                    end
                end
                --
                function Atlanta:GetCharacter(Player)
                    for Index, Object in pairs(Workspace:FindFirstChild("Characters"):GetChildren()) do
                        if Modules.Characters:GetPlayerFromCharacter(Object) == Player then
                            return Object
                        end
                    end
                    --return Modules.Characters:GetCharacter(Player)
                end
                --
                function Atlanta:GetHumanoid(Player, Character)
                    return "Humanoid"
                end
                --
                function Atlanta:GetHealth(Player, Character, Humanoid)
                    local Health = Character:FindFirstChild("Health")
                    local MaxHealth = (Health and Health:FindFirstChild("MaxHealth"))
                    --
                    if Health and MaxHealth then
                        return Health.Value, MaxHealth.Value
                    end
                end
                --
                function Atlanta:GetJumpPower(Player, Character, Humanoid)
                    return 16
                end
                --
                function Atlanta:GetRootPart(Player, Character, Humanoid)
                    return Character:FindFirstChild("Root")
                end
                --
                function Atlanta:ClientAlive(Player, Character, Humanoid)
                    local Health = Atlanta:GetHealth(Player, Character, Humanoid)
                    --
                    return Health ~= 0
                end
                --
                function Atlanta:GetBodyParts(Character, RootPart, Indexes, Hitboxes)
                    local Parts = {}
                    local Hitboxes = Hitboxes or {"Head", "Torso", "Arms", "Legs"}
                    --
                    for Index, Part in pairs(Character.Body:GetChildren()) do
                        if Part:IsA("BasePart") and Part ~= RootPart then
                            if Find(Hitboxes, "Head") and Part.Name:lower():find("head") then
                                Parts[Indexes and Part.Name or #Parts + 1] = Part
                            elseif Find(Hitboxes, "Torso") and Part.Name:lower():find("torso") then
                                Parts[Indexes and Part.Name or #Parts + 1] = Part
                            elseif Find(Hitboxes, "Arms") and Part.Name:lower():find("arm") then
                                Parts[Indexes and Part.Name or #Parts + 1] = Part
                            elseif Find(Hitboxes, "Legs") and Part.Name:lower():find("leg") then
                                Parts[Indexes and Part.Name or #Parts + 1] = Part
                            elseif (Find(Hitboxes, "Arms") and Part.Name:lower():find("hand")) or (Find(Hitboxes, "Legs ") and Part.Name:lower():find("foot")) then
                                Parts[Indexes and Part.Name or #Parts + 1] = Part
                            end
                        end
                    end
                    --
                    return Parts
                end
            end},
            [{2007375127, 2007110262, 2742930668, 2797046423, 8676353931, 2560473206, 3848204924, 3499759026, 2550939008, 2560488801}] = {Name = "Vaktovia", Func = function()
                local Last = tick()
            end},
            [{11228173543, 10876054559,--[[Black Tide Rising]] 4790960806, 5296589146, 5973754207, 6580968658, 5961745093, 9582807828, 9483937523, 9682207432, 11401909704--[[Prime]]}] = {Name = "Prime", Func = function()
                local Last = tick()
                --
                Utility:Connection(RunService.RenderStepped, function()
                    if (tick() - Last) >= 0.1 then
                        Last = tick()
                        --
                        local Offset = GetUpvalue(require(ReplicatedStorage.WolframV4.Mouse).RandomizeOffset, 1)
                        --
                        Flags["LegitMisc_CursorOffsetX"]:Set(Offset.X)
                        Flags["LegitMisc_CursorOffsetY"]:Set(Offset.Y)
                    end
                end)
            end},
            [{7169326203}] = {Name = "Outlaw", Func = function()
                local Last = tick()
                --
                Utility:Connection(RunService.RenderStepped, function()
                    if (tick() - Last) >= 0.1 then
                        Last = tick()
                        --
                        local Offset = GetUpvalue(require(ReplicatedStorage.Modules.CoreSystem.ClientMain.MouseController).ChangeOffset, 1)
                        --
                        Flags["LegitMisc_CursorOffsetX"]:Set(-Offset.X)
                        Flags["LegitMisc_CursorOffsetY"]:Set(-Offset.Y)
                    end
                end)
            end},
            [{5870670453}] = {Name = "Outlaw", Func = function()
                local Last = tick()
                --
                Utility:Connection(RunService.RenderStepped, function()
                    if (tick() - Last) >= 0.1 then
                        Last = tick()
                        --
                        local Offset = require(ReplicatedStorage.ClientModules.InterfaceController.CursorControl)
                        local Offset = Vector2.new(Offset.OffsetX, Offset.OffsetY)
                        --
                        Flags["LegitMisc_CursorOffsetX"]:Set(-Offset.X)
                        Flags["LegitMisc_CursorOffsetY"]:Set(-Offset.Y)
                    end
                end)
            end},
            [{292439477}] = {Name = "Phantom Forces", Func = function()
                local Modules = {}
                --
                for Index, Value in pairs(getgc(true)) do
                    if typeof(Value) == "table" then
                        if rawget(Value, "getbodyparts") then
                            Modules.Replication = Value
                        elseif rawget(Value, "votestep") then
                            Modules.Hud = Value
                        end
                    end
                end
                --
                function Movement:HandleHumanoid(Humanoid)
                end
                --
                function Atlanta:GetCharacter(Player)
                    local Parts = Modules.Replication.getbodyparts(Player)
                    --
                    return (Parts and Parts.head and Parts.head.Parent)
                end
                --
                function Atlanta:GetHumanoid(Player, Character)
                    return "Humanoid"
                end
                --
                function Atlanta:GetHealth(Player, Character, Humanoid)
                    return Modules.Hud:getplayerhealth(Player)
                end
                --
                function Atlanta:GetJumpPower(Player, Character, Humanoid)
                    return 16
                end
                --
                function Atlanta:GetRootPart(Player, Character, Humanoid)
                    return Character:FindFirstChild("Torso")
                end
                --
                function Atlanta:ClientAlive(Player, Character, Humanoid)
                    return Modules.Hud:isplayeralive(Player)
                end
                --
                function Atlanta:GetIgnore(Unpacked)
                    if Unpacked then
                        return Workspace.CurrentCamera
                    else
                        return {Workspace.CurrentCamera}
                    end
                end
            end},
            [{5523314295}] = {Name = "Hellreaver", Func = function()
                function Atlanta:GetIgnore(Unpacked)
                    if Unpacked then
                        return Workspace.Rays
                    else
                        return {Workspace.Rays}
                    end
                end
            end},
            [{6075674379}] = {Name = "Emma", Func = function()
                function Atlanta:GetPlayers()
                    local Players = {}
                    --
                    for Index, Value in pairs(Workspace:GetChildren()) do
                        if Value and Value:IsA("Model") and Value.Name == "emma" then
                            local Object = Value
                            --
                            Players[#Players + 1] = {Character = Object, Parent = Workspace, UserId = "1000", Name = "emma", Team = "Bots"}
                        end
                    end
                    --
                    return Players
                end
                --
                Utility:Connection(Workspace.ChildAdded, function(Object)
                    if Object and Object:IsA("Model") and Object.Name == "emma" then
                        Atlanta:PlayerAdded({Character = Object, Parent = Workspace, UserId = "1000", Name = "emma", Team = "Bots"})
                    end
                end)
            end},
            [{2446927310}] = {Name = "Zombie Aim Challenge", Func = function()
                function Atlanta:GetPlayers()
                    local Players = {}
                    --
                    for Index, Value in pairs(Workspace.Bots:GetChildren()) do
                        if Value and Value:IsA("Model") and Value.Name == "Zombie" then
                            local Object = Value
                            --
                            Players[#Players + 1] = {Character = Object, Parent = Workspace.Bots, UserId = "1000", Name = "Zombie", Team = "Zombies"}
                        end
                    end
                    --
                    return Players
                end
                --
                function Atlanta:GetPlayerParent(Player)
                    return Player.Character and Player.Character.Parent
                end
                --
                Utility:Connection(Workspace.Bots.ChildAdded, function(Object)
                    if Object and Object:IsA("Model") and Object.Name == "Zombie" then
                        Atlanta:PlayerAdded({Character = Object, Parent = Workspace.Bots, UserId = "1000", Name = "Zombie", Team = "Zombies"})
                    end
                end)
            end},
            [{7352955828}] = {Name = "SC Zombie Aim Trainer", Func = function()
                function Atlanta:GetPlayers()
                    local Players = {}
                    --
                    for Index, Value in pairs(Workspace.Bots:GetChildren()) do
                        if Value and Value:IsA("Model") then
                            local Object = Value
                            --
                            Players[#Players + 1] = {Character = Object, Parent = Workspace.Bots, UserId = "1000", Name = "Bot" .. Index, Team = "Bots"}
                        end
                    end
                    --
                    return Players
                end
                --
                Utility:Connection(Workspace.Bots.ChildAdded, function(Object)
                    if Object and Object:IsA("Model") then
                        Atlanta:PlayerAdded({Character = Object, Parent = Workspace.Bots, UserId = "1000", Name = "Bot" .. Index, Team = "Bots"})
                    end
                end)
            end},
            [{7538200407}] = {Name = "RAC", Func = function()
                local HitParts = {"HitBox", "BigHitBox", "MiniHitBox"}
                --
                function Atlanta:GetRootPart(Player, Character, Humanoid)
                    return Find(HitParts, Character.Name) and Character:FindFirstChild("Part") or Humanoid.RootPart
                end
                --
                function Atlanta:GetPlayers()
                    local Players = {}
                    --
                    for Index, Value in pairs(Workspace.Game:FindFirstChild("nicetry2"):GetChildren()) do
                        if Value and Value:IsA("Model") then
                            local Object = Value
                            --
                            Players[#Players + 1] = {Character = Object, Parent = Value2, UserId = "1000", Name = "Bot" .. Index, Team = "Bots"}
                        end
                    end
                    --
                    for Index, Value in pairs(Workspace.Game.Scenarios:GetChildren()) do
                        for Index2, Value2 in pairs(Value:GetChildren()) do
                            if Find(HitParts, Value2.Name) and Value2:IsA("Model") then
                                local Object = Value2
                                --
                                Players[#Players + 1] = {Character = Object, Parent = Value2, UserId = "1000", Name = Value2.Name .. Index, Team = "Bots"}
                            end
                        end
                    end
                    --
                    return Players
                end
                --
                function Atlanta:GetBodyParts(Character, RootPart, Indexes, Hitboxes)
                    if Find(HitParts, Character.Name) then
                        return {[Indexes and "RootPart" or 1] = RootPart}
                    else
                        local Parts = {}
                        local Hitboxes = Hitboxes or {"Head", "Torso", "Arms", "Legs"}
                        --
                        for Index, Part in pairs(Character:GetChildren()) do
                            if Part:IsA("BasePart") and Part ~= RootPart then
                                if Find(Hitboxes, "Head") and Part.Name:lower():find("head") then
                                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                                elseif Find(Hitboxes, "Torso") and Part.Name:lower():find("torso") then
                                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                                elseif Find(Hitboxes, "Arms") and Part.Name:lower():find("arm") then
                                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                                elseif Find(Hitboxes, "Legs") and Part.Name:lower():find("leg") then
                                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                                elseif (Find(Hitboxes, "Arms") and Part.Name:lower():find("hand")) or (Find(Hitboxes, "Legs ") and Part.Name:lower():find("foot")) then
                                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                                end
                            end
                        end
                        --
                        return Parts
                    end
                end
                --
                function Atlanta:GetIgnore(Unpacked)
                    local Borders = {}
                    --
                    for Index, Value in pairs(Workspace.Game.Scenarios:GetChildren()) do
                        local Border = Value:FindFirstChild("Border")
                        --
                        if Value:IsA("Folder") and Border then
                            for Index2, Value2 in pairs(Border:GetChildren()) do
                                if Value2:IsA("BasePart") and Value2.Transparency == 1 then
                                    Borders[#Borders + 1] = Value2
                                end
                            end
                        end
                    end
                    --
                    if Unpacked then
                        return Unpack(Borders)
                    else
                        return Borders
                    end
                end
                --
                Utility:Connection(Workspace.Game:FindFirstChild("nicetry2").ChildAdded, function(Object)
                    if Object and Object:IsA("Model") then
                        Atlanta:PlayerAdded({Character = Object, Parent = Workspace.Bots, UserId = "1000", Name = "Bot" .. Index, Team = "Bots"})
                    end
                end)
            end}
        }
        --
        local PlaceId = game.PlaceId
        --
        for Index, Value in pairs(Games) do
            if Find(Index, PlaceId) then
                Utility:ThreadFunction(Value.Func, "Lx01")
            end
        end
    end
end
-- // UI Init
do -- UI
    local Window = Library:New({Name = ("gamesneeze.cc - %s - (%s)"):format(Atlanta.Account.Username, game.PlaceId), Style = 1, PageAmmount = 7, Size = Vector2.new(Atlanta.Language == "Lt" and 604 or 554, 629), Callback = function(Page)
        local PageName = Languages:GetTranslate(Page)
        --
        Atlanta.Locals.SelectedPage = PageName
        Atlanta.Locals.Window.VisualPreview:SetPreviewState(PageName == "Players")
    end})
    Library:UpdateColor("Accent", Color3.fromRGB(93, 62, 152))
    --
    Atlanta.Locals.Window = Window
    --
    Window.wminfo = (Languages:GetTranslation("[%s]  -  [Account = $ACC [$UID],  Build = $BUILD,  Ping = $PING,  FPS = $FPS]")):format("gamesneeze.cc"):gsub("$BUILD", "Developer"):gsub("$ACC", Atlanta.Account.Username):gsub("$UID", Atlanta.Account.UserID)
    Window.uibind = Enum.KeyCode.Z
    --
    local Legit = Window:Page({Name = Languages:GetTranslation("Legit")})
    local Rage = Window:Page({Name = Languages:GetTranslation("Rage")})
    local Misc = Window:Page({Name = Languages:GetTranslation("Misc")})
    local Settings = Window:Page({Name = Languages:GetTranslation("Settings")})
    local Config = Window:Page({Name = Languages:GetTranslation("Configs")})
    --
    do -- // Content
        do -- Legit
            local Legit_AimAssist = Legit:Section({Name = Languages:GetTranslation("Aim Assist"), Fill = true})
            local Legit_Triggerbot = Legit:Section({Name = Languages:GetTranslation("Trigger Bot"), Side = "Right"})
            local Legit_Misc = Legit:Section({Name = Languages:GetTranslation("Misc"), Fill = true, Side = "Right"})
            --
            Legit_AimAssist:Toggle({Name = Languages:GetTranslation("Enabled"), Flag = "LegitAimAssist_Enabled"}):Keybind({Flag = "LegitAimAssist_EnabledKey", Default = Enum.KeyCode.E, KeybindName = Languages:GetTranslation("Aim Assist"), Mode = "On Hold"})
            Legit_AimAssist:Slider({Name = Languages:GetTranslation("Field Of View"), Flag = "LegitAimAssist_FieldOfView", Default = 12.5, Minimum = 0.5, Maximum = 100.5, Decimals = 0.01, Disable = {"Disabled", 1, 100}, Ending = "%"})
            Legit_AimAssist:Dropdown({Flag = "LegitAimAssist_FOVType", Options = {"Static", "Dynamic"}, Default = "Static"})
            Legit_AimAssist:Slider({Flag = "LegitAimAssist_Dynamic", Default = 25, Maximum = 100, Minimum = 1, Decimals = 0.01})
            Legit_AimAssist:Slider({Name = Languages:GetTranslation("Horizontal Smoothing"), Flag = "LegitAimAssist_HorizontalSmoothing", Default = 12.5, Minimum = 1, Maximum = 100, Decimals = 0.01, Ending = "%"})
            Legit_AimAssist:Slider({Name = Languages:GetTranslation("Vertical Smoothing"), Flag = "LegitAimAssist_VerticalSmoothing", Default = 5, Minimum = 1, Maximum = 100, Decimals = 0.01, Ending = "%"})
            Legit_AimAssist:Slider({Name = Languages:GetTranslation("Dynamic Smoothing"), Flag = "LegitAimAssist_DynamicSmoothing", Default = 100.5, Maximum = 100.5, Minimum = 0.01, Decimals = 0.01, Disable = {"Disabled", 0.5, 100}})
            Legit_AimAssist:Multibox({Name = Languages:GetTranslation("Aim Assist Checks"), Flag = "LegitAimAssist_Checks", Options = {"Team Check", "Wall Check", "Visible Check", "Forcefield Check", "Alive Check"}, Default = {"Team Check", "Wall Check", "Alive Check"}})
            Legit_AimAssist:Multibox({Name = Languages:GetTranslation("Hit Boxes"), Flag = "LegitAimAssist_Hitbox", Options = {"Head", "Torso", "Arms", "Legs"}, Default = {"Head", "Torso"}, Minimum = 1})
            Legit_AimAssist:Toggle({Name = Languages:GetTranslation("Randomise Hitbox Position"), Flag = "LegitAimAssist_RandomiseHitbox", Default = false})
            Legit_AimAssist:Dropdown({Name = Languages:GetTranslation("Hitscan Type"), Flag = "LegitAimAssist_HitscanType", Options = {"Mouse", "Distance", "Health"}, Default = "Mouse"})
            Legit_AimAssist:Dropdown({Name = Languages:GetTranslation("Wall Check Origin"), Flag = "LegitAimAssist_WallCheckOrigin", Options = {"Camera", "Head", "Torso"}, Default = "Camera"})
            Legit_AimAssist:Toggle({Name = Languages:GetTranslation("Readjustment"), Flag = "LegitAimAssist_Readjustment"}):Keybind({Flag = "LegitAimAssist_ReadjustmentKey", Default = Enum.UserInputType.MouseButton2, KeybindName = Languages:GetTranslation("AB Readjustment"), Mode = "On Hold"})
            Legit_AimAssist:Slider({Name = Languages:GetTranslation("Deadzone"), Flag = "LegitAimAssist_Deadzone", Default = 100.5, Minimum = 0.5, Maximum = 100.5, Decimals = 0.01, Disable = {"Disabled", 1, 100}, Ending = "%"})
            Legit_AimAssist:Slider({Name = Languages:GetTranslation("Stutter"), Flag = "LegitAimAssist_Stutter", Default = 25, Maximum = 100.5, Minimum = 0.1, Decimals = 0.01, Disable = {"Disabled", 0.5, 100}, Ending = "t"})
            Legit_AimAssist:Toggle({Name = Languages:GetTranslation("Humaniser"), Flag = "LegitAimAssist_Humaniser"})
            Legit_AimAssist:Slider({Name = Languages:GetTranslation("Humaniser Scale"), Flag = "LegitAimAssist_HumaniserScale", Default = 50, Maximum = 100.5, Minimum = 0.1, Decimals = 0.01, Disable = {"Disabled", 0.5, 100}, Ending = "t"})
            --
            Legit_Triggerbot:Toggle({Name = Languages:GetTranslation("Enabled"), Flag = "LegitTriggerbot_Enabled"}):Keybind({Flag = "LegitTriggerbot_EnabledKey", Default = "X", KeybindName = Languages:GetTranslation("Trigger Bot"), Mode = "Toggle"})
            Legit_Triggerbot:Slider({Name = Languages:GetTranslation("Delay"), Flag = "LegitTriggerbot_Delay", Default = 12.5, Minimum = 0.5, Maximum = 500.5, Decimals = 1, Disable = {"Disabled", 1, 500}, Ending = "ms"})
            Legit_Triggerbot:Slider({Name = Languages:GetTranslation("Interval"), Flag = "LegitTriggerbot_Interval", Default = 75, Minimum = 0.5, Maximum = 1000, Decimals = 1, Disable = {"Disabled", 1, 1000}, Ending = "ms"})
            Legit_Triggerbot:Multibox({Name = Languages:GetTranslation("Trigger Bot Checks"), Flag = "LegitTriggerbot_Checks", Options = {"Team Check", "Wall Check", "Visible Check", "Forcefield Check", "Alive Check"}, Default = {"Team Check", "Wall Check", "Visible Check", "Alive Check"}})
            Legit_Triggerbot:Multibox({Name = Languages:GetTranslation("Hit Boxes"), Flag = "LegitTriggerbot_Hitbox", Options = {"Head", "Torso", "Arms", "Legs"}, Default = {"Head", "Torso"}, Minimum = 1})
            Legit_Triggerbot:Dropdown({Name = Languages:GetTranslation("Wall Check Origin"), Flag = "LegitTriggerbot_WallCheckOrigin", Options = {"Camera", "Head", "Torso"}, Default = "Camera"})
            Legit_Triggerbot:Toggle({Name = Languages:GetTranslation("Readjustment"), Flag = "LegitTriggerbot_Readjustment"}):Keybind({Flag = "LegitTriggerbot_Readjustment", Default = Enum.UserInputType.MouseButton2, KeybindName = Languages:GetTranslation("TB Readjustment"), Mode = "On Hold"})
            --
            Legit_Misc:Toggle({Name = Languages:GetTranslation("Cursor Offset"), Flag = "LegitMisc_CursorOffset"})
            Legit_Misc:Slider({Flag = "LegitMisc_CursorOffsetX", Default = 0, Minimum = -100, Maximum = 100, Ending = "px"})
            Legit_Misc:Slider({Flag = "LegitMisc_CursorOffsetY", Default = 0, Minimum = -100, Maximum = 100, Ending = "px"})
        end
        --
        do -- Rage
        end
        --
        do -- Misc
            local Misc_Client, Misc_Custom = Misc:MultiSection({Sections = {Languages:GetTranslation("Main"), Languages:GetTranslation("Custom")}, Size = 347})
            local Misc_Movement = Misc:Section({Name = Languages:GetTranslation("Movement"), Side = "Right"})
            local Misc_Extra = Misc:Section({Name = Languages:GetTranslation("Extra"), Fill = true, Side = "Right"})
            local Misc_Chat = Misc:Section({Name = Languages:GetTranslation("Chat"), Fill = true})
            --
            Misc_Client:Toggle({Name = Languages:GetTranslation("Client Desync"), Flag = "MiscClient_Enabled"}):Keybind({Flag = "MiscClient_EnabledKey", Default = Enum.KeyCode.E, KeybindName = Languages:GetTranslation("Client Desync"), Mode = "Toggle", Callback = function(Key, State)
                Desync.Enabled = State
                --
                if Atlanta:GetCharacter(Client) then
                    local Object, Humanoid, RootPart = Atlanta:ValidateClient(Client)
                    --
                    if RootPart then
                        if Desync.Enabled then
                            Atlanta.Locals.LastPosition = RootPart.CFrame
                            --
                            Desync.Fake.CFrame = RootPart.CFrame
                            Desync.Fake.Velocity = RootPart.Velocity
                            Desync.Fake.RotVelocity = RootPart.RotVelocity
                        else
                            if Desync.Real.CFrame and Desync.Real.Velocity and Desync.Real.RotVelocity then
                                RootPart.Velocity = Vector3.new(0, 0, 0)
                                RootPart.RotVelocity = Vector3.new(0, 0, 0)
                                --
                                RootPart.CFrame = Desync.Real.CFrame
                                RootPart.Velocity = Desync.Real.Velocity
                                RootPart.RotVelocity = Desync.Real.RotVelocity
                            end
                        end
                    end
                end
            end})
            Misc_Client:Slider({Name = Languages:GetTranslation("Speed"), Flag = "MiscClient_Speed", Default = 1, Maximum = 10, Minimum = 0.1, Decimals = 0.01})
            Misc_Client:Dropdown({Name = Languages:GetTranslation("Position Method"), Flag = "MiscClient_PositionMethod", Options = {"Off", "Head", "Under Floor", "In Air", "Floor Shift", "Air Shift", "Last Position", "Random", "Custom"}})
            Misc_Client:Dropdown({Name = Languages:GetTranslation("Turn Method"), Flag = "MiscClient_TurnMethod", Options = {"Off", "Rotate", "Backwards Shift", "Backwards", "Upside Down", "Laying", "Jitter", "Random", "Custom"}})
            Misc_Client:Dropdown({Name = Languages:GetTranslation("Turn Smoothing"), Flag = "MiscClient_TurnSmoothing", Options = {"Constant", "Reverse", "Inverse"}})
            Misc_Client:Dropdown({Name = Languages:GetTranslation("Easing Style"), Flag = "MiscClient_EasingStyle", Options = {"Off", "Linear", "Cubic", "Quad", "Quart", "Quint", "Sine", "Exponential", "Back", "Bounce", "Elastic", "Circular"}})
            Misc_Client:Dropdown({Name = Languages:GetTranslation("Easing Direction"), Flag = "MiscClient_EasingDirection", Options = {"In", "Out", "InOut"}})
            Misc_Client:Dropdown({Name = Languages:GetTranslation("Velocity Method"), Flag = "MiscClient_VelocityMethod", Options = {"Off", "StandBug", "Multiplier", "Reversed", "Up", "Down", "Left", "Right"}})
            Misc_Client:Slider({Name = Languages:GetTranslation("Velocity Multiplier"), Flag = "MiscClient_VelocityMultiplier", Default = 1, Maximum = 100, Minimum = 0, Decimals = 0.01})
            --Misc_Client:Label({Name = Languages:GetTranslation("Turn on Visualisation in Players,\nLocal Player to see the Desync.", Center = true})
            --
            Misc_Movement:Toggle({Name = Languages:GetTranslation("Speed"), Flag = "MiscMovement_Speed"}):Keybind({Flag = "MiscMovement_SpeedKey", Default = Enum.KeyCode.V, KeybindName = Languages:GetTranslation("Speed Hack"), Mode = "Toggle"})
            Misc_Movement:Slider({Flag = "MiscMovement_SpeedNum", Ending = "s", Default = 25, Maximum = 200, Minimum = 1, Decimals = 1})
            Misc_Movement:Toggle({Name = Languages:GetTranslation("Fly"), Flag = "MiscMovement_Fly"}):Keybind({Flag = "MiscMovement_FlyKey", Default = Enum.KeyCode.F, KeybindName = Languages:GetTranslation("Fly Hack"), Mode = "Toggle"})
            Misc_Movement:Slider({Flag = "MiscMovement_FlyNum", Ending = "s", Default = 50, Maximum = 300, Minimum = 1, Decimals = 1})
            Misc_Movement:Toggle({Name = Languages:GetTranslation("Bunnyhop"), Flag = "MiscMovement_Bunnyhop"}):Keybind({Flag = "MiscMovement_BunnyhopKey", Default = Enum.KeyCode.B, KeybindName = Languages:GetTranslation("Bunny Hop"), Mode = "Toggle"})
            Misc_Movement:Dropdown({Name = Languages:GetTranslation("Bunnyhop Type"), Flag = "MiscMovement_BunnyhopType", Default = "Gradual", Options = {"Static", "Gradual"}})
            Misc_Movement:Slider({Name = Languages:GetTranslation("Bunnyhop Velocity"), Flag = "MiscMovement_BunnyhopVelocity", Ending = "s", Default = 50, Maximum = 100, Minimum = 1, Decimals = 1})
            Misc_Movement:Slider({Name = Languages:GetTranslation("Bunnyhop Gains"), Flag = "MiscMovement_BunnyhopGains", Ending = "v", Default = 1.5, Maximum = 10, Minimum = 0.1, Decimals = 0.01})
            Misc_Movement:Toggle({Name = Languages:GetTranslation("Jumpbug"), Flag = "MiscMovement_Jumpbug"}):Keybind({Flag = "MiscMovement_JumpbugKey", Default = Enum.KeyCode.J, KeybindName = Languages:GetTranslation("Jump Bug"), Mode = "On Hold"})
            Misc_Movement:Slider({Name = Languages:GetTranslation("Jumpbug Delay"), Flag = "MiscMovement_JumpbugDelay", Ending = "ms", Default = 10, Maximum = 10, Minimum = 1, Decimals = 0.01})
            --
            Misc_Extra:Toggle({Name = Languages:GetTranslation("Click Teleport"), Flag = "MiscExtra_Click"}):Keybind({Flag = "MiscExtra_ClickKey", Default = Enum.KeyCode.LeftControl, KeybindName = Languages:GetTranslation("Click Teleport"), Mode = "On Hold"})
            Misc_Extra:Toggle({Name = Languages:GetTranslation("Noclip"), Flag = "MiscExtra_Noclip"}):Keybind({Flag = "MiscExtra_NoclipKey", Default = Enum.KeyCode.N, KeybindName = Languages:GetTranslation("Noclip"), Mode = "On Hold"})
            Misc_Extra:Toggle({Name = Languages:GetTranslation("Disable Networking"), Flag = "MiscExtra_DisableNetworking"}):Keybind({Flag = "MiscExtra_DisableNetworkingKey", Default = Enum.KeyCode.X, KeybindName = Languages:GetTranslation("Networking"), Mode = "Toggle"})
            Misc_Extra:Toggle({Name = Languages:GetTranslation("Fake Lag"), Flag = "MiscExtra_FakeLag"}):Keybind({Flag = "MiscExtra_FakeLagKey", Default = Enum.KeyCode.Minus, KeybindName = Languages:GetTranslation("Fake Lag"), Mode = "Toggle"})
            Misc_Extra:Slider({Name = Languages:GetTranslation("Fake Lag Ammount"), Flag = "MiscExtra_FakeLagAmmount", Ending = "t", Default = 50, Maximum = 1000, Minimum = 1, Decimals = 1})
            Misc_Extra:Slider({Name = Languages:GetTranslation("Fake Lag Multiplier"), Flag = "MiscExtra_FakeLagMultiplier", Ending = "t", Default = 1, Maximum = 20, Minimum = 0.1, Decimals = 0.001})
            Misc_Extra:Toggle({Name = Languages:GetTranslation("Return Desync"), Flag = "MiscExtra_Return"})
            Misc_Extra:Dropdown({Name = Languages:GetTranslation("Return Type"), Flag = "MiscExtra_ReturnType", Default = "Flip", Options = {"Always", "Flip"}})
            Misc_Extra:Toggle({Name = Languages:GetTranslation("Lag Switch"), Flag = "MiscExtra_LagSwitch"}):Keybind({Flag = "MiscExtra_LagSwitchKey", Default = Enum.KeyCode.Equals, KeybindName = Languages:GetTranslation("Lag Switch"), Mode = "On Hold"})
            Misc_Extra:Slider({Flag = "MiscExtra_LagSwitchAmmount", Ending = "rl", Default = 1, Maximum = 10, Minimum = 0.1, Decimals = 0.01})
            --
            Misc_Chat:Toggle({Name = Languages:GetTranslation("Chat Spam"), Flag = "MiscChat_ChatSpam"})
            Misc_Chat:Slider({Name = Languages:GetTranslation("Delay"), Flag = "MiscChat_Delay", Ending = "s", Default = 2.5, Maximum = 10, Minimum = 0.1, Decimals = 0.01})
            Misc_Chat:Dropdown({Name = Languages:GetTranslation("Chat Spam Type"), Flag = "MiscChat_Type", Default = "Atlanta", Options = {"Atlanta", "Troll", "Toxic", "Fulcrum", "Custom", "Song"}})
            Misc_Chat:TextBox({Flag = "MiscChat_Song", Max = 50, PlaceHolder = Languages:GetTranslation("Song Name"), Callback = function(Text, Enter) if Enter then Chat:GenerateSong(Text) end end})
            Misc_Chat:Toggle({Name = Languages:GetTranslation("Multiple"), Flag = "MiscChat_Multiple", Default = true})
            Misc_Chat:Toggle({Name = Languages:GetTranslation("Emojis"), Flag = "MiscChat_Emojis", Default = true})
            Misc_Chat:Toggle({Name = Languages:GetTranslation("Symbols"), Flag = "MiscChat_Symbols", Default = true})
        end
        --
        do -- Settings
            local Settings_PlayerList = Settings:PlayerList({})
            local Settings_Main = Settings:Section({Name = Languages:GetTranslation("Main"), Fill = true})
            local Settings_Extra = Settings:Section({Name = Languages:GetTranslation("Extra"), Fill = true, Side = "Right"})
            --
            Settings_Main:Toggle({Name = Languages:GetTranslation("Deatmatch Mode"), Flag = "SettingsMain_Deathmatch"})
            --
            Settings_Extra:Label({Name = Languages:GetTranslation("Server ID")})
            Settings_Extra:TextBox({Default = game.JobId, Max = 200, Reactive = false, PlaceHolder = "Server ID"})
            Settings_Extra:Button({Name = Languages:GetTranslation("Rejoin Server"), Callback = Atlanta.Rejoin})
        end
        --
        do -- Config
            local Config_Menu = Config:Section({Name = Languages:GetTranslation("Menu")})
            local Config_Configuration = Config:Section({Name = Languages:GetTranslation("Configuration"), Side = "Right"})
            local Config_Theme = Config:Section({Name = Languages:GetTranslation("Theme")})
            local Config_Load = Config:Section({Name = Languages:GetTranslation("Load"), Fill = true, Side = "Right"})
            local Config_Extra = Config:Section({Name = Languages:GetTranslation("Extra"), Fill = true})
            --
            Config_Menu:Keybind({Name = Languages:GetTranslation("Toggle"), Flag = "ConfigMenu_MenuToggle", Default = Enum.KeyCode.Z, KeybindName = Languages:GetTranslation("Menu Key"), Mode = "Toggle", Callback = function(Input, Active) Window.uibind = Input end})
            Config_Menu:Toggle({Name = Languages:GetTranslation("Custom Menu Name"), Flag = "ConfigMenu_CustomName", Default = false, Callback = function(State)
                if State and Flags.ConfigMenu_Name and Flags.ConfigMenu_Name:Get() then
                    Window:SetName(("%s - %s - (%s)"):format(Flags["ConfigMenu_Name"]:Get(), Atlanta.Account.Username, game.PlaceId)) 
                    Window.wminfo = (Languages:GetTranslation("[%s]  -  [Account = $ACC [$UID],  Build = $BUILD,  Ping = $PING,  FPS = $FPS]")):format(Flags["ConfigMenu_Name"]:Get()):gsub("$BUILD", "Developer"):gsub("$ACC", Atlanta.Account.Username):gsub("$UID", Atlanta.Account.UserID)
                else
                    Window:SetName(("%s - %s - (%s)"):format("gamesneeze.cc", Atlanta.Account.Username, game.PlaceId))
                    Window.wminfo = (Languages:GetTranslation("[%s]  -  [Account = $ACC [$UID],  Build = $BUILD,  Ping = $PING,  FPS = $FPS]")):format("gamesneeze.cc"):gsub("$BUILD", "Developer"):gsub("$ACC", Atlanta.Account.Username):gsub("$UID", Atlanta.Account.UserID)
                end
            end})
            Config_Menu:TextBox({Flag = "ConfigMenu_Name", Default = "gamesneeze.cc", Max = 50, PlaceHolder = "Menu Name", Callback = function(State)
                if Flags["ConfigMenu_CustomName"]:Get() then
                    Window:SetName(("%s - %s - (%s)"):format(State, Atlanta.Account.Username, game.PlaceId))
                    Window.wminfo = (Languages:GetTranslation("[%s]  -  [Account = $ACC [$UID],  Build = $BUILD,  Ping = $PING,  FPS = $FPS]")):format(Flags["ConfigMenu_Name"]:Get()):gsub("$BUILD", "Developer"):gsub("$ACC", Atlanta.Account.Username):gsub("$UID", Atlanta.Account.UserID)
                end
            end})
            --
            Config_Configuration:List({Flag = "ConfigConfiguration_Box", Options = Atlanta.Configs}) 
            Config_Configuration:TextBox({Flag = "ConfigConfiguration_Name", Name = Languages:GetTranslation("Config Name"), Default = "", Max = 20, PlaceHolder = "Config Name", Callback = function(Text) end})
            Config_Configuration:ButtonHolder({Buttons = {{"Create", function() Library:PerformConfigAction(Flags["ConfigConfiguration_Name"]:Get(), "Save") end}, {"Delete", function() Library:PerformConfigAction(Flags["ConfigConfiguration_Box"]:Get(), "Delete") end}}})
            Config_Configuration:ButtonHolder({Buttons = {{"Load", function() Library:PerformConfigAction(Flags["ConfigConfiguration_Box"]:Get(), "Load") end}, {"Save", function() Library:PerformConfigAction(Flags["ConfigConfiguration_Box"]:Get(), "Save") end}}})
            Config_Configuration:Button({Name = Languages:GetTranslation("Unload"), Callback = Atlanta.Unload})
            --
            Config_Theme:Dropdown({Name = Languages:GetTranslation("Theme"), Flag = "ConfigTheme_Theme", Default = "Default", Max = 8, Options = Utility:GetTableIndexes(Themes, true)})
            Config_Theme:Button({Name = Languages:GetTranslation("Load"), Callback = function() Library:LoadTheme(Flags.ConfigTheme_Theme:Get()) end})
            Config_Theme:Colorpicker({Name = Languages:GetTranslation("Accent"), Flag = "ConfigTheme_Accent", Default = Color3.fromRGB(93, 62, 152), Callback = function(Color) Library:UpdateColor("Accent", Color) end})
            Config_Theme:Colorpicker({Name = Languages:GetTranslation("Light Contrast"), Flag = "ConfigTheme_LightContrast", Default = Color3.fromRGB(30, 30, 30), Callback = function(Color) Library:UpdateColor("LightContrast", Color) end})
            Config_Theme:Colorpicker({Name = Languages:GetTranslation("Dark Contrast"), Flag = "ConfigTheme_DarkContrast", Default = Color3.fromRGB(20, 20, 20), Callback = function(Color) Library:UpdateColor("DarkContrast", Color) end})
            Config_Theme:Colorpicker({Name = Languages:GetTranslation("Outline"), Flag = "ConfigTheme_Outline", Default = Color3.fromRGB(0, 0, 0), Callback = function(Color) Library:UpdateColor("Outline", Color) end})
            Config_Theme:Colorpicker({Name = Languages:GetTranslation("Inline"), Flag = "ConfigTheme_Inline", Default = Color3.fromRGB(50, 50, 50), Callback = function(Color) Library:UpdateColor("Inline", Color) end})
            Config_Theme:Colorpicker({Name = Languages:GetTranslation("Light Text"), Flag = "ConfigTheme_LightText", Default = Color3.fromRGB(255, 255, 255), Callback = function(Color) Library:UpdateColor("TextColor", Color) end})
            Config_Theme:Colorpicker({Name = Languages:GetTranslation("Dark Text"), Flag = "ConfigTheme_DarkText", Default = Color3.fromRGB(175, 175, 175), Callback = function(Color) Library:UpdateColor("TextDark", Color) end})
            Config_Theme:Colorpicker({Name = Languages:GetTranslation("Text Outline"), Flag = "ConfigTheme_TextBorder", Default = Color3.fromRGB(0, 0, 0), Callback = function(Color) Library:UpdateColor("TextBorder", Color) end})
            Config_Theme:Colorpicker({Name = Languages:GetTranslation("Cursor Outline"), Flag = "ConfigTheme_CursorOutline", Default = Color3.fromRGB(10, 10, 10), Callback = function(Color) Library:UpdateColor("CursorOutline", Color) end})
            Config_Theme:Dropdown({Name = Languages:GetTranslation("Accent Effect"), Flag = "ConfigTheme_AccentEffect", Default = "None", Options = {"None", "Rainbow", "Shift", "Reverse Shift"}, Callback = function(State) if State == "None" then Library:UpdateColor("Accent", Flags["ConfigTheme_Accent"]:Get()) end end})
            Config_Theme:Slider({Name = Languages:GetTranslation("Effect Length"), Flag = "ConfigTheme_EffectLength", Default = 40, Maximum = 360, Minimum = 1, Decimals = 1})
            --
            Config_Load:Toggle({Name = Languages:GetTranslation("Show Menu"), Flag = "ConfigLoad_ShowMenu", Default = true})
            Config_Load:Toggle({Name = Languages:GetTranslation("Auto Load Config"), Flag = "ConfigLoad_AutoLoad", Default = false})
            --
            Config_Extra:Toggle({Name = Languages:GetTranslation("Show Watermark"), Flag = "ConfigExtra_Watermark", Callback = function(State) Window.watermark:Update("Visible", State) end})
            Config_Extra:Toggle({Name = Languages:GetTranslation("Show Keybinds"), Flag = "ConfigExtra_KBList", Callback = function(State) Window.keybindslist:Update("Visible", State) end})
            Config_Extra:Toggle({Name = Languages:GetTranslation("Show Statuses"), Flag = "ConfigExtra_StatusList", Callback = function(State) Window.statuslist:Update("Visible", State) end})
        end
    end
    --
    do -- // Main
        do -- Connections
            RunService:BindToRenderStep("Desync", Enum.RenderPriority.First.Value, function()
                if Desync.Enabled then
                    local Object, Humanoid, RootPart = Atlanta:ValidateClient(Client)
                    local Head = (Object and Object:FindFirstChild("Head"))
                    --
                    if RootPart and Head then
                        local PositionMethod = Flags["MiscClient_PositionMethod"]:Get()
                        local TurnMethod = Flags["MiscClient_TurnMethod"]:Get()
                        local TurnSmoothing = Flags["MiscClient_TurnSmoothing"]:Get()
                        local EasingStyle = Flags["MiscClient_EasingStyle"]:Get()
                        local EasingDirection = Flags["MiscClient_EasingDirection"]:Get()
                        local VelocityMethod = Flags["MiscClient_VelocityMethod"]:Get()
                        local VelocityMultiplier = Flags["MiscClient_VelocityMultiplier"]:Get()
                        --
                        Desync.SmoothValue = Desync.SmoothValue + ((TurnMethod == "Rotate" and 0.0025 or 0.005) * Flags["MiscClient_Speed"]:Get())
                        local Smoothened = (EasingStyle ~= "Off" and Math:Shift(Desync.SmoothValue) or (TurnSmoothing == "Constant" and Desync.SmoothValue or TurnSmoothing == "Reverse" and -Desync.SmoothValue or Math:Shift(Desync.SmoothValue)))
                        --
                        if TurnMethod == "Rotate" and Floor(Desync.SmoothValue * Desync.Rotate.X) > Desync.Rotate.X then
                            Window.statuslist:Add("Calculating Desync Rotation")
                            Desync.SmoothValue = 0
                            Smoothened = 0
                            --
                            Desync.Rotate2 = (Desync.Rotate2 + Desync.Rotate)
                            --
                            Desync.Rotate = Vector3.new(Random(150, 1600), Random(2, 600) / 2, Random(150, 1600))
                            --
                            Delay(0.5, function()
                                Window.statuslist:Remove("Calculating Desync Rotation")
                            end)
                        end
                        --
                        if EasingStyle ~= "Off" then
                            Smoothened = TurnSmoothing == "Reverse" and -Tween.EasingStyles[Enum.EasingStyle[EasingStyle]][Enum.EasingDirection[EasingDirection]](Smoothened) or Tween.EasingStyles[Enum.EasingStyle[EasingStyle]][Enum.EasingDirection[EasingDirection]](Smoothened)
                        end
                        --
                        if Desync.Sent.Position ~= RootPart.CFrame.Position then
                            Desync.Real.CFrame = RootPart.CFrame
                        end
                        --
                        RootPart.CFrame = Desync.Real.CFrame or RootPart.CFrame
                        RootPart.Velocity = Desync.Real.Velocity or RootPart.Velocity
                        RootPart.RotVelocity = Desync.Real.RotVelocity or RootPart.RotVelocity
                        --
                        local Length, Height, Width = Desync.Real.CFrame:ToOrientation()
                        --
                        local Position
                        local Turn
                        ---(Head and (RootPart.Size.Y + (Head.Size.Y * 3)) or 5)
                        if PositionMethod == "Head" then
                            Position = Desync.Real.CFrame.Position + Vector3.new(0, Head and (RootPart.Size.Y + (Head.Size.Y * 3)) or 5, 0)
                        elseif PositionMethod == "Under Floor" then
                            Position = Desync.Real.CFrame.Position + Vector3.new(0, -4, 0)
                        elseif PositionMethod == "In Air" then
                            Position = Desync.Real.CFrame.Position + Vector3.new(0, ((Head and (RootPart.Size.Y + (Head.Size.Y * 3)) or 5) + 5), 0)
                        elseif PositionMethod == "Floor Shift" then
                            Position = Desync.Real.CFrame.Position + Vector3.new(0, -((Head and (RootPart.Size.Y + (Head.Size.Y * 3)) or 5) * Math:Shift(Smoothened)), 0)
                        elseif PositionMethod == "Air Shift" then
                            Position = Desync.Real.CFrame.Position + Vector3.new(0, (((Head and (RootPart.Size.Y + (Head.Size.Y * 3)) or 5) * 2) * Math:Shift(Smoothened)), 0)
                        elseif PositionMethod == "Last Position" then
                            Position = Atlanta.Locals.LastPosition.Position
                        elseif PositionMethod == "Random" then
                            local Smoothened2 = Math:Shift(Smoothened)
                            --
                            Position = Desync.Real.CFrame.Position + Vector3.new(Random(-10, 10) , Random(-10, 10), Random(-10, 10))
                        else
                            Position = Desync.Real.CFrame.Position
                        end
                        --
                        if TurnMethod == "Rotate" then
                            Turn = CFrame.Angles(Length + Rad((Smoothened * Desync.Rotate.X) + Desync.Rotate2.X), Height + Rad((Smoothened * Desync.Rotate.Y) + Desync.Rotate2.Y), Width + Rad((Smoothened * Desync.Rotate.Z) + Desync.Rotate2.Z))
                        elseif TurnMethod == "Backwards Shift" then
                            Turn = CFrame.Angles(Length, Height - Rad(Math:Shift(Smoothened) * 180), Width)
                        elseif TurnMethod == "Backwards" then
                            Turn = CFrame.Angles(Length, Height - Rad(180), Width)
                        elseif TurnMethod == "Upside Down" then
                            Position = Position - Vector3.new(0, Head and Head.Size.Y or 1, 0)
                            Turn = CFrame.Angles(Length, Height, Rad(180))
                        elseif TurnMethod == "Laying" then
                            Position = Position + Vector3.new(0, -(RootPart.Size.Y + ((Head and Head.Size.Y or 1) * 0.5)), 0)
                            Turn = CFrame.Angles(Rad(90), 0, -Height)
                        elseif TurnMethod == "Random" then
                            Turn = CFrame.Angles(Length + Rad(Random(-360, 360)), Height + Rad(Random(-360, 360)), Width + Rad(Random(-360, 360)))
                        elseif TurnMethod == "Jitter" then
                            Turn = CFrame.Angles(Length + Rad(Random(-3, 3)), Height + Rad(Random(-3, 3)), Width + Rad(Random(-3, 3)))
                        else
                            Turn = CFrame.Angles(Length, Height, Width)
                        end
                        --
                        Desync.Fake.CFrame = CFrame.new(Position) * Turn
                        --
                        if VelocityMethod == "StandBug" then
                            Desync.Fake.Velocity = Vector3.new(9999999999999, -9999999999999, 9999999999999)
                            Desync.Fake.RotVelocity = Vector3.new(9999999999999, -9999999999999, 9999999999999)
                        elseif VelocityMethod == "Reversed" then
                            Desync.Fake.Velocity = -Desync.Real.Velocity
                            Desync.Fake.RotVelocity = -Desync.Real.RotVelocity
                        elseif VelocityMethod == "Up" then
                            Desync.Fake.Velocity = Vector3.new(0, 3000, 0)
                            Desync.Fake.RotVelocity = Vector3.new(0, 3000, 0)
                        elseif VelocityMethod == "Down" then
                            Desync.Fake.Velocity = Vector3.new(0, -3000, 0)
                            Desync.Fake.RotVelocity = Vector3.new(0, -3000, 0)
                        elseif VelocityMethod == "Left" then
                            Desync.Fake.Velocity = Vector3.new(3000, 0, 0)
                            Desync.Fake.RotVelocity = Vector3.new(3000, 0, 0)
                        elseif VelocityMethod == "Right" then
                            Desync.Fake.Velocity = Vector3.new(0, 0, 3000)
                            Desync.Fake.RotVelocity = Vector3.new(0, 0, 3000)
                        else
                            Desync.Fake.Velocity = Desync.Real.Velocity
                            Desync.Fake.RotVelocity = Desync.Real.RotVelocity
                        end
                        --
                        if VelocityMethod ~= "StandBug" and VelocityMethod ~= "Off" then
                            Desync.Fake.Velocity = Desync.Fake.Velocity * VelocityMultiplier
                            Desync.Fake.RotVelocity = Desync.Fake.RotVelocity * VelocityMultiplier
                        end
                    end 
                end
                --
                if Flags["MiscExtra_LagSwitch"]:Get() then
                    Network.IncomingReplicationLag = Flags["MiscExtra_LagSwitchAmmount"]:Get()
                else
                    Network.IncomingReplicationLag = 0
                end
            end)
            --
            Utility:Connection(UserInputService.InputBegan, function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 and Flags["MiscExtra_ClickKey"]:Active() then
                    local Object, Humanoid, RootPart = Atlanta:ValidateClient(Client)
                    --
                    if RootPart then
                        RootPart.CFrame = CFrame.new(Mouse.Hit.Position) + Vector3.new(0, Atlanta:DistanceFromGround(Object, RootPart) + 1, 0)
                    end
                end
            end)
            --
            Utility:Connection(RunService.RenderStepped, function()
                for Index, Value in pairs(Visuals.Bases) do
                    Utility:ThreadFunction(function()
                        Value:Update()
                    end, "3x02")
                end
                --
                if Flags["LegitAimAssist_Enabled"]:Get() then
                    Utility:ThreadFunction(Atlanta.UpdateFieldOfView, "2x01")
                end
                --
                if Flags["LegitAimAssist_EnabledKey"]:Active() and not Flags["LegitAimAssist_ReadjustmentKey"]:Active() then
                    Utility:ThreadFunction(Atlanta.GetAimAssistTarget, "2x02")
                    Utility:ThreadFunction(Atlanta.AimAssist, "2x03")
                else
                    Atlanta.Locals.PossibleTarget = nil
                    Atlanta.Locals.Target = nil
                end
                --
                if Flags["LegitTriggerbot_EnabledKey"]:Active() and not Flags["LegitAimAssist_ReadjustmentKey"]:Active() then
                    Utility:ThreadFunction(Atlanta.GetTriggerBotTarget, "2x04")
                    Utility:ThreadFunction(Atlanta.TriggerBot, "2x05")
                else
                    Atlanta.Locals.TriggerTarget = nil
                end 
                --
                Utility:ThreadFunction(Library.UpdateHue, "0x01")
                Utility:ThreadFunction(Visuals.Update, "3x01")
                Utility:ThreadFunction(Movement.Update, "4x01")
                Utility:ThreadFunction(Chat.AttemptSend, "5x01")
            end)
            --
            Utility:Connection(RunService.Stepped, function()
                if Flags["MiscExtra_NoclipKey"]:Active() then
                    local Object, Humanoid, RootPart = Atlanta:ValidateClient(Client)
                    local BodyParts = (RootPart and Atlanta:GetBodyParts(Object, RootPart))
                    --
                    if RootPart then
                        for Index, Value in pairs(BodyParts) do
                            if Value:IsA("BasePart") and Value.CanCollide == true then
                                Value.CanCollide = false
                            end
                        end
                    end
                end
            end)
            --
            Utility:Connection(RunService.Heartbeat, function()
                local Tick = tick()
                local FakeLagging = false
                --
                local Object, Humanoid, RootPart = Atlanta:ValidateClient(Client)
                --
                if RootPart then
                    Desync.Real.CFrame = RootPart.CFrame
                    Desync.Real.Velocity = RootPart.Velocity
                    Desync.Real.RotVelocity = RootPart.RotVelocity
                    --
                    local Normal = false
                    --
                    if Flags["MiscExtra_FakeLagKey"]:Active() then
                        local FakeLagMultiplier = Flags["MiscExtra_FakeLagMultiplier"]:Get()
                        local FakeLagAmmount = (Flags["MiscExtra_FakeLagAmmount"]:Get() / 7500) * FakeLagMultiplier
                        --
                        if (Tick - Atlanta.Locals.LastTick) < FakeLagAmmount then
                            sethiddenproperty(RootPart, "NetworkIsSleeping", false)
                            --
                            if Desync.Enabled then
                                RootPart.CFrame = Desync.Fake.CFrame or RootPart.CFrame
                                RootPart.Velocity = Desync.Fake.Velocity or RootPart.Velocity
                                RootPart.RotVelocity = Desync.Fake.RotVelocity or RootPart.RotVelocity
                            end
                            --
                            sethiddenproperty(RootPart, "NetworkIsSleeping", true)
                            --
                            FakeLagging = true
                        else
                            Atlanta.Locals.LastTick = Tick
                            --
                            sethiddenproperty(RootPart, "NetworkIsSleeping", false)
                            --
                            if Flags["MiscExtra_Return"]:Get() then
                                if Flags["MiscExtra_ReturnType"]:Get() == "Always" then
                                    Normal = true
                                else
                                    Normal = Random(1, 2) == 1
                                end
                            end
                        end
                    end
                    --
                    if Flags["MiscExtra_DisableNetworkingKey"]:Active() then
                        sethiddenproperty(RootPart, "NetworkIsSleeping", true)
                    end
                    --
                    if Desync.Enabled then
                        RootPart.CFrame = Normal and Desync.Real.CFrame or (Desync.Fake.CFrame or RootPart.CFrame)
                        RootPart.Velocity = Desync.Fake.Velocity or RootPart.Velocity
                        RootPart.RotVelocity = Desync.Fake.RotVelocity or RootPart.RotVelocity
                        --
                        Desync.Sent = RootPart.CFrame
                    end
                end
                --
                if (Tick - Atlanta.Locals.LastPreviewUpdate) > 0.05 then
                    Utility:ThreadFunction(Utility.UpdatePreview)
                    Atlanta.Locals.LastPreviewUpdate = Tick
                end
                --
                Utility:ThreadFunction(Visualisation.Update, "6x01", FakeLagging)
            end)
            --
            Utility:Connection(Players.PlayerAdded, function(Player)
                Atlanta:PlayerAdded(Player)
            end)
            --
            Utility:Connection(Client.CharacterAdded, function(Character)
                repeat Wait() until Character:FindFirstChildOfClass("Humanoid")
                local Humanoid = Character:FindFirstChildOfClass("Humanoid")
                --
                Movement:HandleHumanoid(Humanoid, "4x02")
                --
                Wait(0.5)
                --
                --Visualisation:CreateClone(Character)
            end)
            --
            Utility:Connection(Client.CharacterRemoving, function(Character)
                if Visualisation.Character then
                    for Index, Value in pairs(Visualisation.Character) do
                        Utility:RemoveInstance(Value)
                    end
                end
                --
                Visualisation.Character = nil
            end)
            --
            Utility:Connection(UserInputService.JumpRequest, function()
                if Flags["MiscMovement_Bunnyhop"]:Get() and (UserInputService:IsKeyDown(Enum.KeyCode.W) == false) and (UserInputService:IsKeyDown(Enum.KeyCode.A) or UserInputService:IsKeyDown(Enum.KeyCode.D)) and Movement.Velocity < Flags["MiscMovement_BunnyhopVelocity"]:Get() then
                    Movement.Velocity = Movement.Velocity + (Flags["MiscMovement_BunnyhopGains"]:Get() / 10)
                end
            end)
        end
        --[[
        do -- Hooks
            local NewIndex
            local Index
            --
            NewIndex = hookmetamethod(game, "__newindex", function(Self, Property, Value)
                if Self == Lighting and not checkcaller() and Atlanta.Locals.Lighting[Property] then
                    Visuals:Refresh()
                    --
                    Atlanta.Locals.Lighting[Property] = Value
                    --
                    return
                elseif Self == Index(Workspace, "CurrentCamera") and not checkcaller() then
                    if Property == "CFrame" then
                        if Flags["VisualsExtra_ThirdPersonKey"]:Active() then
                            Value = Value + Index(Workspace, "CurrentCamera").CFrame.LookVector * -Flags["VisualsExtra_ThirdPersonAmmount"]:Get()
                        end
                    elseif Property == "FieldOfView" then
                        Visuals:Refresh()
                        --
                        Atlanta.Locals.FieldOfView = Value
                        --
                        return
                    end
                end
                --
                return NewIndex(Self, Property, Value)
            end)
            --
            Index = hookmetamethod(game, "__index", function(Self, Property)
                if Self == Lighting and not checkcaller() and Atlanta.Locals.Lighting[Property] then
                    return Atlanta.Locals.Lighting[Property]
                elseif Self == Index(Workspace, "CurrentCamera") and not checkcaller() and Property == "FieldOfView" then
                    return Atlanta.Locals.FieldOfView
                end
                --
                return Index(Self, Property)
            end)
        end]]
        --
        local Object = Atlanta:GetCharacter(Client)
        --
        if Object then
            --Visualisation:CreateClone(Client.Character)
            --
            local Humanoid = Atlanta:GetHumanoid(Client, Object)
            --
            if Humanoid then
                Movement:HandleHumanoid(Humanoid)
            end
        end
    end
    --
    Window:Initialize()
    Utility:UpdatePreview(true)
    Config:Show()
    --
    --Library:SaveConfig()
end
-- // Main
