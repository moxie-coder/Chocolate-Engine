package;

/**
	@author BeastlyGhost
	@see `https://github.com/Joalor64GH/ForeverUnderscore-backup`
**/
typedef LangDataDef =
{
	// MENUS
	var difficulties:Array<String>;
	var personalBest:String;

	// PAUSE MENU
	var pauseScoreTxt:String;
	var resumeSong:String;
	var restartSong:String;
	var gotoOptions:String;
	var exitFreeplay:String;
	var exitMenu:String;
	var deathsText:String;
	// HUD INFO BAR
	var scoreTxt:String;
	var missesTxt:String;
	var chocoTxt:String;
	// OTHER STUFF
	var useCustomFont:Bool;
	var fontPath:String;
	var fontKey:String;
}

/*
	a class used to set up typedefs for Game Localizations
	these are used by the game language option!
 */
class ChocoLocales
{
	public static var curLang:LangDataDef;

	inline public static function getLocale(language:String = 'english')
	{
		try {
			curLang = haxe.Json.parse(Paths.file('locales/$language/languageData.json'));
		}
		catch (e){
			trace('Something went wrong with getting lang file: ' + e.toString());
			// curLang = null;
		}
	}
}  
