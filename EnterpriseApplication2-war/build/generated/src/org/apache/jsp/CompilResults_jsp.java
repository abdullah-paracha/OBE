package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import QOBE.getStudents;
import QOBE.CompileResult;

public final class CompilResults_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script> \n");
      out.write("  <script src=\"https://code.jquery.com/jquery-3.1.1.min.js\"></script>\n");
      out.write("  <script src=\"https://code.highcharts.com/highcharts.js\"></script>\n");
      out.write("<script src=\"https://code.highcharts.com/modules/exporting.js\"></script>\n");
      out.write("<script src=\"https://code.highcharts.com/highcharts-more.js\"></script>\n");
      out.write("<script src=\"https://code.highcharts.com/modules/export-data.js\"></script>\n");
      out.write("  <script src=\"CompileResult.js\"></script>\n");
      out.write("  <style>\n");
      out.write("       .well\n");
      out.write("    {background-color: #d0d6e2;\n");
      out.write("    width:100%;\n");
      out.write("    height:auto;\n");
      out.write("    margin-left:18%;\n");
      out.write("    margin-top:1%;\n");
      out.write("    border: 3px solid #3F729B\n");
      out.write("    }\n");
      out.write("    body\n");
      out.write("    {\n");
      out.write("        background-color: #212121\n");
      out.write("    }\n");
      out.write("  </style>\n");
      out.write("  <title>Compile Results</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");
CompileResult cr=new CompileResult();
        getStudents st=new getStudents();
        int numSt=st.getNumberOfStudents();
        String[] reg=new String[numSt];
         reg=st.getReg_No();
          double[] total= new double[numSt];
          String[] Grades=new String[numSt];
        for(int i=0;i<numSt;i++){
         total[i]= cr.getTotaEvaluation(reg[i]);
         // System.out.print(reg[i]);
        //System.out.print(total[i]);
        }
         Grades=cr.getGrades(90.0,5.0,50.0,total);
        for(int i=0;i<numSt;i++){
           // System.out.println(Grades[i]);
        }
        int[] data=new int[10];
       data=cr.getPlaotData(Grades);
          for(int i=0;i<10;i++){
             System.out.println(data[i]);
          }
        
      out.write("\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("  <div class=\"row content\">\n");
      out.write("     <div class=\"col-sm-9\"> \n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("          <div class=\"well\" align=\"center\" id=\"eval\">\n");
      out.write("              <script>\n");
      out.write("                   updateResults();\n");
      out.write("                    \n");
      out.write("             function replaceValues()\n");
      out.write("             {\n");
      out.write("                 var m=document.getElementById(\"ex1\").value;\n");
      out.write("                  var p=document.getElementById(\"ex2\").value;\n");
      out.write("                  var f=document.getElementById(\"ex3\").value;\n");
      out.write("                 window.location.replace(\"http://localhost:8080/EnterpriseApplication2-war/CompilResults.jsp?m=\"+m+\"&p=\"+p+\"&f=\"+f);\n");
      out.write("   window.open(\"http://localhost:8080/EnterpriseApplication2-war/CompileResult1.jsp?m=\"+m+\"&p=\"+p+\"&f=\"+f,'_blank');\n");
      out.write("               updateResults();\n");
      out.write("             }\n");
      out.write("             function updateResults()\n");
      out.write("             {\n");
      out.write("              \n");
      out.write("                 ");
int m=Integer.parseInt(request.getParameter("m"));
                 int p=Integer.parseInt(request.getParameter("p"));
                 int f=Integer.parseInt(request.getParameter("f"));
                 double m1=1.0*m;
                 double p1=1.0*p;
                 double f1=1.0*f;
                 Grades=cr.getGrades(m1, p1, f1,total);
                 data=cr.getPlaotData(Grades);
                 for(int i=0;i<10;i++)
                 System.out.println(data[i]);
                 
      out.write("\n");
      out.write("                         var data=new Array();\n");
      out.write("                       ");
for(int i=0;i<10;i++){ 
      out.write("\n");
      out.write("                                    data[");
      out.print(i );
      out.write(']');
      out.write('=');
      out.print(data[i]);
      out.write("\n");
      out.write("                                    ");
}
      out.write("\n");
      out.write("             DrawResults('eval',data); \n");
      out.write("  window.open(\"http://localhost:8080/EnterpriseApplication2-war/CompileResult1.jsp?m=\"+m+\"&p=\"+p+\"&f=\"+f,'_blank');\n");
      out.write("\n");
      out.write("             \n");
      out.write("             }\n");
      out.write("                  </script>\n");
      out.write("                   <br>\n");
      out.write("         \n");
      out.write("             <button type=\"button\" class=\"btn btn-primary\" id=\"plain\" onclick=\"PlainUpdate()\">Plain</button>\n");
      out.write("                  &nbsp &nbsp &nbsp\n");
      out.write("                  <button type=\"button\" class=\"btn btn-success\" id=\"inverted\" onclick=\"InvertedUpdate()\">Inverted</button>\n");
      out.write("                  &nbsp &nbsp &nbsp\n");
      out.write("                  <button type=\"button\" class=\"btn btn-warning\" id=\"polar\" onclick=\"PolarUpdate()\">Polar</button>\n");
      out.write("                   <br>\n");
      out.write("             <br>\n");
      out.write("              <br>\n");
      out.write("             <br>\n");
      out.write("                  <div class=\"form-group row\">\n");
      out.write("  <div class=\"col-xs-2\">\n");
      out.write("    <label for=\"ex1\">Max Grade</label>\n");
      out.write("    <input class=\"form-control\" id=\"ex1\" type=\"text\" >\n");
      out.write("  </div>                 \n");
      out.write("  <div class=\"col-xs-2\">\n");
      out.write("    <label for=\"ex2\">Garding Patch</label>\n");
      out.write("    <input class=\"form-control\" id=\"ex2\" type=\"text\" >\n");
      out.write("  </div>\n");
      out.write("  <div class=\"col-xs-2\">\n");
      out.write("    <label for=\"ex3\">Passing Threshold</label>\n");
      out.write("    <input class=\"form-control\" id=\"ex3\" type=\"text\" >\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("             <br>\n");
      out.write("             <br>\n");
      out.write("             \n");
      out.write(" <button type=\"button\" class=\"btn btn-primary\"  onclick=\"replaceValues()\">Compile</button>\n");
      out.write("                             </div>  \n");
      out.write("      </div>\n");
      out.write("       \n");
      out.write("         </div>\n");
      out.write("    </div>\n");
      out.write("         </div>\n");
      out.write("         </div>\n");
      out.write("    \n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
