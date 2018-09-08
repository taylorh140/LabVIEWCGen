<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="CodeElements" Type="Folder">
			<Item Name="CodeElement.lvclass" Type="LVClass" URL="../CodeElements/Base/CodeElement.lvclass"/>
			<Item Name="Constant_Decl_Def.lvclass" Type="LVClass" URL="../CodeElements/Constant_Decl_Def_class/Constant_Decl_Def.lvclass"/>
			<Item Name="RawCodeElement.lvclass" Type="LVClass" URL="../CodeElements/RawCodeElement_class/RawCodeElement.lvclass"/>
			<Item Name="SetInputValue.lvclass" Type="LVClass" URL="../CodeElements/SetInputValue_class/SetInputValue.lvclass"/>
			<Item Name="SetIntermediateValue.lvclass" Type="LVClass" URL="../CodeElements/SetIntermediateValue_class/SetIntermediateValue.lvclass"/>
			<Item Name="SetIntermediateValueDoLast.lvclass" Type="LVClass" URL="../CodeElements/SetIntermediateValueDoLast_class/SetIntermediateValueDoLast.lvclass"/>
			<Item Name="SetReturnValue.lvclass" Type="LVClass" URL="../CodeElements/SetReturnValue_class/SetReturnValue.lvclass"/>
			<Item Name="SwitchCaseElement.lvclass" Type="LVClass" URL="../CodeElements/SwitchCaseElement_class/SwitchCaseElement.lvclass"/>
			<Item Name="Typedef_Element.lvclass" Type="LVClass" URL="../CodeElements/Typedef_Element_class/Typedef_Element.lvclass"/>
			<Item Name="Variable_Declaration.lvclass" Type="LVClass" URL="../CodeElements/Variable_Declaration/Variable_Declaration.lvclass"/>
		</Item>
		<Item Name="Converter" Type="Folder">
			<Item Name="c_DECLARE_IO.vi" Type="VI" URL="../c_DECLARE_IO.vi"/>
			<Item Name="c_GENERATE_OPERATIONS.vi" Type="VI" URL="../c_GENERATE_OPERATIONS.vi"/>
			<Item Name="c_SET_OUTPUT_VALUES.vi" Type="VI" URL="../c_SET_OUTPUT_VALUES.vi"/>
			<Item Name="CleanViName.vi" Type="VI" URL="../CleanViName.vi"/>
			<Item Name="Converter.vi" Type="VI" URL="../Converter.vi"/>
			<Item Name="GetControlsAndIndicators.vi" Type="VI" URL="../GetControlsAndIndicators.vi"/>
			<Item Name="NameWires.vi" Type="VI" URL="../NameWires.vi"/>
			<Item Name="TermTypeToString.vi" Type="VI" URL="../TermTypeToString.vi"/>
		</Item>
		<Item Name="Test" Type="Folder">
			<Item Name="Test1.vi" Type="VI" URL="../Test1.vi"/>
			<Item Name="Test2.vi" Type="VI" URL="../Test2.vi"/>
			<Item Name="Test3.vi" Type="VI" URL="../Test3.vi"/>
			<Item Name="Test4.vi" Type="VI" URL="../Test4.vi"/>
			<Item Name="Test5.vi" Type="VI" URL="../Test5.vi"/>
		</Item>
		<Item Name="Utilities" Type="Folder">
			<Item Name="Split Lines.vi" Type="VI" URL="../Split Lines.vi"/>
			<Item Name="TabJoinLines.vi" Type="VI" URL="../TabJoinLines.vi"/>
			<Item Name="TabOver.vi" Type="VI" URL="../Utilites/TabOver.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="Join Strings.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/Join Strings.vi"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
