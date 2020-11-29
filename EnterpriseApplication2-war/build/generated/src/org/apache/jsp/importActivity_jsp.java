package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import QOBE.getActivities;

public final class importActivity_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("   ");
 System.setProperty("java.awt.headless", "false");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <title>Select Activity</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          ");
 getActivities a=new getActivities();
          int n=a.getNumOfActv();
             String[][] Activities=new String[n][5];
             Activities=a.getActivities(n);
          
      out.write("\n");
      out.write("          <Form method=\"post\" action=\"importActivity1\">\n");
      out.write("          <script>\n");
      out.write("         \n");
      out.write("        var n='");
      out.print(n);
      out.write("';\n");
      out.write("        var ActName=new Array();\n");
      out.write("         ");
  for(int j=0;j<n;j++) { 
      out.write("\n");
      out.write("              ActName[");
      out.print( j );
      out.write("] = '");
      out.print( Activities[j][1] );
      out.write("';\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("         var output=\"<select name='Activity'>\"+\"<option>\"+\"Select Activity\"+\"</option>\";\n");
      out.write("          for(j=0;j<n;j++)\n");
      out.write("                       {\n");
      out.write("                           output=output+\"<option>\"+ActName[j]+\"</option>\";\n");
      out.write("                       }\n");
      out.write("                       output=output+\"</select>\";\n");
      out.write("                       document.write(output);\n");
      out.write("                            </script>\n");
      out.write("                            <br>\n");
      out.write("                                <br>\n");
      out.write("                                    <br>\n");
      out.write("                                 <input type=\"file\" name=\"file\" accept=\".xlsx\" />\n");
      out.write("  <br>\n");
      out.write("      <br>\n");
      out.write("          <br>\n");
      out.write("                            <input type=\"submit\" value=\"Import\" name=\"SubmitButton\" />\n");
      out.write("                            </Form>\n");
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
