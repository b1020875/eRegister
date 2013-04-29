<html>
 <body>
  This is classes::index.gsp</br>

   <table
    <thead>
     <tr>
      <td>Course Name</td>
      <td>Class Name</td>
      <td>Instructor</td>
     </tr>
    </thead>
    <tbody>
     <g:each in="${ClassList}" var="c">
	<tr>
	 <td></td>
	 <td>${c.name)</td>
	 <td>${c.instructor.name}</td>
	</tr>
     </g:each>
    </tbody>
   </table>

 </body>
</html>
