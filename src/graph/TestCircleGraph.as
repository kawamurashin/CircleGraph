/**
 * Created with IntelliJ IDEA.
 * User: shin
 * Date: 2014/07/27
 * Time: 10:12
 * To change this template use File | Settings | File Templates.
 */
package graph {
import flash.display.Sprite;
import flash.events.Event;
import flash.events.TimerEvent;
import flash.text.TextField;
import flash.utils.Timer;

public class TestCircleGraph extends Sprite{
    private var targetVolume:Number = 100;
    private var vVolume:Number = 0;
    private var circleGraph:CircleGraph;
    private var tf:TextField;
    public function TestCircleGraph() {
        if(stage)init(null);
        else addEventListener(Event.ADDED_TO_STAGE, init);
    }

    private function init(event:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE, init);
        //
        layout();
    }
    private function layout():void
    {

        tf = new TextField();
        addChild(tf);
        tf.text =" text";


        circleGraph = new CircleGraph();
        addChild(circleGraph);
        circleGraph.radius = 200;
        circleGraph.internalRadius = 60;
        circleGraph.x = 300;
        circleGraph.y = 300;
        circleGraph.volume = 100;
        circleGraph.draw();


        var timer:Timer =  new Timer(1200,1);
        timer.addEventListener(TimerEvent.TIMER_COMPLETE, completeHandler);
        timer.start();
    }

    private function completeHandler(event:TimerEvent):void {
        addEventListener(Event.ENTER_FRAME,enterFrameHandler);
    }

    private function enterFrameHandler(event:Event):void {
        targetVolume = 100 * stage.mouseX / stage.stageWidth;

        var dValue:Number = (targetVolume - circleGraph.volume) * 0.03;
        vVolume += dValue - 0.1* vVolume;

        circleGraph.volume += vVolume;
        circleGraph.draw();
        tf.text = "valume :" +  circleGraph.volume;
    }
}
}
