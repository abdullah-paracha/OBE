package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import QOBE.UserInfo;

public final class UserInfo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<<html>\n");
      out.write("<head>\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\n");
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
      out.write("  <title>User Info</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("  <div class=\"row content\">\n");
      out.write("     <div class=\"col-sm-9\"> \n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("          <div class=\"well\" align=\"center\" id=\"eval\">\n");
      out.write("        <h1>User Info</h1>\n");
      out.write("         <table class=\"table table-hover table-dark\" id=\"tb\">\n");
      out.write("             </table>\n");
      out.write("             ");
 
                 String user=request.getParameter("user");
                 String[] Uinfo=new String[7];
                 UserInfo ui=new UserInfo();
             Uinfo=ui.getUserInfo(user);
             
      out.write("\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("           var data=[\"Name\",\"Registration No.\",\"Department\",\"Email\",\"Phone\",\"Semester\",\"Session\"];\n");
      out.write("           var table = document.getElementById(\"tb\"); \n");
      out.write("             var row;\n");
      out.write("             var col,col1;\n");
      out.write("             ");
 for(int i=0;i<7;i++){ 
      out.write("\n");
      out.write("                 row=table.insertRow(-1);\n");
      out.write("                 col=row.insertCell(0);\n");
      out.write("                  col1=row.insertCell(1);\n");
      out.write("                 col.innerHTML=\"<b>\"+data[");
      out.print(i);
      out.write("]+\"</b>\";\n");
      out.write("             col1.innerHTML='");
      out.print(Uinfo[i]);
      out.write("';\n");
      out.write("             ");
}
      out.write("\n");
      out.write("            </script>\n");
      out.write("                            \n");
      out.write("                             </div>  \n");
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
