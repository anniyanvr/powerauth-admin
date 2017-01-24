<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="PowerAuth 2.0 Admin - New Callback URL"/>
</jsp:include>

<ol class="breadcrumb">
    <li><a class="black" href="${pageContext.request.contextPath}/application/list">Applications</a></li>
    <li><a class="black" href="${pageContext.request.contextPath}/application/detail/<c:out value="${applicationId}"/>">Application Detail</a></li>
    <li class="active">New Callback</li>
</ol>

<div class="row">
    <div class="col-sm-7">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">New Callback</h3>
            </div>
            <div class="panel-body">
                <form class="form" method="POST" action="${pageContext.request.contextPath}/application/detail/<c:out value="${applicationId}"/>/callback/create/do.submit">
                    <div class="row">
                        <div class="col-md-3">
                            Name <input type="text" name="name" class="form-control"/>
                        </div>
                        <div class="col-md-7">
                            URL <input type="text" name="callbackUrl" class="form-control"/>
                        </div>
                        <div class="col-md-2 text-right"><br/>
                            <input type="submit" value="Submit" class="btn btn-success w100"/>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
    <div class="col-sm-5">
        <div class="panel panel-info">

            <div class="panel-heading">
                <h3 class="panel-title"><span class="glyphicon glyphicon-info-sign"></span> What are the callbacks?</h3>
            </div>

            <div class="panel-body">
                <p>
                    We will <span class="code">POST</span> a following JSON callback to the URL you
                    specify whenever an activation status changes.
                </p>
                <pre class="code"><code class="json">{
    "activationId": "$ACTIVATION_ID"
}</code></pre>
            </div>

        </div>
    </div>
</div>


<jsp:include page="footer.jsp"/>