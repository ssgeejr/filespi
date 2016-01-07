<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*,java.io.*" 
%>

<html>
<body>
<h2>Hello World!</h2>

<%
try{

File l_Directory = new File("/opt/software");
File[] l_files = l_Directory.listFiles();
for (int c = 0; c < l_files.length; c++) {
    if (! l_files[c].isDirectory()) {
//        a_folders.add(l_files[c].getName());
//        out.println(l_files[c].getName())
//    } else {
//        a_files.add(l_files[c].getName());
		out.println(l_files[c].getName() + "<br>");
    }
}





}catch(Exception ex){
	out.println("<font color=\"red\">");
	StackTraceElement[] ste = ex.getStackTrace();
	int counter = 0;
	out.println(ex.getMessage() + "<br>");
	while(counter < ste.length && counter < 15){
		out.println(ste[counter] + "<br>");
		counter++;
	}
	out.println("</font>");
}
%>


</body>
</html>
