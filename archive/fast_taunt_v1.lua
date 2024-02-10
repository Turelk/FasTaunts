--Fast Taunt V1 By Turelk
 math.randomseed(os.time())
 num = math.random(1,#table1)
 table1 = {
    [1] = "Thanks fer standin' still, wanker!",
    [2] = "you suck",
    [3] = "My pröffesional opinion? Haha You're dead!",
    [4] = "weak",
    [5] = "Is it all you have got?",
    [6] = "Good job",
    [7] = "You are so powerfull lol.",
    [8] = "Oops! Zat vas not Medizin!",
    [9] = "You even held weapon before?",
    [10] = "That was bad...",
}
print("Taunt Content: ".. table1[num])
taunt = table1[num]
RunConsoleCommand( "say", taunt )

