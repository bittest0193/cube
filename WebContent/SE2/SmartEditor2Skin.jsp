<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% String root = request.getContextPath(); %>    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>���̹� :: Smart Editor 2 &#8482;</title>
<link href="css/smart_editor2.css" rel="stylesheet" type="text/css">
<style type="text/css">
	body { margin: 10px; }
</style>
<script type="text/javascript" src="<%=root %>/SE2/js/jindo.min.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=root %>/SE2/js/jindo_component.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=root %>/SE2/js/SE2B_Configuration_Service.js" charset="utf-8"></script>	<!-- ���� ���� -->
<script type="text/javascript" src="<%=root %>/SE2/js/SE2B_Configuration_General.js" charset="utf-8"></script>	<!-- ���� ���� -->
<script type="text/javascript" src="<%=root %>/SE2/js/SE2BasicCreator.js" charset="utf-8"></script>

<script src='js/smarteditor2.min.js' charset='utf-8'></script>
<script src='photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js' charset='utf-8'></script>
</head>
<body>



<span id="rev"></span>

<!-- SE2 Markup Start -->	
<div id="smart_editor2">
	<div id="smart_editor2_content"><a href="#se2_iframe" class="blind">�۾��⿵������ �ٷΰ���</a>
		<div class="se2_tool" id="se2_tool">
			
			<div class="se2_text_tool husky_seditor_text_tool">
			<ul class="se2_font_type">
				<li class="husky_seditor_ui_fontName"><button type="button" class="se2_font_family" title="�۲�"><span class="husky_se2m_current_fontName">�۲�</span></button>
					<!-- �۲� ���̾� -->
					<div class="se2_layer husky_se_fontName_layer">
						<div class="se2_in_layer">
							<ul class="se2_l_font_fam">
							<li style="display:none"><button type="button"><span>@DisplayName@<span>(</span><em style="font-family:FontFamily;">@SampleText@</em><span>)</span></span></button></li>
							<!--
							<li><button type="button"><span>����<span>(</span><em style="font-family:'����',Dotum,Sans-serif;">�����ٶ�</em><span>)</span></span></button></li>
							<li><button type="button"><span>����ü<span>(</span><em style="font-family:'����ü',DotumChe,Sans-serif;">�����ٶ�</em><span>)</span></span></button></li>
							<li><button type="button"><span>����<span>(</span><em style="font-family:'����',Gulim,Sans-serif;">�����ٶ�</em><span>)</span></span></button></li>
							<li><button type="button"><span>����ü<span>(</span><em style="font-family:'����ü',GulimChe,Sans-serif;">�����ٶ�</em><span>)</span></span></button></li>
							<li><button type="button"><span>����<span>(</span><em style="font-family:'����',Batang,serif;">�����ٶ�</em><span>)</span></span></button></li>
							<li><button type="button"><span>����ü<span>(</span><em style="font-family:'����ü',BatangChe,serif;">�����ٶ�</em><span>)</span></span></button></li>
							<li><button type="button"><span>�ü�<span>(</span><em style="font-family:'�ü�',Gungsuh,serif;">�����ٶ�</em><span>)</span></span></button></li>
							<li><button type="button"><span>Arial<span>(</span><em style="font-family:arial,Sans-serif;">abcd</em><span>)</span></span></button></li>
							<li><button type="button"><span>Tahoma<span>(</span><em style="font-family:tahoma,Sans-serif;">abcd</em><span>)</span></span></button></li>
							<li><button type="button"><span>Times New Roman<span>(</span><em style="font-family:'Times New Roman',Times,serif;">abcd</em><span>)</span></span></button></li>
							<li><button type="button"><span>Verdana<span>(</span><em style="font-family:verdana,Sans-serif;">abcd</em><span>)</span></span></button></li>
							<li><button type="button"><span>Courier New<span>(</span><em style="font-family:Courier New,Sans-serif;">abcd</em><span>)</span></span></button></li>
							-->
							<li class="se2_division husky_seditor_font_separator"></li>
							<li class="husky_seditor_font_nanumgothic"><button type="button"><span>��������<span>(</span><em style="font-family:'��������',NanumGothic,Sans-serif;">�����ٶ�</em><span>)</span></span></button></li>
							<li class="husky_seditor_font_nanummyeongjo"><button type="button"><span>��������<span>(</span><em style="font-family:'��������',NanumMyeongjo,serif;">�����ٶ�</em><span>)</span></span></button></li>
							<li class="husky_seditor_font_nanumgothiccoding"><button type="button"><span>���������ڵ�<span>(</span><em style="font-family:'���������ڵ�',NanumGothicCoding,Sans-serif;">�����ٶ�</em><span>)</span></span></button></li>
							</ul>
						</div>
					</div>
					<!-- //�۲� ���̾� -->
				</li>

				<li class="husky_seditor_ui_fontSize"><button type="button" class="se2_font_size" title="����ũ��"><span class="husky_se2m_current_fontSize">ũ��</span></button>
					<!-- ��Ʈ ������ ���̾� -->
					<div class="se2_layer husky_se_fontSize_layer">
						<div class="se2_in_layer">
							<ul class="se2_l_font_size">
							<li><button type="button" style="height:19px;"><span style="margin-top:4px; margin-bottom:3px; margin-left:5px; font-size:7pt;">�����ٶ󸶹ٻ�<span style=" font-size:7pt;">(7pt)</span></span></button></li>
							<li><button type="button" style="height:20px;"><span style="margin-bottom:2px; font-size:8pt;">�����ٶ󸶹ٻ�<span style="font-size:8pt;">(8pt)</span></span></button></li>
							<li><button type="button" style="height:20px;"><span style="margin-bottom:1px; font-size:9pt;">�����ٶ󸶹ٻ�<span style="font-size:9pt;">(9pt)</span></span></button></li>
							<li><button type="button" style="height:21px;"><span style="margin-bottom:1px; font-size:10pt;">�����ٶ󸶹ٻ�<span style="font-size:10pt;">(10pt)</span></span></button></li>
							<li><button type="button" style="height:23px;"><span style="margin-bottom:2px; font-size:11pt;">�����ٶ󸶹ٻ�<span style="font-size:11pt;">(11pt)</span></span></button></li>
							<li><button type="button" style="height:25px;"><span style="margin-bottom:1px; font-size:12pt;">�����ٶ󸶹ٻ�<span style="font-size:12pt;">(12pt)</span></span></button></li>
							<li><button type="button" style="height:27px;"><span style="margin-bottom:2px; font-size:14pt;">�����ٶ󸶹ٻ�<span style="margin-left:6px;font-size:14pt;">(14pt)</span></span></button></li>
							<li><button type="button" style="height:33px;"><span style="margin-bottom:1px; font-size:18pt;">�����ٶ󸶹ٻ�<span style="margin-left:8px;font-size:18pt;">(18pt)</span></span></button></li>
							<li><button type="button" style="height:39px;"><span style="margin-left:3px; font-size:24pt;">�����ٶ�<span style="margin-left:11px;font-size:24pt;">(24pt)</span></span></button></li>
							<li><button type="button" style="height:53px;"><span style="margin-top:-1px; margin-left:3px; font-size:36pt;">������<span style="font-size:36pt;">(36pt)</span></span></button></li>
							</ul>
						</div>
					</div>
					<!-- //��Ʈ ������ ���̾� -->
				</li>
</ul><ul>
				<li class="husky_seditor_ui_bold"><button type="button" title="����[Ctrl+B]" class="se2_bold"><span class="_buttonRound">����[Ctrl+B]</span></button></li>

				<li class="husky_seditor_ui_underline"><button type="button" title="����[Ctrl+U]" class="se2_underline"><span class="_buttonRound">����[Ctrl+U]</span></button></li>

				<li class="husky_seditor_ui_italic"><button type="button" title="����Ӳ�[Ctrl+I]" class="se2_italic"><span class="_buttonRound">����Ӳ�[Ctrl+I]</span></button></li>

				<li class="husky_seditor_ui_lineThrough"><button type="button" title="��Ҽ�[Ctrl+D]" class="se2_tdel"><span class="_buttonRound">��Ҽ�[Ctrl+D]</span></button></li>

				<li class="se2_pair husky_seditor_ui_fontColor"><span class="selected_color husky_se2m_fontColor_lastUsed" style="background-color:#4477f9"></span><span class="husky_seditor_ui_fontColorA"><button type="button" title="���ڻ�" class="se2_fcolor"><span>���ڻ�</span></button></span><span class="husky_seditor_ui_fontColorB"><button type="button" title="������" class="se2_fcolor_more"><span class="_buttonRound">������</span></button></span>				
					<!-- ���ڻ� -->
					<div class="se2_layer husky_se2m_fontcolor_layer" style="display:none">
						<div class="se2_in_layer husky_se2m_fontcolor_paletteHolder">
							<div class="se2_palette husky_se2m_color_palette">
								<ul class="se2_pick_color">
								<li><button type="button" title="#ff0000" style="background:#ff0000"><span><span>#ff0000</span></span></button></li>
								<li><button type="button" title="#ff6c00" style="background:#ff6c00"><span><span>#ff6c00</span></span></button></li>
								<li><button type="button" title="#ffaa00" style="background:#ffaa00"><span><span>#ffaa00</span></span></button></li>
								<li><button type="button" title="#ffef00" style="background:#ffef00"><span><span>#ffef00</span></span></button></li>
								<li><button type="button" title="#a6cf00" style="background:#a6cf00"><span><span>#a6cf00</span></span></button></li>
								<li><button type="button" title="#009e25" style="background:#009e25"><span><span>#009e25</span></span></button></li>
								<li><button type="button" title="#00b0a2" style="background:#00b0a2"><span><span>#00b0a2</span></span></button></li>
								<li><button type="button" title="#0075c8" style="background:#0075c8"><span><span>#0075c8</span></span></button></li>
								<li><button type="button" title="#3a32c3" style="background:#3a32c3"><span><span>#3a32c3</span></span></button></li>
								<li><button type="button" title="#7820b9" style="background:#7820b9"><span><span>#7820b9</span></span></button></li>
								<li><button type="button" title="#ef007c" style="background:#ef007c"><span><span>#ef007c</span></span></button></li>
								<li><button type="button" title="#000000" style="background:#000000"><span><span>#000000</span></span></button></li>
								<li><button type="button" title="#252525" style="background:#252525"><span><span>#252525</span></span></button></li>
								<li><button type="button" title="#464646" style="background:#464646"><span><span>#464646</span></span></button></li>
								<li><button type="button" title="#636363" style="background:#636363"><span><span>#636363</span></span></button></li>
								<li><button type="button" title="#7d7d7d" style="background:#7d7d7d"><span><span>#7d7d7d</span></span></button></li>
								<li><button type="button" title="#9a9a9a" style="background:#9a9a9a"><span><span>#9a9a9a</span></span></button></li>
								<li><button type="button" title="#ffe8e8" style="background:#ffe8e8"><span><span>#9a9a9a</span></span></button></li>
								<li><button type="button" title="#f7e2d2" style="background:#f7e2d2"><span><span>#f7e2d2</span></span></button></li>
								<li><button type="button" title="#f5eddc" style="background:#f5eddc"><span><span>#f5eddc</span></span></button></li>
								<li><button type="button" title="#f5f4e0" style="background:#f5f4e0"><span><span>#f5f4e0</span></span></button></li>
								<li><button type="button" title="#edf2c2" style="background:#edf2c2"><span><span>#edf2c2</span></span></button></li>
								<li><button type="button" title="#def7e5" style="background:#def7e5"><span><span>#def7e5</span></span></button></li>
								<li><button type="button" title="#d9eeec" style="background:#d9eeec"><span><span>#d9eeec</span></span></button></li>
								<li><button type="button" title="#c9e0f0" style="background:#c9e0f0"><span><span>#c9e0f0</span></span></button></li>
								<li><button type="button" title="#d6d4eb" style="background:#d6d4eb"><span><span>#d6d4eb</span></span></button></li>
								<li><button type="button" title="#e7dbed" style="background:#e7dbed"><span><span>#e7dbed</span></span></button></li>
								<li><button type="button" title="#f1e2ea" style="background:#f1e2ea"><span><span>#f1e2ea</span></span></button></li>
								<li><button type="button" title="#acacac" style="background:#acacac"><span><span>#acacac</span></span></button></li>
								<li><button type="button" title="#c2c2c2" style="background:#c2c2c2"><span><span>#c2c2c2</span></span></button></li>
								<li><button type="button" title="#cccccc" style="background:#cccccc"><span><span>#cccccc</span></span></button></li>
								<li><button type="button" title="#e1e1e1" style="background:#e1e1e1"><span><span>#e1e1e1</span></span></button></li>
								<li><button type="button" title="#ebebeb" style="background:#ebebeb"><span><span>#ebebeb</span></span></button></li>
								<li><button type="button" title="#ffffff" style="background:#ffffff"><span><span>#ffffff</span></span></button></li>
								</ul>
								<ul class="se2_pick_color" style="width:156px;">
								<li><button type="button" title="#e97d81" style="background:#e97d81"><span><span>#e97d81</span></span></button></li>
								<li><button type="button" title="#e19b73" style="background:#e19b73"><span><span>#e19b73</span></span></button></li>
								<li><button type="button" title="#d1b274" style="background:#d1b274"><span><span>#d1b274</span></span></button></li>
								<li><button type="button" title="#cfcca2" style="background:#cfcca2"><span><span>#cfcca2</span></span></button></li>
								<li><button type="button" title="#cfcca2" style="background:#cfcca2"><span><span>#cfcca2</span></span></button></li>
								<li><button type="button" title="#61b977" style="background:#61b977"><span><span>#61b977</span></span></button></li>
								<li><button type="button" title="#53aea8" style="background:#53aea8"><span><span>#53aea8</span></span></button></li>
								<li><button type="button" title="#518fbb" style="background:#518fbb"><span><span>#518fbb</span></span></button></li>
								<li><button type="button" title="#6a65bb" style="background:#6a65bb"><span><span>#6a65bb</span></span></button></li>
								<li><button type="button" title="#9a54ce" style="background:#9a54ce"><span><span>#9a54ce</span></span></button></li>
								<li><button type="button" title="#e573ae" style="background:#e573ae"><span><span>#e573ae</span></span></button></li>
								<li><button type="button" title="#5a504b" style="background:#5a504b"><span><span>#5a504b</span></span></button></li>
								<li><button type="button" title="#767b86" style="background:#767b86"><span><span>#767b86</span></span></button></li>
								<li><button type="button" title="#951015" style="background:#951015"><span><span>#951015</span></span></button></li>
								<li><button type="button" title="#6e391a" style="background:#6e391a"><span><span>#6e391a</span></span></button></li>
								<li><button type="button" title="#785c25" style="background:#785c25"><span><span>#785c25</span></span></button></li>
								<li><button type="button" title="#5f5b25" style="background:#5f5b25"><span><span>#5f5b25</span></span></button></li>
								<li><button type="button" title="#4c511f" style="background:#4c511f"><span><span>#4c511f</span></span></button></li>
								<li><button type="button" title="#1c4827" style="background:#1c4827"><span><span>#1c4827</span></span></button></li>
								<li><button type="button" title="#0d514c" style="background:#0d514c"><span><span>#0d514c</span></span></button></li>
								<li><button type="button" title="#1b496a" style="background:#1b496a"><span><span>#1b496a</span></span></button></li>
								<li><button type="button" title="#2b285f" style="background:#2b285f"><span><span>#2b285f</span></span></button></li>
								<li><button type="button" title="#45245b" style="background:#45245b"><span><span>#45245b</span></span></button></li>
								<li><button type="button" title="#721947" style="background:#721947"><span><span>#721947</span></span></button></li>
								<li><button type="button" title="#352e2c" style="background:#352e2c"><span><span>#352e2c</span></span></button></li>
								<li><button type="button" title="#3c3f45" style="background:#3c3f45"><span><span>#3c3f45</span></span></button></li>
								</ul>
								<button type="button" title="������" class="se2_view_more husky_se2m_color_palette_more_btn"><span>������</span></button>
								<div class="husky_se2m_color_palette_recent" style="display:none">
									<h4>�ֱ� ����� ��</h4>
									<ul class="se2_pick_color">
									<li></li>
									<!-- �ֱ� ����� �� ���ø� -->
									<!-- <li><button type="button" title="#e97d81" style="background:#e97d81"><span><span>#e97d81</span></span></button></li> -->
									<!-- //�ֱ� ����� �� ���ø� -->
									</ul>
								</div>								
								<div class="se2_palette2 husky_se2m_color_palette_colorpicker">
									<!--form action="http://test.emoticon.naver.com/colortable/TextAdd.nhn" method="post"-->
										<div class="se2_color_set">
											<span class="se2_selected_color"><span class="husky_se2m_cp_preview" style="background:#e97d81"></span></span><input type="text" name="" class="input_ty1 husky_se2m_cp_colorcode" value="#e97d81"><button type="button" class="se2_btn_insert husky_se2m_color_palette_ok_btn" title="�Է�"><span>�Է�</span></button></div>
										<!--input type="hidden" name="callback" value="http://test.emoticon.naver.com/colortable/result.jsp" />
										<input type="hidden" name="callback_func" value="1" />
										<input type="hidden" name="text_key" value="" />
										<input type="hidden" name="text_data" value="" />
									</form-->
									<div class="se2_gradation1 husky_se2m_cp_colpanel"></div>
									<div class="se2_gradation2 husky_se2m_cp_huepanel"></div>
								</div>
							</div>
                        </div>
					</div>
                    <!-- //���ڻ� -->
				</li>

				<li class="se2_pair husky_seditor_ui_BGColor"><span class="selected_color husky_se2m_BGColor_lastUsed" style="background-color:#4477f9"></span><span class="husky_seditor_ui_BGColorA"><button type="button" title="����" class="se2_bgcolor"><span>����</span></button></span><span class="husky_seditor_ui_BGColorB"><button type="button" title="������" class="se2_bgcolor_more"><span class="_buttonRound">������</span></button></span>
					<!-- ���� -->
					<div class="se2_layer se2_layer husky_se2m_BGColor_layer" style="display:none">
						<div class="se2_in_layer">
							<div class="se2_palette_bgcolor">
								<ul class="se2_background husky_se2m_bgcolor_list">
								<li><button type="button" title="����#ff0000 ���ڻ�#ffffff" style="background:#ff0000; color:#ffffff"><span><span>������</span></span></button></li>								
								<li><button type="button" title="����#6d30cf ���ڻ�#ffffff" style="background:#6d30cf; color:#ffffff"><span><span>������</span></span></button></li>
								<li><button type="button" title="����#000000 ���ڻ�#ffffff" style="background:#000000; color:#ffffff"><span><span>������</span></span></button></li>
								<li><button type="button" title="����#ff6600 ���ڻ�#ffffff" style="background:#ff6600; color:#ffffff"><span><span>������</span></span></button></li>
								<li><button type="button" title="����#3333cc ���ڻ�#ffffff" style="background:#3333cc; color:#ffffff"><span><span>������</span></span></button></li>
								<li><button type="button" title="����#333333 ���ڻ�#ffff00" style="background:#333333; color:#ffff00"><span><span>������</span></span></button></li>
								<li><button type="button" title="����#ffa700 ���ڻ�#ffffff" style="background:#ffa700; color:#ffffff"><span><span>������</span></span></button></li>
								<li><button type="button" title="����#009999 ���ڻ�#ffffff" style="background:#009999; color:#ffffff"><span><span>������</span></span></button></li>
								<li><button type="button" title="����#8e8e8e ���ڻ�#ffffff" style="background:#8e8e8e; color:#ffffff"><span><span>������</span></span></button></li>								
								<li><button type="button" title="����#cc9900 ���ڻ�#ffffff" style="background:#cc9900; color:#ffffff"><span><span>������</span></span></button></li>
								<li><button type="button" title="����#77b02b ���ڻ�#ffffff" style="background:#77b02b; color:#ffffff"><span><span>������</span></span></button></li>
								<li><button type="button" title="����#ffffff ���ڻ�#000000" style="background:#ffffff; color:#000000"><span><span>������</span></span></button></li>
								</ul>
							</div>
							<div class="husky_se2m_BGColor_paletteHolder"></div>
                        </div>
					</div>
                    <!-- //���� -->
				</li>

				<li class="husky_seditor_ui_superscript"><button type="button" title="��÷��" class="se2_sup"><span class="_buttonRound">��÷��</span></button></li>

				<li class="husky_seditor_ui_subscript"><button type="button" title="�Ʒ�÷��" class="se2_sub"><span class="_buttonRound">�Ʒ�÷��</span></button></li>
</ul><ul>
				<li class="husky_seditor_ui_justifyleft"><button type="button" title="��������" class="se2_left"><span class="_buttonRound">��������</span></button></li>

				<li class="husky_seditor_ui_justifycenter"><button type="button" title="�������" class="se2_center"><span class="_buttonRound">�������</span></button></li>

				<li class="husky_seditor_ui_justifyright"><button type="button" title="����������" class="se2_right"><span class="_buttonRound">����������</span></button></li>

				<li class="husky_seditor_ui_justifyfull"><button type="button" title="��������" class="se2_justify"><span class="_buttonRound">��������</span></button></li>

				<li class="husky_seditor_ui_lineHeight"><button type="button" title="�ٰ���" class="se2_lineheight" ><span class="_buttonRound">�ٰ���</span></button>
					<!-- �ٰ��� ���̾� -->
					<div class="se2_layer husky_se2m_lineHeight_layer">
						<div class="se2_in_layer">
							<ul class="se2_l_line_height">
							<li><button type="button"><span>50%</span></button></li>
							<li><button type="button"><span>80%</span></button></li>
							<li><button type="button"><span>100%</span></button></li>
							<li><button type="button"><span>120%</span></button></li>
							<li><button type="button"><span>150%</span></button></li>
							<li><button type="button"><span>180%</span></button></li>
							<li><button type="button"><span>200%</span></button></li>
							</ul>
							<div class="se2_l_line_height_user husky_se2m_lineHeight_direct_input">
								<h3>���� �Է�</h3>
								<span class="bx_input">
								<input type="text" class="input_ty1" maxlength="3" style="width:75px">
								<button type="button" title="1% ���ϱ�" class="btn_up"><span>1% ���ϱ�</span></button>
								<button type="button" title="1% ����" class="btn_down"><span>1% ����</span></button>
								</span>		
								<div class="btn_area">
									<button type="button" class="se2_btn_apply3"><span>����</span></button><button type="button" class="se2_btn_cancel3"><span>���</span></button>
								</div>
							</div>
						</div>
					</div>
					<!-- //�ٰ��� ���̾� -->
				</li>
</ul><ul>
				<li class="husky_seditor_ui_text_more" id="se2_text_more"><button title="������" type="button" class="se2_text_tool_more"><span>������</span></button>
					<div class="se2_sub_text_tool se2_sub_step1">
						<ul>
						<li class="husky_seditor_ui_orderedlist"><button type="button" title="��ȣ�ű��" class="se2_ol"><span class="_buttonRound">��ȣ�ű��</span></button></li>
						<li class="husky_seditor_ui_unorderedlist"><button type="button" title="�۸Ӹ���ȣ" class="se2_ul"><span class="_buttonRound">�۸Ӹ���ȣ</span></button></li>
						<li class="husky_seditor_ui_outdent"><button type="button" title="�����[Shift+Tab]" class="se2_outdent"><span class="_buttonRound">�����[Shift+Tab]</span></button></li>
						<li class="husky_seditor_ui_indent"><button type="button" title="�鿩����[Tab]" class="se2_indent"><span class="_buttonRound">�鿩����[Tab]</span></button></li>
						</ul>
					</div>
				</li>
</ul><ul>
				<li class="husky_seditor_ui_quote"><button type="button" title="�ο뱸" class="se2_blockquote"><span class="_buttonRound">�ο뱸</span></button>
					<!-- �ο뱸 -->
					<div class="se2_layer husky_seditor_blockquote_layer" style="margin-left:-407px; display:none;">
						<div class="se2_in_layer">
							<div class="se2_quote">
								<ul>
								<li class="q1"><button type="button" class="se2_quote1"><span><span>�ο뱸 ��Ÿ��1</span></span></button></li>
								<li class="q2"><button type="button" class="se2_quote2"><span><span>�ο뱸 ��Ÿ��2</span></span></button></li>
								<li class="q3"><button type="button" class="se2_quote3"><span><span>�ο뱸 ��Ÿ��3</span></span></button></li>
								<li class="q4"><button type="button" class="se2_quote4"><span><span>�ο뱸 ��Ÿ��4</span></span></button></li>
								<li class="q5"><button type="button" class="se2_quote5"><span><span>�ο뱸 ��Ÿ��5</span></span></button></li>
								<li class="q6"><button type="button" class="se2_quote6"><span><span>�ο뱸 ��Ÿ��6</span></span></button></li>
								<li class="q7"><button type="button" class="se2_quote7"><span><span>�ο뱸 ��Ÿ��7</span></span></button></li>
								<li class="q8"><button type="button" class="se2_quote8"><span><span>�ο뱸 ��Ÿ��8</span></span></button></li>
								<li class="q9"><button type="button" class="se2_quote9"><span><span>�ο뱸 ��Ÿ��9</span></span></button></li>
								<li class="q10"><button type="button" class="se2_quote10"><span><span>�ο뱸 ��Ÿ��10</span></span></button></li>
								</ul>
								<button type="button" class="se2_cancel2"><span>�������</span></button>
							</div>
						</div>
					</div>
					<!-- //�ο뱸 -->
				</li>
</ul><ul>
				<li class="husky_seditor_ui_hyperlink"><button type="button" title="��ũ" class="se2_url"><span class="_buttonRound">��ũ</span></button>
					<!-- ��ũ -->
					<div class="se2_layer" style="margin-left:-285px">
						<div class="se2_in_layer">
							<div class="se2_url2">
								<input type="text" class="input_ty1" value="http://">
								<button type="button" class="se2_apply"><span>����</span></button><button type="button" class="se2_cancel"><span>���</span></button>
							</div>
						</div>
					</div>
					<!-- //��ũ -->
				</li>

				<li class="husky_seditor_ui_sCharacter"><button type="button" title="Ư����ȣ" class="se2_character"><span class="_buttonRound">Ư����ȣ</span></button>
					<!-- Ư����ȣ -->
					<div class="se2_layer husky_seditor_sCharacter_layer" style="margin-left:-448px;">
						<div class="se2_in_layer">
							<div class="se2_bx_character">
								<ul class="se2_char_tab">
								<li class="active"><button type="button" title="�Ϲݱ�ȣ" class="se2_char1"><span>�Ϲݱ�ȣ</span></button>
									<div class="se2_s_character">
										<ul class="husky_se2m_sCharacter_list">
											<li></li>
											<!-- �Ϲݱ�ȣ ��� -->
											<!-- <li class="hover"><button type="button"><span>��</span></button></li><li class="active"><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li> -->
										</ul>
									</div>
								</li>
								<li><button type="button" title="���ڿ� ����" class="se2_char2"><span>���ڿ� ����</span></button>
									<div class="se2_s_character">
										<ul class="husky_se2m_sCharacter_list">
											<li></li>
											<!-- ���ڿ� ���� ��� -->
											<!-- <li class="hover"><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>$</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>A</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li> -->
										</ul>
									</div>
								</li>
								<li><button type="button" title="��,��ȣ" class="se2_char3"><span>��,��ȣ</span></button>
									<div class="se2_s_character">
										<ul class="husky_se2m_sCharacter_list">
											<li></li>
											<!-- ��,��ȣ ��� -->
											<!-- <li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li class="hover"><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li> -->
										</ul>
									</div>
								</li>
								<li><button type="button" title="�ѱ�" class="se2_char4"><span>�ѱ�</span></button>
									<div class="se2_s_character">
										<ul class="husky_se2m_sCharacter_list">
											<li></li>
											<!-- �ѱ� ��� -->
											<!-- <li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li> -->
										</ul>
									</div>
								</li>
								<li><button type="button" title="�׸���,��ƾ��" class="se2_char5"><span>�׸���,��ƾ��</span></button>
									<div class="se2_s_character">
										<ul class="husky_se2m_sCharacter_list">
											<li></li>
											<!-- �׸���,��ƾ�� ��� -->
											<!-- <li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li class="hover"><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>I</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li> -->
										</ul>
									</div>
								</li>
								<li><button type="button" title="�Ϻ���" class="se2_char6"><span>�Ϻ���</span></button>
									<div class="se2_s_character">
										<ul class="husky_se2m_sCharacter_list">
											<li></li>
											<!-- �Ϻ��� ��� -->
											<!-- <li><button type="button"><span>��</span></button></li><li class="hover"><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li><li><button type="button"><span>��</span></button></li> -->
										</ul>
									</div>
								</li>
								</ul>
								<p class="se2_apply_character">
									<label for="char_preview">������ ��ȣ</label> <input type="text" name="char_preview" id="char_preview" value="�稬���ܡ�" class="input_ty1"><button type="button" class="se2_confirm"><span>����</span></button><button type="button" class="se2_cancel husky_se2m_sCharacter_close"><span>���</span></button>
								</p>
							</div>
						</div>
					</div>
					<!-- //Ư����ȣ -->
				</li>

				<li class="husky_seditor_ui_table"><button type="button" title="ǥ" class="se2_table"><span class="_buttonRound">ǥ</span></button>
					<!--@lazyload_html create_table-->
					<!-- ǥ -->
					<div class="se2_layer husky_se2m_table_layer" style="margin-left:-171px">
						<div class="se2_in_layer">
							<div class="se2_table_set">
								<fieldset>
								<legend>ĭ�� ����</legend>
									<dl class="se2_cell_num">
									<dt><label for="row">��</label></dt>
									<dd><input id="row" name="" type="text" maxlength="2" value="4" class="input_ty2">
										<button type="button" class="se2_add"><span>1���߰�</span></button>
										<button type="button" class="se2_del"><span>1�����</span></button>
									</dd>
									<dt><label for="col">��</label></dt>
									<dd><input id="col" name="" type="text" maxlength="2" value="4" class="input_ty2">
										<button type="button" class="se2_add"><span>1���߰�</span></button>
										<button type="button" class="se2_del"><span>1������</span></button>
									</dd>
									</dl>
									<table border="0" cellspacing="1" class="se2_pre_table husky_se2m_table_preview">
									<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									</tr>
									<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									</tr>
									<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									</tr>
									</table>
								</fieldset>
								<fieldset>
									<legend>�Ӽ������Է�</legend>
									<dl class="se2_t_proper1">
									<dt><input type="radio" id="se2_tbp1" name="se2_tbp" checked><label for="se2_tbp1">�Ӽ������Է�</label></dt>
									<dd>
										<dl class="se2_t_proper1_1">
										<dt><label>ǥ��Ÿ��</label></dt>
										<dd><div class="se2_select_ty1"><span class="se2_b_style3 husky_se2m_table_border_style_preview"></span><button type="button" title="������" class="se2_view_more"><span>������</span></button></div>
											<!-- ���̾� : �׵θ���Ÿ�� -->
											<div class="se2_layer_b_style husky_se2m_table_border_style_layer" style="display:none">
												<ul>
												<li><button type="button" class="se2_b_style1"><span class="se2m_no_border">�׵θ�����</span></button></li>
												<li><button type="button" class="se2_b_style2"><span><span>�׵θ���Ÿ��2</span></span></button></li>
												<li><button type="button" class="se2_b_style3"><span><span>�׵θ���Ÿ��3</span></span></button></li>
												<li><button type="button" class="se2_b_style4"><span><span>�׵θ���Ÿ��4</span></span></button></li>
												<li><button type="button" class="se2_b_style5"><span><span>�׵θ���Ÿ��5</span></span></button></li>
												<li><button type="button" class="se2_b_style6"><span><span>�׵θ���Ÿ��6</span></span></button></li>
												<li><button type="button" class="se2_b_style7"><span><span>�׵θ���Ÿ��7</span></span></button></li>
												</ul>
											</div>
											<!-- //���̾� : �׵θ���Ÿ�� -->
										</dd>
										</dl>
										<dl class="se2_t_proper1_1 se2_t_proper1_2">
										<dt><label for="se2_b_width">�׵θ��β�</label></dt>
										<dd><input id="se2_b_width" name="" type="text" maxlength="2" value="1" class="input_ty1">
											<button type="button" title="1px ���ϱ�" class="se2_add se2m_incBorder"><span>1px ���ϱ�</span></button>
											<button type="button" title="1px ����" class="se2_del se2m_decBorder"><span>1px ����</span></button>
										</dd>
										</dl>
										<dl class="se2_t_proper1_1 se2_t_proper1_3">
										<dt><label for="se2_b_color">�׵θ���</label></dt>
										<dd><input id="se2_b_color" name="" type="text" maxlength="7" value="#cccccc" class="input_ty3"><span class="se2_pre_color"><button type="button" style="background:#cccccc;"><span>��ã��</span></button></span>	
										<!-- ���̾� : �׵θ��� -->
											<div class="se2_layer se2_b_t_b1" style="clear:both;display:none;position:absolute;top:20px;left:-147px;">
												<div class="se2_in_layer husky_se2m_table_border_color_pallet">
												</div>
											</div>
										<!-- //���̾� : �׵θ���-->
										</dd>
										</dl>
										<div class="se2_t_dim0"></div><!-- �׵θ� �����϶� ���巹�̾� -->
										<dl class="se2_t_proper1_1 se2_t_proper1_4">
										<dt><label for="se2_cellbg">�� ����</label></dt>
										<dd><input id="se2_cellbg" name="" type="text" maxlength="7" value="#ffffff" class="input_ty3"><span class="se2_pre_color"><button type="button" style="background:#ffffff;"><span>��ã��</span></button></span>
										<!-- ���̾� : ������ -->
										<div class="se2_layer se2_b_t_b1" style="clear:both;display:none;position:absolute;top:20px;left:-147px;">
											<div class="se2_in_layer husky_se2m_table_bgcolor_pallet">
											</div>
										</div>
										<!-- //���̾� : ������-->
										</dd>
										</dl>
									</dd>
									</dl>
								</fieldset>
								<fieldset>
									<legend>ǥ��Ÿ��</legend>
									<dl class="se2_t_proper2">
									<dt><input type="radio" id="se2_tbp2" name="se2_tbp"><label for="se2_tbp2">��Ÿ�� ����</label></dt>
									<dd><div class="se2_select_ty2"><span class="se2_t_style1 husky_se2m_table_style_preview"></span><button type="button" title="������" class="se2_view_more"><span>������</span></button></div>
										<!-- ���̾� : ǥ���ø����� -->
										<div class="se2_layer_t_style husky_se2m_table_style_layer" style="display:none">
											<ul class="se2_scroll">
											<li><button type="button" class="se2_t_style1"><span>ǥ��Ÿ��1</span></button></li>
											<li><button type="button" class="se2_t_style2"><span>ǥ��Ÿ��2</span></button></li>
											<li><button type="button" class="se2_t_style3"><span>ǥ��Ÿ��3</span></button></li>
											<li><button type="button" class="se2_t_style4"><span>ǥ��Ÿ��4</span></button></li>
											<li><button type="button" class="se2_t_style5"><span>ǥ��Ÿ��5</span></button></li>
											<li><button type="button" class="se2_t_style6"><span>ǥ��Ÿ��6</span></button></li>
											<li><button type="button" class="se2_t_style7"><span>ǥ��Ÿ��7</span></button></li>
											<li><button type="button" class="se2_t_style8"><span>ǥ��Ÿ��8</span></button></li>
											<li><button type="button" class="se2_t_style9"><span>ǥ��Ÿ��9</span></button></li>
											<li><button type="button" class="se2_t_style10"><span>ǥ��Ÿ��10</span></button></li>
											<li><button type="button" class="se2_t_style11"><span>ǥ��Ÿ��11</span></button></li>
											<li><button type="button" class="se2_t_style12"><span>ǥ��Ÿ��12</span></button></li>
											<li><button type="button" class="se2_t_style13"><span>ǥ��Ÿ��13</span></button></li>
											<li><button type="button" class="se2_t_style14"><span>ǥ��Ÿ��14</span></button></li>
											<li><button type="button" class="se2_t_style15"><span>ǥ��Ÿ��15</span></button></li>
											<li><button type="button" class="se2_t_style16"><span>ǥ��Ÿ��16</span></button></li>
											</ul>
										</div>
										<!-- //���̾� : ǥ���ø����� -->
									</dd>
									</dl>
								</fieldset>
								<p class="se2_btn_area">
									<button type="button" class="se2_apply"><span>����</span></button><button type="button" class="se2_cancel"><span>���</span></button>
								</p>
								<!-- ���巹�̾� -->
								<div class="se2_t_dim3"></div>
								<!-- //���巹�̾� -->
							</div>
						</div>
					</div>
					<!-- //ǥ -->
					<!--//@lazyload_html-->
				</li>

				<li class="husky_seditor_ui_findAndReplace"><button type="button" title="ã��/�ٲٱ�" class="se2_find"><span class="_buttonRound">ã��/�ٲٱ�</span></button>
					<!--@lazyload_html find_and_replace-->
					<!-- ã��/�ٲٱ� -->
					<div class="se2_layer husky_se2m_findAndReplace_layer" style="margin-left:-238px;">
						<div class="se2_in_layer">
							<div class="se2_bx_find_revise">
								<button type="button" title="�ݱ�" class="se2_close husky_se2m_cancel"><span>�ݱ�</span></button>
								<h3>ã��/�ٲٱ�</h3>
								<ul>
								<li class="active"><button type="button" class="se2_tabfind"><span>ã��</span></button></li>
								<li><button type="button" class="se2_tabrevise"><span>�ٲٱ�</span></button></li>
								</ul>
								<div class="se2_in_bx_find husky_se2m_find_ui" style="display:block">
									<dl>
									<dt><label for="find_word">ã���ܾ�</label></dt><dd><input type="text" id="find_word" value="����Ʈ������" class="input_ty1"></dd>
									</dl>
									<p class="se2_find_btns">
										<button type="button" class="se2_find_next husky_se2m_find_next"><span>���� ã��</span></button><button type="button" class="se2_cancel husky_se2m_cancel"><span>���</span></button>
									</p>
								</div>
								<div class="se2_in_bx_revise husky_se2m_replace_ui" style="display:none">
									<dl>
									<dt><label for="find_word2">ã���ܾ�</label></dt><dd><input type="text" id="find_word2" value="����Ʈ������" class="input_ty1"></dd>
									<dt><label for="revise_word">�ٲܴܾ�</label></dt><dd><input type="text" id="revise_word" value="����Ʈ������" class="input_ty1"></dd>
									</dl>
									<p class="se2_find_btns">
										<button type="button" class="se2_find_next2 husky_se2m_replace_find_next"><span>����ã��</span></button><button type="button" class="se2_revise1 husky_se2m_replace"><span>�ٲٱ�</span></button><button type="button" class="se2_revise2 husky_se2m_replace_all"><span>��� �ٲٱ�</span></button><button type="button" class="se2_cancel husky_se2m_cancel"><span>���</span></button>
									</p>
								</div>
								<button type="button" title="�ݱ�" class="se2_close husky_se2m_cancel"><span>�ݱ�</span></button>
							</div>
						</div>
					</div>
					<!-- //ã��/�ٲٱ� -->
					<!--//@lazyload_html-->
				</li>
</ul>
				<ul class="se2_multy">
					<li class="se2_mn husky_seditor_ui_photo_attach">
						<button type="button" class="se2_photo ico_btn">
						<span class="se2_icon"></span>
						<span class="se2_mntxt">����
							<span class="se2_new"></span>
						</span>
						</button>
					</li>
				</ul>
			</div>
			<!-- //704�̻� -->
		</div>
		
				<!-- ���ټ� ���� ���̾� -->
		<div class="se2_layer se2_accessibility" style="display:none;">
			<div class="se2_in_layer">
				<button type="button" title="�ݱ�" class="se2_close"><span>�ݱ�</span></button>
				<h3><strong>���ټ� ����</strong></h3>
				<div class="box_help">
					<div>
						<strong>����</strong>
						<p>ALT+F10 �� ������ ���ٷ� �̵��մϴ�. ���� ��ư�� TAB ���� ���� ��ư�� SHIFT+TAB ���� �̵� �����մϴ�. ENTER �� ������ �ش� ��ư�� ����� �����ϰ� �۾��� �������� ��Ŀ���� �̵��մϴ�. ESC �� ������ �ƹ��� ����� �������� �ʰ� �۾��� �������� ��Ŀ���� �̵��մϴ�.</p>
						<strong>���� ������</strong>
						<p>ALT+. �� ������ ����Ʈ ������ ���� ��ҷ� ALT+, �� ������ ����Ʈ������ ���� ��ҷ� �������� �� �ֽ��ϴ�.</p>
						<strong>���ɾ� ����Ű</strong>
						<ul>
						<li>CTRL+B <span>����</span></li>
						<li>SHIFT+TAB <span>�����</span></li>
						<li>CTRL+U <span>����</span></li>
						<li>CTRL+F <span>ã��</span></li>
						<li>CTRL+I <span>����� �۲�</span></li>
						<li>CTRL+H <span>�ٲٱ�</span></li>
						<li>CTRL+D <span>��Ҽ�</span></li>
						<li>CTRL+K <span>��ũ�ɱ�</span></li>
						<li>TAB <span>�鿩����</span></li>
						</ul>
					</div>
				</div>
				<div class="se2_btns">
					<button type="button" class="se2_close2"><span>�ݱ�</span></button>
				</div>
			</div>
		</div>		
		<!-- //���ټ� ���� ���̾� -->

		<hr>
		<!-- �Է� -->
		<div class="se2_input_area husky_seditor_editing_area_container">
			
			
			<iframe src="about:blank" id="se2_iframe" name="se2_iframe" class="se2_input_wysiwyg" width="400" height="300" title="�۾��� ���� : ���� ������ ALT+F10��, ������ ALT+0�� ��������." frameborder="0" style="display:block;"></iframe>
			<textarea name="" rows="10" cols="100" title="HTML ���� ���" class="se2_input_syntax se2_input_htmlsrc" style="display:none;outline-style:none;resize:none"> </textarea>
			<textarea name="" rows="10" cols="100" title="TEXT ���� ���" class="se2_input_syntax se2_input_text" style="display:none;outline-style:none;resize:none;"> </textarea>
			
			<!-- �Է�â ���� �ȳ� ���̾� -->
			<div class="ly_controller husky_seditor_resize_notice" style="z-index:20;display:none;">
				<p>�Ʒ� ������ �巡���Ͽ� �Է�â ũ�⸦ ������ �� �ֽ��ϴ�.</p>
				<button type="button" title="�ݱ�" class="bt_clse"><span>�ݱ�</span></button>
				<span class="ic_arr"></span>
			</div>
			<!-- //�Է�â ���� �ȳ� ���̾� -->
						<div class="quick_wrap">
				<!-- ǥ/�۾�� ���������� -->
				<!--@lazyload_html qe_table-->
				<div class="q_table_wrap" style="z-index: 150;">
				<button class="_fold se2_qmax q_open_table_full" style="position:absolute; display:none;top:340px;left:210px;z-index:30;" title="�ִ�ȭ" type="button"><span>���������ִ�ȭ</span></button>
				<div class="_full se2_qeditor se2_table_set" style="position:absolute;display:none;top:135px;left:661px;z-index:30;">
					<div class="se2_qbar q_dragable"><span class="se2_qmini"><button title="�ּ�ȭ" class="q_open_table_fold"><span>���������ּ�ȭ</span></button></span></div>
					<div class="se2_qbody0">
						<div class="se2_qbody">
							<dl class="se2_qe1">
							<dt>����</dt><dd><button class="se2_addrow" title="�����" type="button"><span>�����</span></button><button class="se2_addcol" title="������" type="button"><span>������</span></button></dd>
							<dt>����</dt><dd><button class="se2_seprow" title="�����" type="button"><span>�����</span></button><button class="se2_sepcol" title="������" type="button"><span>������</span></button></dd>

							<dt>����</dt><dd><button class="se2_delrow" title="�����" type="button"><span>�����</span></button><button class="se2_delcol" title="������" type="button"><span>������</span></button></dd>
							<dt>����</dt><dd><button class="se2_merrow" title="�ິ��" type="button"><span>�ິ��</span></button></dd>
							</dl>
							<div class="se2_qe2 se2_qe2_3"> <!-- ���̺� ���������� ��츸,  se2_qe2_3���� -->
								<!-- ������ -->
								<dl class="se2_qe2_1">

								<dt><input type="radio" checked="checked" name="se2_tbp3" id="se2_cellbg2" class="husky_se2m_radio_bgc"><label for="se2_cellbg2">�� ����</label></dt>
								<dd><span class="se2_pre_color"><button style="background: none repeat scroll 0% 0% rgb(255, 255, 255);" type="button" class="husky_se2m_table_qe_bgcolor_btn"><span>��ã��</span></button></span>		
									<!-- layer:������ -->
									<div style="display:none;position:absolute;top:20px;left:0px;" class="se2_layer se2_b_t_b1">
										<div class="se2_in_layer husky_se2m_tbl_qe_bg_paletteHolder">
										</div>
									</div>
									<!-- //layer:������-->

								</dd>
								</dl>
								<!-- //������ -->
								<!-- ����̹������� -->
								<dl style="display: none;" class="se2_qe2_2 husky_se2m_tbl_qe_review_bg">
								<dt><input type="radio" name="se2_tbp3" id="se2_cellbg3" class="husky_se2m_radio_bgimg"><label for="se2_cellbg3">�̹���</label></dt>
								<dd><span class="se2_pre_bgimg"><button class="husky_se2m_table_qe_bgimage_btn se2_cellimg0" type="button"><span>����̹�������</span></button></span>
									<!-- layer:����̹������� -->
									<div style="display:none;position:absolute;top:20px;left:-155px;" class="se2_layer se2_b_t_b1">
										<div class="se2_in_layer husky_se2m_tbl_qe_bg_img_paletteHolder">
											<ul class="se2_cellimg_set">
											<li><button class="se2_cellimg0" type="button"><span>������</span></button></li>
											<li><button class="se2_cellimg1" type="button"><span>���1</span></button></li>
											<li><button class="se2_cellimg2" type="button"><span>���2</span></button></li>
											<li><button class="se2_cellimg3" type="button"><span>���3</span></button></li>
											<li><button class="se2_cellimg4" type="button"><span>���4</span></button></li>
											<li><button class="se2_cellimg5" type="button"><span>���5</span></button></li>
											<li><button class="se2_cellimg6" type="button"><span>���6</span></button></li>
											<li><button class="se2_cellimg7" type="button"><span>���7</span></button></li>
											<li><button class="se2_cellimg8" type="button"><span>���8</span></button></li>
											<li><button class="se2_cellimg9" type="button"><span>���9</span></button></li>
											<li><button class="se2_cellimg10" type="button"><span>���10</span></button></li>
											<li><button class="se2_cellimg11" type="button"><span>���11</span></button></li>
											<li><button class="se2_cellimg12" type="button"><span>���12</span></button></li>
											<li><button class="se2_cellimg13" type="button"><span>���13</span></button></li>
											<li><button class="se2_cellimg14" type="button"><span>���14</span></button></li>
											<li><button class="se2_cellimg15" type="button"><span>���15</span></button></li>
											<li><button class="se2_cellimg16" type="button"><span>���16</span></button></li>
											<li><button class="se2_cellimg17" type="button"><span>���17</span></button></li>
											<li><button class="se2_cellimg18" type="button"><span>���18</span></button></li>
											<li><button class="se2_cellimg19" type="button"><span>���19</span></button></li>
											<li><button class="se2_cellimg20" type="button"><span>���20</span></button></li>
											<li><button class="se2_cellimg21" type="button"><span>���21</span></button></li>
											<li><button class="se2_cellimg22" type="button"><span>���22</span></button></li>
											<li><button class="se2_cellimg23" type="button"><span>���23</span></button></li>
											<li><button class="se2_cellimg24" type="button"><span>���24</span></button></li>
											<li><button class="se2_cellimg25" type="button"><span>���25</span></button></li>
											<li><button class="se2_cellimg26" type="button"><span>���26</span></button></li>
											<li><button class="se2_cellimg27" type="button"><span>���27</span></button></li>
											<li><button class="se2_cellimg28" type="button"><span>���28</span></button></li>
											<li><button class="se2_cellimg29" type="button"><span>���29</span></button></li>
											<li><button class="se2_cellimg30" type="button"><span>���30</span></button></li>
											<li><button class="se2_cellimg31" type="button"><span>���31</span></button></li>
											</ul>
										</div>
									</div>
									<!-- //layer:����̹�������-->
								</dd>
								</dl>
								<!-- //����̹������� -->
							</div>
							<dl style="display: block;" class="se2_qe3 se2_t_proper2">
							<dt><input type="radio" name="se2_tbp3" id="se2_tbp4" class="husky_se2m_radio_template"><label for="se2_tbp4">ǥ ��Ÿ��</label></dt>
							<dd>
								<div class="se2_qe3_table">
								<div class="se2_select_ty2"><span class="se2_t_style1"></span><button class="se2_view_more husky_se2m_template_more" title="������" type="button"><span>������</span></button></div>
								<!-- layer:ǥ��Ÿ�� -->
								<div style="display:none;top:33px;left:0;margin:0;" class="se2_layer_t_style">
									<ul>
									<li><button class="se2_t_style1" type="button"><span>ǥ ��Ÿ��1</span></button></li>
									<li><button class="se2_t_style2" type="button"><span>ǥ ��Ÿ��2</span></button></li>
									<li><button class="se2_t_style3" type="button"><span>ǥ ��Ÿ��3</span></button></li>
									<li><button class="se2_t_style4" type="button"><span>ǥ ��Ÿ��4</span></button></li>
									<li><button class="se2_t_style5" type="button"><span>ǥ ��Ÿ��5</span></button></li>
									<li><button class="se2_t_style6" type="button"><span>ǥ ��Ÿ��6</span></button></li>
									<li><button class="se2_t_style7" type="button"><span>ǥ ��Ÿ��7</span></button></li>
									<li><button class="se2_t_style8" type="button"><span>ǥ ��Ÿ��8</span></button></li>
									<li><button class="se2_t_style9" type="button"><span>ǥ ��Ÿ��9</span></button></li>
									<li><button class="se2_t_style10" type="button"><span>ǥ ��Ÿ��10</span></button></li>
									<li><button class="se2_t_style11" type="button"><span>ǥ ��Ÿ��11</span></button></li>
									<li><button class="se2_t_style12" type="button"><span>ǥ ��Ÿ��12</span></button></li>
									<li><button class="se2_t_style13" type="button"><span>ǥ ��Ÿ��13</span></button></li>
									<li><button class="se2_t_style14" type="button"><span>ǥ ��Ÿ��14</span></button></li>
									<li><button class="se2_t_style15" type="button"><span>ǥ ��Ÿ��15</span></button></li>
									<li><button class="se2_t_style16" type="button"><span>ǥ ��Ÿ��16</span></button></li>
									</ul>
								</div>
								<!-- //layer:ǥ��Ÿ�� -->
								</div>
							</dd>
							</dl>
							<div style="display:none" class="se2_btn_area">
								<button class="se2_btn_save" type="button"><span>My ��������</span></button>
							</div>
							<div class="se2_qdim0 husky_se2m_tbl_qe_dim1"></div>
							<div class="se2_qdim4 husky_se2m_tbl_qe_dim2"></div>
							<div class="se2_qdim6c husky_se2m_tbl_qe_dim_del_col"></div>
							<div class="se2_qdim6r husky_se2m_tbl_qe_dim_del_row"></div>
						</div>
					</div>
				</div>
				</div>
				<!--//@lazyload_html-->
				<!-- //ǥ/�۾�� ���������� -->
				<!-- �̹��� ���������� -->
				<!--@lazyload_html qe_image-->
				<div class="q_img_wrap">
					<button class="_fold se2_qmax q_open_img_full" style="position:absolute;display:none;top:240px;left:210px;z-index:30;" title="�ִ�ȭ" type="button"><span>���������ִ�ȭ</span></button>
					<div class="_full se2_qeditor se2_table_set" style="position:absolute;display:none;top:140px;left:450px;z-index:30;">
						<div class="se2_qbar  q_dragable"><span class="se2_qmini"><button title="�ּ�ȭ" class="q_open_img_fold"><span>���������ּ�ȭ</span></button></span></div>
						<div class="se2_qbody0">
							<div class="se2_qbody">
								<div class="se2_qe10">
									<label for="se2_swidth">����</label><input type="text" class="input_ty1 widthimg" name="" id="se2_swidth" value="1024"><label class="se2_sheight" for="se2_sheight">����</label><input type="text" class="input_ty1 heightimg" name="" id="se2_sheight" value="768"><button class="se2_sreset" type="button"><span>�ʱ�ȭ</span></button>
									<div class="se2_qe10_1"><input type="checkbox" name="" class="se2_srate" id="se2_srate"><label for="se2_srate">���� ���� ���� ����</label></div>
								</div>
								<div class="se2_qe11">
									<dl class="se2_qe11_1">
									<dt><label for="se2_b_width2">�׵θ��β�</label></dt>
										<dd class="se2_numberStepper"><input type="text" class="input_ty1 input bordersize" value="1" maxlength="2" name="" id="se2_b_width2" readonly="readonly">
										<button class="se2_add plus" type="button"><span>1px ���ϱ�</span></button>
										<button class="se2_del minus" type="button"><span>1px ����</span></button>
									</dd>
									</dl>

									<dl class="se2_qe11_2">
									<dt>�׵θ� ��</dt>
									<dd><span class="se2_pre_color"><button style="background:#000000;" type="button" class="husky_se2m_img_qe_bgcolor_btn"><span>��ã��</span></button></span>
										<!-- layer:�׵θ� �� -->
										<div style="display:none;position:absolute;top:20px;left:-209px;" class="se2_layer se2_b_t_b1">
											<div class="se2_in_layer husky_se2m_img_qe_bg_paletteHolder">
											</div>
										</div>
										<!-- //layer:�׵θ� �� -->
									</dd>
									</dl>
								</div>
								<dl class="se2_qe12">
								<dt>����</dt>
								<dd><button title="���ľ���" class="se2_align0" type="button"><span>���ľ���</span></button><button title="��������" class="se2_align1 left" type="button"><span>��������</span></button><button title="��������" class="se2_align2 right" type="button"><span>��������</span></button>
								</dd>
								</dl>
								<button class="se2_highedit" type="button"><span>��������</span></button>
								<div class="se2_qdim0"></div>
							</div>
						</div>
					</div>
				</div>
				<!--//@lazyload_html-->
				<!-- �̹��� ���������� -->
			</div>
		</div>
		<!-- //�Է� -->
		<!-- �Է�â����/ �����ȯ -->
		<div class="se2_conversion_mode">
			<button type="button" class="se2_inputarea_controller husky_seditor_editingArea_verticalResizer" title="�Է�â ũ�� ����"><span>�Է�â ũ�� ����</span></button>
			<ul class="se2_converter">
			<li class="active"><button type="button" class="se2_to_editor"><span>Editor</span></button></li>
			<li><button type="button" class="se2_to_html"><span>HTML</span></button></li>
			<li><button type="button" class="se2_to_text"><span>TEXT</span></button></li>
			</ul>
		</div>
		<!-- //�Է�â����/ �����ȯ -->
		<hr>
		
	</div>
</div>
<!-- SE2 Markup End -->


</body>
</html>