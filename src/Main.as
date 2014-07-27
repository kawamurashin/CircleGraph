package {

import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;
[SWF( frameRate = "60")]
public class Main extends Sprite {
    public function Main() {
        if(stage)init(null);
        else addEventListener(Event.ADDED_TO_STAGE,init);
    }

    private function init(event:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE,init);
        //
        layout();
    }

    private function layout():void {
        stage.align = StageAlign.TOP_LEFT;
        stage.scaleMode = StageScaleMode.NO_SCALE;
        var viewManager:ViewManager = new ViewManager();
        addChild(viewManager);

    }
}
}
