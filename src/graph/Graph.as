/**
 * Created with IntelliJ IDEA.
 * User: shin
 * Date: 2014/07/27
 * Time: 10:08
 * To change this template use File | Settings | File Templates.
 */
package graph{

import flash.display.Sprite;
import flash.events.Event;


public class Graph extends Sprite{

    protected const MAX_VOLUME:uint = 100;
    public var volume:Number = 100;
    protected var _radius:uint = 200;
    protected var _internalRadius:uint = 60;
    protected var container:Sprite;
    protected var _color:uint = 0;

    public function Graph() {
        if(stage)init(null);
        else addEventListener(Event.ADDED_TO_STAGE,init);
    }
    public function start():void
    {

    }
    public  function  stop():void
    {

    }


    private function init(event:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE,init);
        //
        layout();
    }

    protected function layout():void {
        container = new Sprite();
        addChild(container);

    }

    public function set radius(value:uint):void {
        _radius = value;
    }

    public function set color(value:uint):void {
        _color = value;
    }

    public function set internalRadius(value:uint):void {
        _internalRadius = value;
    }
}
}
