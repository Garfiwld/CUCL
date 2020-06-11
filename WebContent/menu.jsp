<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	if (session.getAttribute("username") == null || session.getAttribute("username").toString().equalsIgnoreCase("")) {
	response.sendRedirect("login.jsp");
}
%>
<div class="wrapper">
	<!-- Sidebar Holder -->
	<nav id="sidebar">
		<div class="sidebar-header">
			<img src="img/logo.png" class="rounded mx-auto d-block"
				alt="Responsive image">
		</div>
		<%
			if (session.getAttribute("username") != null
				&& session.getAttribute("username").toString().toLowerCase().indexOf("admin") > -1) {
		%>
		<ul class="list-unstyled components">
			<li><a href="addStu.jsp">Add Studen</a> <a
				href="addStuInClass.jsp">Add Studen in class</a> <a
				href="editTeacher.jsp">Edit Teacher</a> <a href="editCourse.jsp">Edit
					Course</a> <a href="editRoom.jsp">Edit Room</a></li>
		</ul>
		<%
			}
		%>

		<%
		if (session.getAttribute("username") != null
		&& session.getAttribute("username").toString().toLowerCase().indexOf("tur") > -1) {
		%>
		<div class="form-group">
			<select class="form-control" id="exampleFormControlSelect1">
				<option>Algorithm</option>
			</select>
		</div>
		<div class="form-group">
			<select class="form-control" id="exampleFormControlSelect1">
				<option>Sec. 1</option>
			</select>
		</div>
		<button class="btn btn-primary btn-block" type="submit">START</button>

		<ul class="list-unstyled componentsImg">
			<div class="text-center">
				<li><a><i class="icons8-spy" style="font-size: 72px"></i></a></li>
				<li><a><i class="icons8-outdent" style="font-size: 72px"></i></a></li>
				<li><a><i class="icons8-puzzle" style="font-size: 72px"></i></a></li>
				<li><a><i class="icons8-parallel-tasks"
						style="font-size: 72px"></i></a></li>
			</div>
		</ul>
		<%
			}
		%>
	</nav>

	<!-- Page Content Holder -->
	<div id="content">

		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">

				<button type="button" id="sidebarCollapse" class="navbar-btn">
					<span></span> <span></span> <span></span>
				</button>


				<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
					type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="icons8-align-center"></i>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="nav navbar-nav ml-auto">
						<!-- <li class="nav-item active">
                            <a class="nav-link" href="#">Page</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Page</a>
                        </li> -->
						<li class="nav-item"><a class="nav-link" href="#">Profile</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="signout">Logout</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!--     </div>
</div> -->