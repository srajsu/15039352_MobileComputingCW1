import UIKit

class DragImage: UIImageView {
    
    var w :CGFloat=0.0//
    var h :CGFloat=0.0//
    var yAxis:CGFloat=0.0// hold the y-axis location
    var xAxis:CGFloat=0.0// hold the x-axis location
    var halfImageH:CGFloat = 0.0
    var halfImageW:CGFloat = 0.0
    var frameMaxH:CGFloat = 0.0
    var frameMaxW:CGFloat = 0.0
    
    var startLocation:CGPoint?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        startLocation=touches.first?.location(in: self)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let currentLocation=touches.first?.location(in: self)
        let dx=currentLocation!.x-startLocation!.x
        let dy=currentLocation!.y-startLocation!.y
        halfImageH=self.frame.size.height/2//get half image height
        halfImageW=self.frame.size.width/2//get half image width
        frameMaxW = (self.superview?.bounds.size.width)!//get parent view maximum width
        frameMaxH = (self.superview?.bounds.size.height)!//get parent view maximum height
        
        if (self.center.y+dy<halfImageH)//checks for the minimum parent view height bound
        {//true..
            yAxis=halfImageH}//location = half image size
            
        else if(self.center.y+dy>(frameMaxH-halfImageH))//check fot the maximum parent view height bound
        {
            yAxis=frameMaxH-halfImageH  }//location = maximum height minus the half image size
        else {//
            yAxis=self.center.y+dy//image is within boundaries
        }
        
        
        if (self.center.x+dx<halfImageW)//checks for the minimum parent view width bound
        {//true..
            xAxis=halfImageW}//location = half image size
            
        else if(self.center.x+dx>(frameMaxW-halfImageW))//check fot the maximum parent view width bound
        {
            xAxis=frameMaxW-halfImageW  }//location = maximum width minus the half image size
        else {//
            xAxis=self.center.x+dx//image is within boundaries
        }
        
        self.center=CGPoint(x:xAxis, y:yAxis)//drag image to locations
    }
}

