//global variable for the string
ArrayList<String> gcode;
String projectName = "test";
String version = "v1";

void setup(){

}

void draw(){

}

void gCommand(String command){
	gcode.add(command);
}

void gExport() {
	String fileName = projectName + version + ".gcode"; //name for the file, .g vs .gcode?
	String [] gcodeArray = gcode.toArray(new String[gcode.size()]); //save strings needs and array of text, not an arrayList
	saveStrings (fileName, gcodeArray);
}
