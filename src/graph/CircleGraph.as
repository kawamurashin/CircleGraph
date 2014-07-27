/**
 * Created with IntelliJ IDEA.
 * User: shin
 * Date: 2014/07/27
 * Time: 10:07
 * To change this template use File | Settings | File Templates.
 */
package graph {
import flash.display.Graphics;

public class CircleGraph extends Graph{
    public function CircleGraph() {
    }
    override protected function layout():void
    {
        super.layout();

    }
    public function draw():void
    {
        var i:int = 0;
        var n:uint;
        var theta:Number;

        var g:Graphics = container.graphics;
        g.clear();
        g.beginFill(_color);


        var value:int = volume * 10;
        var max_value:uint = MAX_VOLUME * 10;
        if(value > max_value)
        {
            value = max_value;
        }
        else if(value < 0)
        {
            value = 0;
        }

        if(value == max_value)
        {
            g.drawCircle(0,0,_radius);
            g.drawCircle(0,0,_internalRadius)
        }
        else if(volume == 0)
        {

        }
        else
        {
            theta = setTheta (0 ,max_value);

            g.moveTo(_radius*Math.cos(theta),_radius*Math.sin(theta));
            n = value;
            for(i=0;i<n;i++)
            {
                theta = setTheta (i ,max_value);
                g.lineTo(_radius*Math.cos(theta),_radius*Math.sin(theta));
            }
            //内径へ
            g.lineTo(_internalRadius*Math.cos(theta),_internalRadius*Math.sin(theta));
            n = value;
            /**/
            for(i=n-1;i >= 0;i--)
            {
                theta = setTheta (i ,max_value);
                g.lineTo(_internalRadius*Math.cos(theta),_internalRadius*Math.sin(theta));
            }
            theta = setTheta (0 ,max_value);
            g.lineTo(_radius*Math.cos(theta),_radius*Math.sin(theta));
        }


    }
    private function setTheta(value:Number , max_value:Number = 1000):Number
    {
         var theta:Number = 2*Math.PI *(value/max_value) - 0.5* Math.PI;
        return theta
    }
}
}
