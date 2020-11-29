package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import JavaPacakge.LogIn1;
import QOBE.getStudents;
import QOBE.SSActivityMarks1;
import QOBE.getActivities;

public final class PersonalResult_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html >\n");
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
      out.write("    <script src=\"MinMaxColumns.js\"></script>\n");
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
      out.write("   <title>Activity Result</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
 double Marks;
double min=0,max=0,avg,sum=0,temp;
           String[] cloP;
               String str=request.getParameter("activity");
          SSActivityMarks1 m=new  SSActivityMarks1();
          String[] clos=m.getCLOs(str);
       int i=clos.length;
       getStudents st=new getStudents();
       int NumSt=st.getNumberOfStudents();
       String[] students=st.getReg_No();
       for(int j=0;j<NumSt;j++)
       {
          temp=m.getMarks(students[j],str);
          sum=sum+temp;
          if(max<temp)
              max=temp;
          if (j==0)
              min=temp;
          if(min>temp)
              min=temp;
       }
       avg=sum/NumSt;
       LogIn1 user=new LogIn1();
       String reg=user.Reg;
      Marks=m.getMarks(reg,str);
      cloP=m.getCloPercentage(reg,str,clos,i); 

      out.write("\n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("  <div class=\"row content\">\n");
      out.write("     <div class=\"col-sm-9\"> \n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("          <div class=\"well\" align=\"center\" id=\"eval\">\n");
      out.write(" <script>\n");
      out.write("                  var data=new Array();\n");
      out.write("                  data[0]=");
      out.print(max );
      out.write(";\n");
      out.write("                  data[1]=");
      out.print(avg );
      out.write(";\n");
      out.write("                  data[2]=");
      out.print(min );
      out.write(";\n");
      out.write("                  data[3]=");
      out.print(Marks );
      out.write(";\n");
      out.write("                  var data1=[10,6,9,4,5,6,7,8,9,1];\n");
      out.write("                  var activity='");
      out.print(str );
      out.write("';\n");
      out.write("                  DrawRe('eval',data,activity); \n");
      out.write("                  </script>\n");
      out.write("                  <br> \n");
      out.write("             <button type=\"button\" class=\"btn btn-primary\" id=\"plain\" onclick=\"PlainUpdate()\">Plain</button>\n");
      out.write("                  &nbsp &nbsp &nbsp\n");
      out.write("              <button type=\"button\" class=\"btn btn-success\" id=\"inverted\" onclick=\"InvertedUpdate()\">Inverted</button>\n");
      out.write("                  &nbsp &nbsp &nbsp\n");
      out.write("              <button type=\"button\" class=\"btn btn-warning\" id=\"polar\" onclick=\"PolarUpdate()\">Polar</button>\n");
      out.write("             <br>\n");
      out.write("              <br>\n");
      out.write("                <table class=\"table table-dark\" id=\"tb\">\n");
      out.write("</table>\n");
      out.write("  <script>\n");
      out.write("       var table = document.getElementById(\"tb\");  \n");
      out.write("        var header=table.createTHead();\n");
      out.write("        var Hrow = header.insertRow(0); \n");
      out.write("  var cell1 = Hrow.insertCell(0);\n");
      out.write("  var cell2 = Hrow.insertCell(1);\n");
      out.write("  var cell3 = Hrow.insertCell(2);\n");
      out.write("    var cell4 = Hrow.insertCell(3);\n");
      out.write("  cell1.innerHTML =\"<b>\"+\"Max Marks\"+\"</b>\";\n");
      out.write("  cell2.innerHTML = \"<b>\"+\"Average Marks\"+\"</b>\";\n");
      out.write("  cell3.innerHTML = \"<b>\"+\"Min Marks\"+\"</b>\";\n");
      out.write("    cell4.innerHTML = \"<b>\"+\"Your Marks\"+\"</b>\";\n");
      out.write("  \n");
      out.write("    var col;\n");
      out.write("     \n");
      out.write("      var clo;\n");
      out.write("      var c=");
      out.print(i);
      out.write(";\n");
      out.write("      \n");
      out.write("       ");
 for(int j=0;j<i;j++){
      out.write("\n");
      out.write("          \n");
      out.write("         \n");
      out.write("                  clo='");
      out.print(clos[j]);
      out.write("';\n");
      out.write("               \n");
      out.write("           col = Hrow.insertCell(");
      out.print(j+4);
      out.write(");\n");
      out.write("          col.innerHTML=\"<b>\"+clo+\"</b>\";;\n");
      out.write(" ");
}
      out.write("\n");
      out.write("           \n");
      out.write("        var row = table.insertRow(-1);\n");
      out.write("  var Max = row.insertCell(0);\n");
      out.write("  var Avrage = row.insertCell(1);\n");
      out.write("  var Min = row.insertCell(2);\n");
      out.write("  var Marks=row.insertCell(3);\n");
      out.write("   Max.innerHTML=data[0];\n");
      out.write("   Avrage.innerHTML=data[1];\n");
      out.write("   Min.innerHTML=data[2];\n");
      out.write("   Marks.innerHTML=data[3];\n");
      out.write("  ");
 for(int k=0;k<i;k++){
      out.write("\n");
      out.write("                  clo='");
      out.print(cloP[k]);
      out.write("';\n");
      out.write("               \n");
      out.write("           col = row.insertCell(");
      out.print(k+4);
      out.write(");\n");
      out.write("           col.innerHTML='");
      out.print(cloP[k]+"%");
      out.write("';;\n");
      out.write(" ");
}
      out.write("\n");
      out.write(" \n");
      out.write("      </script>\n");
      out.write("  \n");
      out.write("          </div>  \n");
      out.write("      </div>\n");
      out.write("       \n");
      out.write("         </div>\n");
      out.write("    </div>\n");
      out.write("         </div>\n");
      out.write("         </div>\n");
      out.write("\n");
      out.write("</body>\n");
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
