<%@page import="appl.bean.*, wins.libs.*, appl.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*, java.io.File"%>
<%
response.setContentType("text/javascript");

String absPath = getServletContext().getRealPath(request.getServletPath());
absPath = absPath.substring(0, absPath.lastIndexOf(File.separatorChar) + 1);
String img_path = absPath + "\\imagensHelp\\";

File file = null;
File file_path = new File(img_path);
File[] file_list = file_path.listFiles();

StringBuffer output = new StringBuffer();
int file_quantity = file_list.length;
String result = "";

if (file_quantity > 0) {
    output.append("var tinyMCEImageList = new Array(\n");
    for (int i = 0; i < file_quantity; i++) {
        file = file_list[i];
        String file_name = file.getName();
        if (!file.isDirectory()) {
            //System.out.println("FILE: " + file);
            if (i == file_quantity-1) {
                output.append("    "+ "['" + file_name + "', '../imagensHelp/" + file_name + "'] \n");
            } else {
                output.append("    "+ "['" + file_name + "', '../imagensHelp/" + file_name + "'], \n");
            }
        }
    }
    output.append(");");
    result = output.toString();
    //System.out.println(output.toString());
}
%>
<%= result %>
