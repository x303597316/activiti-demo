<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="/taglibs.jsp"%>
<%pageContext.setAttribute("currentMenu", "history");%>
<%pageContext.setAttribute("HEADER_MODEL", "bpm-admin");%>
<!doctype html>
<html lang="en">

  <head>
    <%@include file="/common/meta.jsp"%>
    <title><spring:message code="dev.demo.list.title" text="流程列表"/></title>
    <%@include file="/common/s.jsp"%>
  </head>

  <body>
    <%@include file="/header.jsp"%>

    <div class="row-fluid">
	<%@include file="/menu-bpm-admin.jsp"%>

	<!-- start of main -->
    <section id="m-main" class="span10">

      <article class="m-widget">
        <header class="header">
		  <h4 class="title"><spring:message code="demo.demo.list.title" text="列表"/></h4>
		</header>
		<div class="content">

  <table id="demoGrid" class="m-table table table-hover">
    <thead>
      <tr>
        <th class="sorting" name="id">编号</th>
        <th class="sorting" name="name">流程定义</th>
        <th class="sorting" name="name">开始时间</th>
        <th class="sorting" name="name">结束时间</th>
        <th class="sorting" name="name">分配人</th>
        <th class="sorting" name="name">领取时间</th>
        <th width="170">&nbsp;</th>
      </tr>
    </thead>

    <tbody>
      <s:iterator value="historicTaskInstances" var="item">
      <tr>
	    <td>${item.id}</td>
	    <td>${item.processDefinitionId}</td>
	    <td>${item.startTime}</td>
	    <td>${item.endTime}</td>
	    <td>${item.assignee}</td>
	    <td>${item.claimTime}</td>
		<td>
          <a href="workspace!viewHistory.do?processInstanceId=${item.processInstanceId}">历史</a>
          <a href="${scopePrefix}/diagram-viewer/index.html?processInstanceId=${item.id}&processDefinitionId=${item.processDefinitionId}">diagram-viewer</a>
        </td>
      </tr>
      </s:iterator>
    </tbody>
  </table>
        </div>
      </article>

    </section>
	<!-- end of main -->
	</div>

  </body>

</html>
