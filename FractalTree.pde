private double fractionLength = .8; 
private int smallestBranch = 4; 
private double branchAngle = .2;  
//private double endX1; 
//private double endX2; 

public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(025,25,112);   
	background(16,25,74);   
	stroke(255,255,255);      
	line(320,480,320,380);   

	drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here  
	double angle1;
	double angle2; 
	
	 //Initialize one to angle plus branchAngle
	angle1 = angle + branchAngle;
    //and the other to angle minus branchAngle
 	angle2 = angle - branchAngle;
	//reduce branchLength by multiplying it by fractionLength
	branchLength = branchLength * fractionLength;

	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);

	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);

	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);


//At the end of the drawBranches function write code so that if branchLength is larger than smallestBranch, drawBranches is called twice, once for each of the endpoints, e.g. (endX1,endY1). Be sure to use the two different angles for the two different branches. 
	if (branchLength> smallestBranch){
		drawBranches(endX1,endY1,branchLength,angle1);
		drawBranches(endX2,endY2,branchLength,angle2);
		}

} 


//i'm too behind to do this ;7;

// public void mouseMoved() {

//  double myX,myY;

//  myX= mouseX;
//  myY= mouseY;

	
//  redraw();
	
// }