package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import QOBE.getStudents;

public final class getStudents_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
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
      out.write("  </style>\n");
      out.write("  <title>Class Students</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("  <div class=\"row content\">\n");
      out.write("     <div class=\"col-sm-9\"> \n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("          <div class=\"well\" align=\"center\" id=\"eval\">\n");
      out.write("        \n");
      out.write("        ");

            getStudents s=new getStudents();
            int n=s.getNumberOfStudents();
            String[][] Name=new String[n][2];
      // String[] Reg_No=new String[n];   
        Name=s.getName();
       // Reg_No=s.getReg_No();
        
      out.write("\n");
      out.write("        <table class=\"table table-dark\" id=\"tb\">\n");
      out.write("            <thead>\n");
      out.write("            <th>No.</th>\n");
      out.write("            <th>Name</th>\n");
      out.write("            <th>Regestration Number</th>\n");
      out.write("            </thead>\n");
      out.write("  \n");
      out.write("</table>\n");
      out.write("        <script>\n");
      out.write("             var table = document.getElementById(\"tb\");  \n");
      out.write("             var row;\n");
      out.write("            ");
 for(int j=0;j<n;j++){ 
      out.write("\n");
      out.write("                row=table.insertRow(-1);\n");
      out.write("                var cell1=row.insertCell(0);\n");
      out.write("                var cell2=row.insertCell(1);\n");
      out.write("                var cell3=row.insertCell(2);\n");
      out.write("                cell1.innerHTML=");
      out.print(j+1 );
      out.write(";\n");
      out.write("                cell2.innerHTML='");
      out.print(Name[j][0]);
      out.write("';\n");
      out.write("                cell3.innerHTML='");
      out.print(Name[j][1]);
      out.write("';\n");
      out.write("                ");
}
      out.write("\n");
      out.write("                     \n");
      out.write("            </script>\n");
      out.write("            <br>\n");
      out.write("                    <br>\n");
      out.write("                 <button type=\"button\" class=\"btn btn-success\" id=\"inverted\" onclick=\"exportTableToExcel('tb','Students Enrolled')\">Download</button>\n");
      out.write("           </div>  \n");
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
