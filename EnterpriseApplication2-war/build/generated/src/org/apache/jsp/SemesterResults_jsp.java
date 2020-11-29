package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import QOBE.SemesterResults;

public final class SemesterResults_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<<html>\n");
      out.write("<head>\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\n");
      out.write("   <script src=\"ExportData.js\"></script>\n");
      out.write("  <style>\n");
      out.write("       .well\n");
      out.write("    {background-color: #d0d6e2;\n");
      out.write("    width:60%;\n");
      out.write("    height:auto;\n");
      out.write("    margin-left:38%;\n");
      out.write("    margin-top:1%;\n");
      out.write("    border: 3px solid #3F729B\n");
      out.write("    }\n");
      out.write("    body\n");
      out.write("    {\n");
      out.write("        background-color: #212121\n");
      out.write("    }\n");
      out.write("    .internal\n");
      out.write("    {\n");
      out.write("        background-color:white;\n");
      out.write("         border: 1px solid black\n");
      out.write("    }\n");
      out.write("  </style>\n");
      out.write("  <title>Results</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("  <div class=\"row content\">\n");
      out.write("     <div class=\"col-sm-9\"> \n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("          <div class=\"well\" align=\"center\" id=\"eval\">\n");
      out.write("              ");
 String[][] r=new String[5][3];
    SemesterResults rs=new SemesterResults();
    
      out.write("\n");
      out.write("              <br><br>\n");
      out.write("           <div class=\"internal\">\n");
      out.write("               <table class=\"table table-hover table-dark\" id=\"tb1\">       \n");
      out.write("               </table>\n");
      out.write("            <br>\n");
      out.write("   <button type=\"button\" class=\"btn btn-success\" id=\"inverted\" onclick=\"exportTableToExcel('tb1','1st Semester')\">Download</button></div>\n");
      out.write("               <br><br>\n");
      out.write("            <div class=\"internal\">\n");
      out.write("               <table class=\"table table-hover table-dark\" id=\"tb2\">\n");
      out.write("                   \n");
      out.write("             </table>\n");
      out.write("             <br>\n");
      out.write("   <button type=\"button\" class=\"btn btn-success\" id=\"inverted\" onclick=\"exportTableToExcel('tb2','2nd Semester')\">Download</button></div>\n");
      out.write("                <br><br>\n");
      out.write("                <div class=\"internal\">\n");
      out.write("               <table class=\"table table-hover table-dark\" id=\"tb3\">\n");
      out.write("                    \n");
      out.write("             </table>\n");
      out.write("                 <br>\n");
      out.write("   <button type=\"button\" class=\"btn btn-success\" id=\"inverted\" onclick=\"exportTableToExcel('tb3','3rd Semester')\">Download</button></div>\n");
      out.write("                 <br><br>\n");
      out.write("                 <div class=\"internal\">\n");
      out.write("               <table class=\"table table-hover table-dark\" id=\"tb4\">\n");
      out.write("                    \n");
      out.write("               </table>\n");
      out.write("                  <br>\n");
      out.write("   <button type=\"button\" class=\"btn btn-success\" id=\"inverted\" onclick=\"exportTableToExcel('tb4','4th Semester')\">Download</button></div>\n");
      out.write("                 \n");
      out.write("                  <br><br>\n");
      out.write("                  <div class=\"internal\">\n");
      out.write("               <table class=\"table table-hover table-dark\" id=\"tb5\">\n");
      out.write("                    \n");
      out.write("               </table>\n");
      out.write("                   <br>\n");
      out.write("   <button type=\"button\" class=\"btn btn-success\" id=\"inverted\" onclick=\"exportTableToExcel('tb5','5th Semester')\">Download</button></div>\n");
      out.write("                   <br><br>\n");
      out.write("                   <div class=\"internal\">\n");
      out.write("               <table class=\"table table-hover table-dark\" id=\"tb6\">\n");
      out.write("                    \n");
      out.write("               </table>\n");
      out.write("                    <br>\n");
      out.write("   <button type=\"button\" class=\"btn btn-success\" id=\"inverted\" onclick=\"exportTableToExcel('tb6','6th Semester')\">Download</button></div>\n");
      out.write("                    <br><br>\n");
      out.write("                    <div class=\"internal\">\n");
      out.write("               <table class=\"table table-hover table-dark\" id=\"tb7\">\n");
      out.write("                    \n");
      out.write("               </table></div>\n");
      out.write("                     <br><br>\n");
      out.write("                     <div class=\"internal\">\n");
      out.write("               <table class=\"table table-hover table-dark\" id=\"tb8\">\n");
      out.write("                    \n");
      out.write("               </table></div>\n");
      out.write("                     ");
 
                         String reg=request.getParameter("user");
                         
      out.write("\n");
      out.write("        <script>\n");
      out.write("            var tables=['tb1','tb2','tb3','tb4','tb5','tb6','tb7','tb8'];\n");
      out.write("            var row,col;\n");
      out.write("                           ");
 for(int i=0;i<6;i++){ 
      out.write("\n");
      out.write("                    \n");
      out.write("                        var table=document.getElementById(tables[");
      out.print(i);
      out.write("]);\n");
      out.write("            var header=['No.','Course','Grade','Semester'];\n");
      out.write("            row=table.insertRow(-1);\n");
      out.write("            for(j=0;j<4;j++)\n");
      out.write("            {\n");
      out.write("            col=row.insertCell(j);\n");
      out.write("             col.innerHTML=\"<b>\"+header[j]+\"</b>\";\n");
      out.write("            }\n");
      out.write("            ");
r=rs.getResults(reg,i+1); 
      out.write("\n");
      out.write("var col1,col2,col3,col4;\n");
      out.write("                ");
for(int j=0;j<5;j++) {
      out.write("\n");
      out.write("                  row=table.insertRow(-1);\n");
      out.write("                  col1=row.insertCell(0);\n");
      out.write("                  col2=row.insertCell(1);\n");
      out.write("                  col3=row.insertCell(2);\n");
      out.write("                  col4=row.insertCell(3);\n");
      out.write("                  col1.innerHTML=");
      out.print(j+1);
      out.write(";    \n");
      out.write("             col2.innerHTML='");
      out.print(r[j][1]);
      out.write("';\n");
      out.write("             col3.innerHTML='");
      out.print(r[j][2]);
      out.write("';\n");
      out.write("             col4.innerHTML='");
      out.print(r[j][0]);
      out.write("';\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                         \n");
      out.write("            </script>\n");
      out.write("                 </div>  \n");
      out.write("      </div>\n");
      out.write("       \n");
      out.write("         </div>\n");
      out.write("    </div>\n");
      out.write("         </div>\n");
      out.write("         </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
