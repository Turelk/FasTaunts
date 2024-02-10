--Fast Taunt V1 By Turelk
 math.randomseed(os.time())
 num = math.random(1,#table1)
 table1 = {
    [1] = "Thanks fer standin' still, wanker!",
    [2] = "My pröffesional opinion? Haha You're dead!",
    [3] = "weak",
    [4] = "Is it all you have got?",
    [5] = "Good job",
    [6] = "Oops! Zat vas not Medizin!",
}
print("Taunt Content: ".. table1[num])
taunt = table1[num]
RunConsoleCommand( "say", taunt )

