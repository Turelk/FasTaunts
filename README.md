![fastaunts](https://github.com/Turelk/FasTaunter/assets/157890839/13ad65e7-b3c0-46ac-b2f5-4d07db62f90c)

FasTaunts is a Garry's mod addon, allowing fast chatting by using `math.random()` and `.json` files, 

which allows it to be simple lightweight addon.

[Demonstration Video](https://www.youtube.com/watch?v=79AUJ7hTk8w&ab_channel=Turelk)

# Features
- Derma GUI (BETA)

![Screenshot_20240211_140015](https://github.com/Turelk/FasTaunts/assets/157890839/d839620c-4594-418b-b18e-7becb3a624b0)

No logo for now :(
- Configuration
- Taunts stored in JSON files, what means you can create your own!
# Console Commands
- `fast_taunt <filename>` (Fast taunting)
- `fast_taunt_menu` (FasTaunt menu)
# Installing Via Workshop
1. Open workshop page
4. Click subscirbe
5. Subscribe to [Lua Patcher](https://steamcommunity.com/sharedfiles/filedetails/?id=2403043112) (wont work without it)
6. That's it!
# Installing Manualy
1. Download last version of FasTaunts from releases tab.
2. Extract to <your_garrysmod_path_here>/addons/
3. Subscribe/Install [Lua Patcher](https://steamcommunity.com/sharedfiles/filedetails/?id=2403043112) (wont work without it)
4. Enjoy!
# How to use
Step 1 - JSON Taunt files
In order to use FasTaunts you need to create taunt files in your `garrysmod/data/fast_taunt` folder
Here is example of a taunt file named `hello.json` content:

`{ "1":"Hi guys!", "2":"Hello mates!", "3":"Hi, everybody!", "4":"Hello" }`

Now you can use this taunt file like this: `fast_taunt hello`
# Interpretation.json
Interpretation.json file contains keys that must be replaced with it's values, if `Allow interpretation` is enabled.
Example:
`{ "hi":"hello", "hey":"hello"}`
Now you can use `hello.json` taunt file like this: `fast_taunt hi` or like this `fast_taunt hello`, or like this `fast_taunt hey`
