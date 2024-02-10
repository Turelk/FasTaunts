--Fast Taunt V2 By Turelk
--Please be advised, this file will not work! Use any other version instead
 math.randomseed(os.time())
concommand.Add( "fast_taunt", function( ply, cmd, args, str )
  command_argument = str
  taunt_argument = "table_".. str
  num = math.random(1,#taunt_argument)
  print(num)
  taunt = taunt_argument[num]
  print("Taunt Content: ".. taunt)
  RunConsoleCommand( "say", taunt)
end )

 table_yes = {
    [1] = "yep",
    [2] = "Sure",
    [3] = "Of course",
    [4] = "yeah",
    [5] = "Hell Yeah",
    [6] = "Yes",
    [7] = "Yay",
    [8] = "Da"
}
 table_no = {
    [1] = "nah",
    [2] = "Nope",
    [3] = "Never",
    [4] = "Hell no",
    [5] = "HECK NO",
    [6] = "no",
    [7] = "not",
    [8] = "Net",
    [9] = "I don't want to..."
}
 table_kinda = {
    [1] = "Kind off...",
    [2] = "Yeah... kinda",
    [3] = "Kinda",
    [4] = "Ahhh... well..."
}
 table_why = {
    [1] = "Why?",
    [2] = "what",
    [3] = "why",
    [4] = "For What?",
    [5] = "For reason?"
}
 table_okay = {
    [1] = "ok",
    [2] = "Okay",
    [3] = "Okay mate!"
}
 table_hi = {
    [1] = "Hello everyone!",
    [2] = "Hi guys!",
    [3] = "Hello mates!",
    [4] = "Hello!"
}
 table_bye = {
    [1] = "Goodbye!",
    [2] = "Have a good day!",
    [3] = "Bye guys!",
    [4] = "Ok, i gotta go."
}
 table_idk = {
    [1] = "idk",
    [2] = "I don't know",
    [3] = "I don' know",
    [4] = "I have no idea"
}
 table_suck = {
    [1] = "This is baaad!",
    [2] = "No, fiddlesticks! What Now?",
    [3] = "dammn' it",
    [4] = "shit"
}
 table_sorry = {
    [1] = "I'm sorry",
    [2] = "Excuse me",
    [3] = "Oh I'm sorry",
    [4] = "sorry",
    [5] = "dammnt sorry"
}
 table_taunt = {
    [1] = "Thanks fer standin' still, wanker!",
    [2] = "My pröffesional opinion? Haha You're dead!",
    [3] = "Is it all you have got?",
    [4] = "Good job",
    [5] = "Oops! Zat vas not Medizin!",
    [6] = "You got blood on my suit"
}
