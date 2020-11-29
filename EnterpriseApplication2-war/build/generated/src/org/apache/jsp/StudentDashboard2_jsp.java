package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import QOBE.getCourses;
import JavaPacakge.PasswordSet;
import JavaPacakge.LogIn1;

public final class StudentDashboard2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <title>Student Dashboard</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("   <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script> \n");
      out.write("  <style>\n");
      out.write("    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */\n");
      out.write("    .row.content {height: 550px}\n");
      out.write("    \n");
      out.write("    /* Set gray background color and 100% height */\n");
      out.write("    .well\n");
      out.write("    {background-color: #d0d6e2;}\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    /* Set gray background color and 100% height */\n");
      out.write("    .sidenav {\n");
      out.write("      background-color: #d0d6e2;\n");
      out.write("      height:110%\n");
      out.write("    }\n");
      out.write("        \n");
      out.write("    /* On small screens, set height to 'auto' for the grid */\n");
      out.write("    @media screen and (max-width: 767px) {\n");
      out.write("      .row.content {height: auto;} \n");
      out.write("    }\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");

        PasswordSet ps=new PasswordSet();
        int ch=ps.PassSet;
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            var ch=");
      out.print(ch);
      out.write(";\n");
      out.write("            if (ch===1)\n");
      out.write("                alert(\"Changes Saved\");\n");
      out.write("                    ");
ps.PassSet=0;
      out.write("\n");
      out.write("            </script>\n");
      out.write("    <nav class=\"navbar navbar-inverse\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <a class=\"navbar-brand\" href=\"http://localhost:8080/EnterpriseApplication2-war/Home.jsp\">Student Management System</a>\n");
      out.write("    </div>\n");
      out.write("    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("        <li><a href=\"#\" onclick=\"UserInfo()\"><span class=\"glyphicon glyphicon-user\" id=\"RegNo\" ></span> </a></li>\n");
      out.write("        <li><a href=\"#\" onclick=\"Results()\"><span class=\"glyphicon glyphicon-duplicate\" id=\"RegNo\" ></span> Results</a></li>\n");
      out.write("      <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/ChangePass.html\"><span class=\"glyphicon glyphicon-cog\"></span> Change Password</a></li>\n");
      out.write("      <li><a href=\"#\" onclick=\"logout()\"><span class=\"glyphicon glyphicon-log-out\"></span> Logout</a></li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("    ");
 LogIn1 li=new LogIn1();
        String reg_no;
        reg_no=li.Reg; 
      out.write("\n");
      out.write("            <script>\n");
      out.write("                var RegNo='");
      out.print(reg_no );
      out.write("';\n");
      out.write("                var na=document.getElementById(\"RegNo\");\n");
      out.write("                na.innerHTML=\" \"+\"<h7>\"+RegNo+\"</h7>\";\n");
      out.write("                function logout()\n");
      out.write("                {\n");
      out.write("                    alert(\"Are You Sure You want to LogOut\");\n");
      out.write("                  //  function preventBack() { window.history.forward(); }\n");
      out.write("        ");
//response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
      out.write(";\n");
      out.write("      window.location = 'http://localhost:8080/EnterpriseApplication2-war/index.html';\n");
      out.write("                }\n");
      out.write("                function UserInfo()\n");
      out.write("                {\n");
      out.write("                    window.location='http://localhost:8080/EnterpriseApplication2-war/UserInfo.jsp?user='+RegNo;\n");
      out.write("                }\n");
      out.write("                function Results()\n");
      out.write("                {\n");
      out.write("                    window.location='http://localhost:8080/EnterpriseApplication2-war/SemesterResults.jsp?user='+RegNo;\n");
      out.write("                }\n");
      out.write("                </script>\n");
      out.write("<nav class=\"navbar navbar-inverse visible-xs\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>                        \n");
      out.write("      </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"#\">Logo</a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"active\"><a href=\"#\">1st Semester</a></li>\n");
      out.write("        <li><a href=\"#\">2nd Semester</a></li>\n");
      out.write("        <li><a href=\"#\">3rd Semester</a></li>\n");
      out.write("        <li><a href=\"#\">4th Semester</a></li>\n");
      out.write("        <li><a href=\"#\">5th Semester</a></li>\n");
      out.write("        <li><a href=\"#\">6th Semester</a></li>\n");
      out.write("        <li><a href=\"#\">7th Semester</a></li>\n");
      out.write("        <li><a href=\"#\">8th Semester</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("  <div class=\"row content\">\n");
      out.write("    <div class=\"col-sm-2 sidenav hidden-xs\">\n");
      out.write("      <h2>Semester</h2>\n");
      out.write("      <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("          <li ><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=1\" >1st Semester</a></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=2\">2nd Semester</a></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=3\">3rd Semester</a></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=4\">4th Semester</a></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=5\">5th Semester</a></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=6\">6th Semester</a></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=7\">7th Semester</a></li>\n");
      out.write("        <li><a href=\"\">8th Semester</a></li>\n");
      out.write("      </ul><br>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("          \n");
      out.write("\n");
      out.write("      <div class=\"well\">\n");
      out.write("        <h1>Software Engineering Department</h1>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("          <div class=\"well\">\n");
      out.write("             <h3>Subjects</h3>\n");
      out.write("  <table class=\"table table-sm table-dark\" id=\"tb1\">\n");
      out.write("  <thead>\n");
      out.write("    <tr>\n");
      out.write("      <th scope=\"col\">#</th>\n");
      out.write("      <th scope=\"col\">Name</th>\n");
      out.write("      <th scope=\"col\">Course Code</th>\n");
      out.write("      <th scope=\"col\">Credit Hours</th>\n");
      out.write("       \n");
      out.write("    </tr>\n");
      out.write("  </thead>\n");
      out.write("  <tbody>\n");
      out.write("  </tbody>\n");
      out.write("     ");

          int Sem=Integer.parseInt(request.getParameter("semester"));
      String[][] co=new String[5][3];
       getCourses cour=new getCourses();
    co=cour.getCourses(Sem);
      
      out.write("\n");
      out.write("  <script>\n");
      out.write("      var table = document.getElementById(\"tb1\");  \n");
      out.write("             var row;\n");
      out.write("            ");
 for(int j=0;j<5;j++){ 
      out.write("\n");
      out.write("                row=table.insertRow(-1);\n");
      out.write("                var cell1=row.insertCell(0);\n");
      out.write("                var cell2=row.insertCell(1);\n");
      out.write("                var cell3=row.insertCell(2);\n");
      out.write("                var cell4=row.insertCell(3);\n");
      out.write("                cell1.innerHTML=");
      out.print(j+1 );
      out.write(";\n");
      out.write("                cell2.innerHTML=\"<a href='http://localhost:8080/EnterpriseApplication2-war/SubjectReport.jsp?atten=75'>\"+'");
      out.print(co[j][0]);
      out.write("'+\"</a>\";\n");
      out.write("                cell3.innerHTML='");
      out.print(co[j][1] );
      out.write("';\n");
      out.write("                cell4.innerHTML=");
      out.print(co[j][2] );
      out.write(";\n");
      out.write("                ");
}
      out.write("\n");
      out.write("      \n");
      out.write("  </script>\n");
      out.write("</table>\n");
      out.write("          </div>\n");
      out.write("        </div>  \n");
      out.write("      </div>\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("          <div class=\"well\">\n");
      out.write("              <h2>Footer</h2>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
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
