package;

import flixel.FlxSprite;
import flixel.FlxG;

class WhyMenuState extends MusicBeatState
{
    var bg:FlxSprite;

    override function create()
        {
			//-----------------------------------------------------------//
			trace('Load the BG (Why) from SpongeBog');
			//-----------------------------------------------------------//  
            var bg:FlxSprite = new FlxSprite(-100).loadGraphic(Paths.image('whyMenu'));
		    bg.scrollFactor.x = 0;
		    bg.scrollFactor.y = 0.10;
		    bg.setGraphicSize(Std.int(bg.width * 1.1));
		    bg.updateHitbox();
		    bg.screenCenter();
		    bg.antialiasing = true;
		    add(bg);
        }

	override function update(elapsed:Float)
		{
			if (controls.ACCEPT)
				{
					FlxG.switchState(new MainMenuState());
					trace('Back to MainMenuState :)'); // ok funziona, wonderfull
					// (trace) = serve come per dire "Print", insomma,
					// nel terminale appare la scritta Desiderata
				}
		}

}