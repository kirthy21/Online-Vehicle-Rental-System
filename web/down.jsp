<%  
  String filename =request.getParameter("id");
  String filepath = "C:\\Users\\online\\Desktop\\cars_1_1\\web\\images\\"; 
  response.setContentType("APPLICATION/OCTET-STREAM"); 
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\""); 

  java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath + filename);
		  
  int i; 
  while ((i=fileInputStream.read()) != -1) {
    out.write(i); 
  } 
  fileInputStream.close(); 
%> 