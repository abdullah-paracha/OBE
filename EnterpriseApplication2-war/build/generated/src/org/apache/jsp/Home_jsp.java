package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import QOBE.getCourses;
import JavaPacakge.PasswordSet;
import JavaPacakge.LogIn1;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  <title>Home</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("   <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script> \n");
      out.write("  <script src=\"https://code.jquery.com/jquery-3.1.1.min.js\"></script>\n");
      out.write("<script src=\"https://code.highcharts.com/highcharts.js\"></script>\n");
      out.write("<script src=\"https://code.highcharts.com/highcharts-more.js\"></script>\n");
      out.write("<script src=\"https://code.highcharts.com/modules/exporting.js\"></script>\n");
      out.write("<script src=\"PloColumns.js\"></script>\n");
      out.write("  <style>\n");
      out.write("    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */\n");
      out.write("    .row.content {height: 550px}\n");
      out.write("    \n");
      out.write("    /* Set gray background color and 100% height */\n");
      out.write("    .well\n");
      out.write("    {background-color: #d0d6e2;\n");
      out.write("    height:200px;\n");
      out.write("    text-align: center\n");
      out.write("    }\n");
      out.write("     .well:hover {\n");
      out.write("  background-color:#616161; /* Green */\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("    /* Set gray background color and 100% height */\n");
      out.write("    .sidenav {\n");
      out.write("      background-color: #d0d6e2;\n");
      out.write("      height:200%\n");
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
      out.write("      <a class=\"navbar-brand\" href=\"#\">Student Management System</a>\n");
      out.write("    </div>\n");
      out.write("    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("        <li><a href=\"#\" onclick=\"UserInfo()\"><span class=\"glyphicon glyphicon-user\" id=\"RegNo\" ></span> </a></li>\n");
      out.write("         <li><a href=\"#\" onclick=\"Results()\"><span class=\"glyphicon glyphicon-duplicate\" id=\"RegNo\" ></span> Results</a></li>\n");
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
      out.write("      window.location = 'http://localhost:8080/EnterpriseApplication2-war/Index.html';\n");
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
      out.write("      <a class=\"navbar-brand\" href=\"#\">Semesters</a>\n");
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
      out.write("        <li ><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=1\" >1st Semester</a></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=2\">2nd Semester</a></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=3\">3rd Semester</a></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=4\">4th Semester</a></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=5\">5th Semester</a></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=6\">6th Semester</a></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=7\">7th Semester</a></li>\n");
      out.write("        <li><a href=\"\">8th Semester</a></li>\n");
      out.write("      </ul><br>\n");
      out.write("    </div>  \n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("        <div class=\"row cotent\">\n");
      out.write("            <div class=\"col-sm-12\">\n");
      out.write("                <div class=\"well\" style=\"height:auto\" id=\"plo\">\n");
      out.write("                    <script>\n");
      out.write("                        data=[66,72,57,88,52,81,43,70,92,84,60,59];\n");
      out.write("                        DrawPlos('plo',data);\n");
      out.write("                        </script>\n");
      out.write("                </div></div></div>\n");
      out.write("        <div class=\"row cotent\">\n");
      out.write("            <div class=\"col-sm-3\">\n");
      out.write("                <div class=\"well\">\n");
      out.write("                     <h2> 1</h2>\n");
      out.write("                <h2> Engineering Knowledge</h2>\n");
      out.write("            </div></div>\n");
      out.write("            <div class=\"col-sm-3  \">\n");
      out.write("                <div class=\"well\">\n");
      out.write("                     <h2>2</h2>\n");
      out.write("                <h2>Problem Analysis</h2>\n");
      out.write("            </div></div>\n");
      out.write("            <div class=\"col-sm-3 \">\n");
      out.write("                <div class=\"well\">\n");
      out.write("                     <h2>3</h2>\n");
      out.write("                <h2>Design/Dev of Solutions</h2>\n");
      out.write("            </div></div>\n");
      out.write("            <div class=\"col-sm-3 \">\n");
      out.write("                <div class=\"well\">\n");
      out.write("                     <h2>4</h2>\n");
      out.write("                <h2>Investigation</h2>\n");
      out.write("            </div></div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row cotent\">\n");
      out.write("            <div class=\"col-sm-3\">\n");
      out.write("                <div class=\"well\">\n");
      out.write("                     <h2>5</h2>\n");
      out.write("                <h2>Modern Tool Usage</h2>\n");
      out.write("            </div></div>\n");
      out.write("            <div class=\"col-sm-3  \">\n");
      out.write("                <div class=\"well\">\n");
      out.write("                     <h2>6</h2>\n");
      out.write("                <h2>The Engineer and Society</h2>\n");
      out.write("            </div></div>\n");
      out.write("            <div class=\"col-sm-3 \">\n");
      out.write("                <div class=\"well\">\n");
      out.write("                     <h2>7</h2>\n");
      out.write("                <h2>Environment and Sustainability</h2>\n");
      out.write("            </div></div>\n");
      out.write("            <div class=\"col-sm-3 \">\n");
      out.write("                <div class=\"well\">\n");
      out.write("                     <h2>8</h2>\n");
      out.write("                <h2>Ethics</h2>\n");
      out.write("            </div></div>\n");
      out.write("    </div>\n");
      out.write("               <div class=\"row cotent\">\n");
      out.write("            <div class=\"col-sm-3\">\n");
      out.write("                <div class=\"well\">\n");
      out.write("                     <h2>9</h2>\n");
      out.write("                <h2>Individual and Team Work</h2>\n");
      out.write("            </div></div>\n");
      out.write("            <div class=\"col-sm-3  \">\n");
      out.write("                <div class=\"well\">\n");
      out.write("                     <h2>10</h2>\n");
      out.write("                <h3>Communication</h3>\n");
      out.write("            </div></div>\n");
      out.write("            <div class=\"col-sm-3 \">\n");
      out.write("                <div class=\"well\">\n");
      out.write("                     <h2>11</h2>\n");
      out.write("                <h2>Project Management</h2>\n");
      out.write("            </div></div>\n");
      out.write("            <div class=\"col-sm-3 \">\n");
      out.write("                <div class=\"well\">\n");
      out.write("                     <h2>12</h2>\n");
      out.write("                <h2>Lifelong Learning</h2>\n");
      out.write("            </div></div>\n");
      out.write("    \n");
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
