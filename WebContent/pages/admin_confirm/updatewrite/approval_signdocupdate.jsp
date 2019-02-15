<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" import="java.util.List, com.cube.model.dto.*"%>
<%@ include file="/common/admin_public.jsp" %>
<%
	List<Confirmlist_infoDto> list = (List<Confirmlist_infoDto>) request.getAttribute("confirmlist");
	List<EmployeesDto> confirmlistview = (List<EmployeesDto>) request.getAttribute("confirmlistview");
	SigndocDto signdocDto = (SigndocDto) request.getAttribute("signdocwrite");
%>
        <!-- /#page-wrapper -->
        <form name ="signForm" id="signForm" method="post" action="">
        <input type="hidden" id="act" name="act" value="signupdate">
        <input type="hidden" name="dockind" value="��ȼ�">
        <input type="hidden" id="docseq" name="docseq" value="<%=signdocDto.getDoc_seq() %>">
               <div id="page-wrapper">
            <div class="row">
				<div class="col-lg-12">
                    	<h1 class="page-header"><%=signdocDto.getDoc_name() %></h1>
                    	<div style="text-align:right; vertical-align:middle">
	                        <select class="form-control22" id="signconfirmlist" name="confirmlist" style="height:32px"
	                        		onchange="javascript:confirmline(this.value)">
	                            <option value="choice">-- ���缱 ���� --</option>
	                            <%
	                            	for(Confirmlist_infoDto confirmlist_infoDto : list) {
                           		%>
                           			<option value="<%= confirmlist_infoDto.getConfirm_code()%>">
                           				<%=confirmlist_infoDto.getConfirm_name() %>
                           			</option>
                           		<%
	                            	}	
	                            %>
	                        </select>
	                        <button type="button" id="registorok" class="btn btn-primary" style="margin-bottom:7px">�����ϱ�</button>
	                       <!--  <button type="button" id="registrotemp" class="btn btn-primary" style="margin-bottom:7px">�ӽ�����</button> -->
                        </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <!-- <form name ="signform" method="get" action="">
            <input type="hidden" name="act" value="signregister">
            <input type="hidden" name="dockind" value="��ȼ�"> -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        <from id="frm" action="" method="post">
                            <table width="100%" class="table table-striped table-bordered table-hover">
                                <thead>
					              <tr>
					                <th>������ȣ</th>
					                <td><%=signdocDto.getDoc_seq() %></td>
					                <th rowspan="5" style="text-align:center; vertical-align:middle">��<br><br><br><br>��</th>
					                <th rowspan="2" style="text-align:center; vertical-align:middle">�����</th>
					                <th rowspan="2" style="text-align:center; vertical-align:middle">���缱</th>
					                <th rowspan="2" style="text-align:center; vertical-align:middle">���缱</th>
					                <th rowspan="2" style="text-align:center; vertical-align:middle">���缱</th>
					              </tr>
					              <tr>
					                <th>��������</th>
					                <td>
					                  <label><%=signdocDto.getDoc_name() %></label>
					                </td>
					              </tr>
					              <tr>
					                <th>��������</th>
					                <td>
					                  <label><%=signdocDto.getDoc_state() %></label>
					                </td>
					                <td rowspan="3" style="text-align:center; vertical-align:middle">
					                  <label><%=employeesDto.getGarde_name()%><br><%=employeesDto.getName()%></label>
					                </td>
					                <td rowspan="3" style="text-align:center; vertical-align:middle">
					                <div id="signconfirmname0" name="signconfirmname0" value="" text=""><%=signdocDto.getConfirmlistname1() %></div>
					                <input type="text" id="signconfirm0" name="signconfirm0" value="<%=signdocDto.getConfirmlist1() %>" style="display:none;">
					                <input type="text" id="signconfirms0" name="signconfirms0" value="<%=signdocDto.getConfirmlistname1() %>" style="display:none;">
					                  <span><button type="button" class="btn btn-primary btn-lg" id="signdoc_approval0" value="appoint" onclick="javascript:test(this.value, this.id);" style="width:60px; height:35px; padding-top: 7px;" data-toggle="modal" data-target="#confirmemployee">����</button></span>
					                </td>
					                <td rowspan="3" style="text-align:center; vertical-align:middle">
					                <div id="signconfirmname1" name="signconfirmname1" value="" text=""><%=signdocDto.getConfirmlistname2() %></div>
					                <input type="text" id="signconfirm1" name="signconfirm1" value="<%=signdocDto.getConfirmlist2() %>" style="display:none;">
					                <input type="text" id="signconfirms1" name="signconfirms1" value="<%=signdocDto.getConfirmlistname2() %>" style="display:none;">
					                  <span><button type="button" class="btn btn-primary btn-lg" id="signdoc_approval1" value="appoint" onclick="javascript:test(this.value, this.id);" style="width:60px; height:35px; padding-top: 7px;" data-toggle="modal" data-target="#confirmemployee">����</button></span>
					                </td>
					                <td rowspan="3" style="text-align:center; vertical-align:middle">
					                <div id="signconfirmname2" name="signconfirmname2" value="" text=""><%=signdocDto.getConfirmlistname3() %></div>
					                <input type="text" id="signconfirm2" name="signconfirm2" value="<%=signdocDto.getConfirmlist3() %>" style="display:none;">
					                <input type="text" id="signconfirms2" name="signconfirms2" value="<%=signdocDto.getConfirmlistname3() %>" style="display:none;">
					                  <span><button type="button" class="btn btn-primary btn-lg" id="signdoc_approval2" value="appoint" onclick="javascript:test(this.value, this.id);" style="width:60px; height:35px; padding-top: 7px;" data-toggle="modal" data-target="#confirmemployee">����</button></span>
					                </td>
					                <!-- Modal -->
				                            <div class="modal fade" id="confirmemployee" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				                                <div class="modal-dialog">
				                                    <div class="modal-content">
				                                        <div class="modal-header" style="padding-right:30px">
				                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				                                            <h4 class="modal-title" id="myModalLabel">������ �����ϱ�</h4>
				                                            <p></p>
				                                                <button type="button" class="btn btn-primary" id="btnExpandAll"">��ü�μ� ����</button>&nbsp;&nbsp;&nbsp;
    															<button type="button" class="btn btn-primary" id="btnCollapseAll">��ü�μ� �ݱ�</button>
				                                        </div>
				                                        <div class="modal-body">
				                                           <div id="tree1">
				                                           <ul>
				                                           	<%
				                                           	int size=confirmlistview.size();
				                                           	String tmp="";
				                                           	for(int i=0; i<size; i++) {
				                                           		EmployeesDto employeesDto2 = confirmlistview.get(i);
				                                           		int idx=1;
				                                           		if(!employeesDto2.getDepartment_name().equals(tmp)){
				                                           	%>
				                                           		<li id="cid<%=idx++ %>" class="folder"><%=employeesDto2.getDepartment_name() %>
				                                           		<ul>
				                                           	<%		
				                                           		} 
				                                           	%>
				                                           		<li id="<%=employeesDto2.getEmployee_id()%>"><%=employeesDto2.getDepartment_name()+" ("+employeesDto2.getGarde_name()+")"+employeesDto2.getName() %>
				                                           	<%	
				                                           		tmp = employeesDto2.getDepartment_name();
				                                           		if(i<size-1){
				                                           		if(!confirmlistview.get(i+1).getDepartment_name().equals(employeesDto2.getDepartment_name())){%></ul><%}}
				                                           	}%>
				                                           </ul>
				                                           </div>
														  </div>
				                                        </div>
				                                    </div>
				                                    <!-- /.modal-content -->
				                                </div>
				                                <!-- /.modal-dialog -->
				                            </div>
				                            <!-- /.modal -->
					              </tr>
					              <tr>
					                <th>�μ�</th>
					                <td><label><%=employeesDto.getDepartment_name() %></label></td>
					              </tr>
					              <tr>
					                <th>�����</th>
					                <td><label><%=signdocDto.getDoc_writer() %><label></td>
					              </tr>
					              <tr>
					                <th>�����</th>
					                <td colspan="6">
										      <form class="demo-3">
										        <input type='text' id="nodayinputtext" name="nodayinputtext" value="" class="form-control" style="width:50%; display:none">
										      </form>
										<span class="col-lg-4" style="margin-left:-16px">
										      <form class="demo-3">
										        <input type='text' id="dayinputtext" name="dayinputtext" value="<%=signdocDto.getDoc_date() %>" class="form-control" style="width:50%; text-align:center">
										      </form>
										</span>
										<input type='text' id="daytext" name="daytext" value="" class="form-control" style="width:50%; display:none">
					                </td>
					              </tr>
					              <tr>
					                <th>���źμ�</th>
					                <td colspan="6">
					                  <input id="receiveinputbox" name="receiveinputbox" value="<%=signdocDto.getDoc_receiver() %>" class="form-controltext" readonly="readonly">&nbsp;&nbsp;&nbsp;&nbsp;
				                            <!-- Button trigger modal -->
				                            <button type="button" class="btn btn-primary btn-lg" id="receivebtn" onclick="javascript:test(this.value, this.id);" style="width:115px; height:35px; padding-top: 8px;" data-toggle="modal" data-target="#receivedep">
				                                	���źμ�����
				                            </button>
				                            <!-- Modal -->
				                            <div class="modal fade" id="receivedep" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				                                <div class="modal-dialog">
				                                    <div class="modal-content">
				                                        <div class="modal-header">
				                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				                                            <h4 class="modal-title" id="myModalLabel">���źμ� �����ϱ�</h4>
				                                            <p></p>
				                                            	<button type="button" class="btn btn-primary" id="btnExpandAll"">��ü�μ� ����</button>&nbsp;&nbsp;&nbsp;
    															<button type="button" class="btn btn-primary" id="btnCollapseAll">��ü�μ� �ݱ�</button>
				                                        </div>
				                                        <div class="modal-body">
				                                         <div id="tree2">
				                                           <ul>
				                                           	<%
				                                           	size=confirmlistview.size();
				                                           	tmp="";
				                                           	for(EmployeesDto employeesDto2 : confirmlistview) {
				                                           		if(!employeesDto2.getDepartment_name().equals(tmp)){
				                                           	%>	
				                                           		<li class="folder"><%=employeesDto2.getDepartment_name() %>
				                                           	<%			tmp = employeesDto2.getDepartment_name();
				                                           		} 
				                                           	}%>
				                                           </ul>
														  </div>
				                                        </div>
				                                    </div>
				                                    <!-- /.modal-content -->
				                                </div>
				                                <!-- /.modal-dialog -->
				                            </div>
				                            <!-- /.modal -->
					                </td>
					              </tr>
					              <tr>
					                <th>�����μ�</th>
					                <td colspan="6">
					                  <input id="referenceinputbox" name="referenceinputbox" class="form-controltext" value="<%=signdocDto.getDoc_reference() %>" readonly="readonly">&nbsp;&nbsp;&nbsp;&nbsp;
					                  <!-- Button trigger modal -->
				                            <button type="button" class="btn btn-primary btn-lg" id="signreferencebtn" onclick="javascript:test(this.value, this.id);" style="width:115px; height:35px; padding-top: 8px;" data-toggle="modal" data-target="#referencedep">
				                                	�����μ�����
				                            </button>
				                            <!-- Modal -->
				                            <div class="modal fade" id="referencedep" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				                                <div class="modal-dialog">
				                                    <div class="modal-content">
				                                        <div class="modal-header">
				                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				                                            <h4 class="modal-title" id="myModalLabel">�����μ� �����ϱ�</h4>
				                                            <p></p>
				                                            	<button type="button" class="btn btn-primary" id="btnExpandAll"">��ü�μ� ����</button>&nbsp;&nbsp;&nbsp;
    															<button type="button" class="btn btn-primary" id="btnCollapseAll">��ü�μ� �ݱ�</button>
				                                        </div>
				                                        <div class="modal-body">
				                                            	<div id="tree2">
				                                           <ul>
				                                           	<%
				                                           	size=confirmlistview.size();
				                                           	tmp="";
				                                           	for(EmployeesDto employeesDto2 : confirmlistview) {
				                                           		if(!employeesDto2.getDepartment_name().equals(tmp)){
				                                           	%>	
				                                           		<li class="folder"><%=employeesDto2.getDepartment_name() %>
				                                           	<%			tmp = employeesDto2.getDepartment_name();
				                                           		} 
				                                           	}%>
				                                           </ul>
														  </div>
				                                        </div>
				                                    </div>
				                                    <!-- /.modal-content -->
				                                </div>
				                                <!-- /.modal-dialog -->
				                            </div>
				                            <!-- /.modal -->
					                </td>
					              </tr>
					           <!--   <tr>
					                <th>����÷��</th>
					                <td colspan="6" >
					                  <div class="form-group" style="margin:auto">
                                            <input type="file" id="signfilename" name="signfilename" value="">
                                        </div>
                                        
					                </td>
					              </tr> --> 
					              <tr>
					                <th>����</th>
					                <td colspan="6">
					                  <input class="form-controltext" id="signsubject" name="signsubject" value="<%=signdocDto.getDoc_subject() %>">
					                </td>
					              </tr>
					              <tr>
					                <th colspan="7">
					                <!-- SE2 -->
										<textarea name="ir1" id="ir1" rows="10" cols="100" style="width:100%; height:412px; display:none;"><%=signdocDto.getSigndoc_content() %></textarea>
					                </th>
					              </tr>
					            </thead>

                            </table>
                            </from>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
    </form>
    
     <!--/#wrapper -->

       <!-- jQuery -->
    <script src="<%=root %>/css/vendor/jquery/jquery.min.js"></script>

	<!-- Calendar -->
	<script src="<%=root %>/calendar/jquery.minical.js"></script>
	<script>
	$("form.demo-1 :text").minical();
	$("form.demo-2 :text").minical({inline: true});
	$("form.demo-3 :text").minical({trigger: "i.trigger-icon"});
	
	</script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=root %>/css/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<%=root %>/css/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Flot Charts JavaScript -->
    <script src="<%=root %>/css/vendor/flot/excanvas.min.js"></script>
    <script src="<%=root %>/css/vendor/flot/jquery.flot.js"></script>
    <script src="<%=root %>/css/vendor/flot/jquery.flot.pie.js"></script>
    <script src="<%=root %>/css/vendor/flot/jquery.flot.resize.js"></script>
    <script src="<%=root %>/css/vendor/flot/jquery.flot.time.js"></script>
    <script src="<%=root %>/css/vendor/flot-tooltip/jquery.flot.tooltip.min.js"></script>
    <script src="<%=root %>/css/data/flot-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<%=root %>/css/dist/js/sb-admin-2.js"></script>

	
	
    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
    	for(var i=0; i<3; i++){
			var str = "#signconfirmname"+i;
			var str1 = "#signdoc_approval"+i;
			var str2 = "#signconfirm"+i;
			var str3 = "#signconfirms"+i;
	    	if($(str3).val()){
				$(str1).val("cancel");
				$(str1).html("���");
    		}
    	}
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
    
	<!-- SE2 -->
	<script type="text/javascript" src="<%=root %>/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript">
	
	var oEditors = [];
	
	// �߰� �۲� ���
	//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
	$(function(){
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "ir1",
		sSkinURI: "<%=SE2%>/SmartEditor2Skin.jsp",	
		htParams : {
			bUseToolbar : true,				// ���� ��� ���� (true:���/ false:������� ����)
			bUseVerticalResizer : true,		// �Է�â ũ�� ������ ��� ���� (true:���/ false:������� ����)
			bUseModeChanger : true,			// ��� ��(Editor | HTML | TEXT) ��� ���� (true:���/ false:������� ����)
			//aAdditionalFontList : aAdditionalFontSet,		// �߰� �۲� ���
			fOnBeforeUnload : function(){
				//alert("�Ϸ�!");
			}
		}, //boolean
		fOnAppLoad : function(){
			//���� �ڵ�
			//oEditors.getById["ir1"].exec("PASTE_HTML", ["�ε��� �Ϸ�� �Ŀ� ������ ���ԵǴ� text�Դϴ�."]);
		},
		fCreator: "createSEditor2"
		});
		
		function pasteHTML() {
			var sHTML = "<span style='color:#FF0000;'>�̹����� ���� ������� �����մϴ�.<\/span>";
			oEditors.getById["ir1"].exec("PASTE_HTML", [sHTML]);
		}
		
		function showHTML() {
			var sHTML = oEditors.getById["ir1"].getIR();
			alert(sHTML);
		}
			
		$("#registorok").click(function () {
			oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);	// �������� ������ textarea�� ����˴ϴ�.
			 //�������� ���뿡 ���� �� ������ �̰����� document.getElementById("ir1").value�� �̿��ؼ� ó���ϸ� �˴ϴ�.
			 if(!$("#signconfirmname0").text()){
					alert("���缱�� �������ֽñ�ٶ��ϴ�.");
					return;
				} else if(!document.getElementById("dayinputtext").value){
					alert("������� �������ֽñ�ٶ��ϴ�.");
					return;
				} else if(!document.getElementById("receiveinputbox").value){
					alert("���źμ��� �������ֽñ�ٶ��ϴ�.");
					return;
				} else if(!document.getElementById("signsubject").value){
					alert("������ �ۼ����ֽñ�ٶ��ϴ�.");
					return;
				} else if(!$("#ir1").val()){
					alert("������ �ۼ����ֽñ�ٶ��ϴ�.");
					return;
				} else if(confirm("����Ͻðڽ��ϱ�?")== true){
					$("#daytext").val(document.getElementById("dayinputtext").value);
					document.signForm.action="<%=root%>/userdocupdate";
					$("#signForm").submit();
				} else {
					return;
				}
		});	
			
			
			//try {
				//elClickedObj.form.submit();
			//} catch(e) {}
		//}
		
		function setDefaultFont() {
			var sDefaultFont = '�ü�';
			var nFontSize = 24;
			oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
		}
	});
	</script>
	<script src="<%=root %>/modal/jquery/jquery-ui.custom.js" type="text/javascript"></script>
	<script src="<%=root %>/modal/jquery/jquery.cookie.js" type="text/javascript"></script>
	<link href="<%=root %>/modal/src/skin-vista/ui.dynatree.css" rel="stylesheet" type="text/css">
	<script src="<%=root %>/modal/src/jquery.dynatree.js" type="text/javascript"></script>
	<script type="text/javascript">
	var btnids;
	 $(function(){
	   // Initialize the tree inside the <div>element.
	   // The tree structure is read from the contained <ul> tag.
	   $("#tree1").dynatree({
	     onActivate: function(node) {
	  		var parameter="act=confirmbtn&confirmname="+encodeURI(node.data.title);
	  		sendRequest("<%=root%>/userdocwrite",parameter,receiveParams, "GET");
	  		function receiveParams() {
	  			if(httpRequest.readyState==4){
	  				if(httpRequest.status==200){
	  					if(btnids=="signdoc_approval0"){
	   					document.getElementById("signconfirmname0").innerHTML = node.data.title;
	   					document.getElementById("signconfirm0").value = node.data.key;
	   					document.getElementById("signconfirms0").value = node.data.title;
						document.getElementById("signdoc_approval0").value="cancel";
						document.getElementById("signdoc_approval0").innerHTML="���";
	  					} else if(btnids=="signdoc_approval1"){
	 					document.getElementById("signconfirmname1").innerHTML = node.data.title;
	 					document.getElementById("signconfirm1").value = node.data.key;
	 					document.getElementById("signconfirms1").value = node.data.title;
						document.getElementById("signdoc_approval1").value="cancel";
						document.getElementById("signdoc_approval1").innerHTML="���";
	  					} else if(btnids=="signdoc_approval2"){
	 					document.getElementById("signconfirmname2").innerHTML = node.data.title;
	 					document.getElementById("signconfirm2").value = node.data.key;
	 					document.getElementById("signconfirms2").value = node.data.title;
						document.getElementById("signdoc_approval2").value="cancel";
						document.getElementById("signdoc_approval2").innerHTML="���";
	  					}
	  				}
	  			}
	  		} 
	     if( node.data.url )
	       window.open(node.data.url, node.data.target);
	     },
	     onDeactivate: function(node) {
	       $("#echoSelected").text("-");
	     },
	     onFocus: function(node) {
	       $("#echoFocused").text(node.data.title);
	     },
	     onBlur: function(node) {
	       $("#echoFocused").text("-");
	     },
	     onLazyRead: function(node){
	       var fakeJsonResult = [
	         { title: 'Lazy node 1', isLazy: true },
	         { title: 'Simple node 2', select: true }
	       ];
	     }
	   });
	   $("#tree2, #tree3").dynatree({
	       onActivate: function(node) {
	    		var parameter="act=docconfirmbtn&confirmname="+encodeURI(node.data.title);
	    		sendRequest("<%=root%>/userdocwrite",parameter,receiveParams, "GET");
	    		function receiveParams() {
	    			if(httpRequest.readyState==4){
	    				if(httpRequest.status==200){
	    					if(btnids=="receivebtn"){
	    						$("#receiveinputbox").val(node.data.title);
	    					} else if(btnids=="signreferencebtn"){
	    						$("#referenceinputbox").val(node.data.title);
	    					}
	    				}
	    			}
	    		} 
	       if( node.data.url )
	         window.open(node.data.url, node.data.target);
	       },
	       onDeactivate: function(node) {
	         $("#echoSelected").text("-");
	       },
	       onFocus: function(node) {
	         $("#echoFocused").text(node.data.title);
	       },
	       onBlur: function(node) {
	         $("#echoFocused").text("-");
	       },
	       onLazyRead: function(node){
	         var fakeJsonResult = [
	           { title: 'Lazy node 1', isLazy: true },
	           { title: 'Simple node 2', select: true }
	         ];
	       }
	     });
	   $("#btnExpandAll").click(function(){
	       $("#tree1, #tree2, #tree3").dynatree("getRoot").visit(function(node){
	         node.expand(true);
	       });
	       return false;
	     });
	     $("#btnCollapseAll").click(function(){
	       $("#tree1, #tree2, #tree3").dynatree("getRoot").visit(function(node){
	         node.expand(false);
	       });
	       return false;
	     });
	 });  
	 function confirmline(optionval) {
		var parameter="act=docconfirmnum&confirmname="+encodeURI(optionval);
		sendRequest("<%=root%>/userdocwrite",parameter,receiveParam, "GET");
	}
	
	function test(btval, btid){
		btnids=btid;
		if(btval=="appoint"){
			return;
		} else {
			var btstr = btid.substr(btid.length-1);
			var str = "signconfirmname"+btstr;
			var str1 = "signdoc_approval"+btstr;
			var str2 = "signconfirm"+btstr;
			var str3 = "signconfirms"+btstr;
			document.getElementById(str).innerHTML = "";
			document.getElementById(str2).value = "";
			document.getElementById(str3).value = "";
			document.getElementById(str1).value="appoint";
			document.getElementById(str1).innerHTML="����";
			event.stopPropagation();
		}
	}
	
	function receiveParam() {
		if(httpRequest.readyState==4){
			if(httpRequest.status==200){
				result = httpRequest.responseText;
				var result3 = result.split('@');
				var id = result3[0];
				var name = result3[1];
				var result1 = name.split('|');
				var result2 = id.split(',');
				for(var i=0; i<result1.length; i++){
					var str = "signconfirmname"+i;
					var str1 = "signdoc_approval"+i;
					var str2 = "signconfirm"+i;
					var str3 = "signconfirms"+i;
					if(result1[i]!="null" && result1[i].length!=6){
						document.getElementById(str).innerHTML = result1[i];
						document.getElementById(str2).value = result2[i];
						document.getElementById(str3).value = result1[i];
						document.getElementById(str1).value="cancel";
						document.getElementById(str1).innerHTML="���";
					} else{
						document.getElementById(str).innerHTML = "";
						document.getElementById(str2).value = "";
						document.getElementById(str3).value = "";
						document.getElementById(str1).value="appoint";
						document.getElementById(str1).innerHTML="����";
					}
				}
			} 
		}	
	}
	</script>
</body>
</html>