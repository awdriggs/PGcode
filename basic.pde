//global variable for the string
ArrayList<String> gcode;
String projectName = "test";
String version = "v1";

//print settings
float nozzleSize = 4; //all units in mm
float pathWidth = 4;
float layerHeight = 1.2; //from simplify3d Profile

//extrusion
float extrudedPathSection = pathWidht * layerHeight;
float filamentSection = PI * sq(nozzleSize/2.0f);

void setup(){
	println("working bro");
}

void draw(){

}

void startPrint(){

}

void endPrint(){
	gCommand("G91"
	gCommand("G90"); //absolute mode;
}

void gWrite(String command){
	gcode.add(command);
}

void gExport() {
	String fileName = projectName + version + ".gcode"; //name for the file, .g vs .gcode?
	String [] gcodeArray = gcode.toArray(new String[gcode.size()]); //save strings needs and array of text, not an arrayList
	saveStrings (fileName, gcodeArray);
}

float extrude(PVector p1, Pvector p2){
	float pointsDistance = dist(p1, p2);
	float volumeExtrudedPath = extrudedPathSection * pointsDistance;
	float lengthExtrudedPath = volumeExtrudedPath / filamentSection;
	return lengthExtrudedPath;
}
