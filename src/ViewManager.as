/**
 * Created with IntelliJ IDEA.
 * User: shin
 * Date: 2014/07/27
 * Time: 10:01
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.Sprite;
import flash.events.Event;
import flash.text.TextField;

import graph.CircleGraphManager;

import mx.core.FlexTextField;

public class ViewManager extends Sprite{
    private var circle:CircleGraphManager;
    public function ViewManager() {
        if(stage)init(null);
        else addEventListener(Event.ADDED_TO_STAGE,init);
    }

    private function init(event:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE,init);
        //
        layout();
    }

    private function layout():void {


        circle = new CircleGraphManager();
        addChild(circle);


    }
}
}
