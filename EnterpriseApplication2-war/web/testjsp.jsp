

<%@page import="QOBE.CloPerformanceEvaluate"%>
<%@page import="QOBE.getStudents"%>
<%@page import="QOBE.getCLOs"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <input type="submit" value="CLick here" onclick="direct()" />
        <script>
            function direct()
            {
                var m=90;
                var p=5;
                var f=50;
                window.location="http://localhost:8080/EnterpriseApplication2-war/CompilResults.jsp?m="+m+"&p="+p+"&f="+f;
            }
            </script>
    </body>
</html>
