//: # Gig Poster - Practice Task 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![undertones-no-grid](undertones-no-grid.png "Undertones")
 ![undertones-with-grid](undertones-with-grid.png "Undertones")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let lightGrey = Color(hue: 84, saturation: 6, brightness: 88, alpha: 100)
let deepRed = Color(hue: 7, saturation: 97, brightness: 72, alpha: 100)

//// Begin your solution here...
//canvas.drawAxes()
////Move the origin 100 pixels right, 200 pixels up
//canvas.translate(to: Point(x:100, y:200))
//canvas.drawAxes()
////Draw a square at the origin
//canvas.drawRectangle(at: Point(x:0,y:0), width: 50, height: 50)
////Make shapes with no fill
//canvas.drawShapesWithFill=false
////Move the origin again, over 100, up 300
//canvas.translate(to: Point(x:100,y:300))
//canvas.drawAxes()
//
////Drawsix squares rotated around around current origin
//for _ in 1...6 {
//    canvas.rotate(by: 60)
//    canvas.drawRectangle(at: Point(x:0,y:0), width: 50, height: 50)
//}

//5

canvas.fillColor = lightGrey
canvas.drawRectangle(at: Point(x:0,y:0), width: 400, height: 600)
canvas.textColor = deepRed
canvas.drawText(message: "straight music presents", at: Point(x: 10, y: 550), size: 10)
canvas.drawText(message: "the undertones", at: Point(x: 10, y: 540), size: 10)
canvas.drawText(message: "with special guests", at: Point(x: 10, y: 525), size: 10)
canvas.drawText(message: "the chords", at: Point(x: 10, y: 515), size: 10)
canvas.drawText(message: "victoria hall hanley", at: Point(x: 150, y: 550), size: 10)
canvas.drawText(message: "stoke-on-trent, england", at: Point(x: 150, y: 540), size: 10)
canvas.drawText(message: "tuesday", at: Point(x: 150, y: 525), size: 10)
canvas.drawText(message: "june 5 1979 / 7:30 pm", at: Point(x: 150, y: 515), size: 10)
canvas.drawText(message: "advance tickets:£2.00", at: Point(x: 280, y: 550), size: 10)
canvas.drawText(message: "at the door:£2.50", at: Point(x: 280, y: 540), size: 10)

canvas.translate(to: Point(x:10,y:400))
//canvas.drawAxes()
//canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
//canvas.drawText(message: "undertones", at: Point(x:0,y:0), size: 65)

for n in 0...18 {
    let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100-5*n)
    canvas.textColor = black
    canvas.drawText(message: " undertones", at: Point(x:-14,y:-25), size: 70)
    canvas.rotate(by: Degrees(-5))
}


//canvas.translate(to: Point(x:0,y:0))
//for m in 1...7 {
//    canvas.drawLine(from: Point(x:m*50, y:0), to: Point(x:m*50, y: 600))
//}
//
//for n in 1...11 {
//    canvas.drawLine(from: Point(x:0,y:n*50), to: Point(x:400,y:n*50))
//}





/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multilple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

