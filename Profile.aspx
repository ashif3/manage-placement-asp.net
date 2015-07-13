<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Profilee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
     
        .auto-style8 {
            font-size: x-large;
            text-align: center;
        }
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h1>Profile</h1>
	<div>
		<asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="Button1_Click" />
		<h2>
			<a name="t1" id="t1">Basic Info</a></h2>
		<asp:FormView ID="FormView1" runat="server" DataKeyNames="sid" DataSourceID="SqlDataSource1">
			<EditItemTemplate>
				
				<table>
					<tr>
						<td>
							<b>Name</b>
						</td>
						<td>:
								<asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Course</b>
						</td>
						<td>:
							<asp:Label ID="courseLabel" runat="server" Text='<%# Bind("course") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Batch</b>
						</td>
						<td>:
								<asp:Label ID="batchLabel" runat="server" Text='<%# Bind("batch") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Belongs To</b>
						</td>
						<td>:
								<asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Gender</b>
						</td>
						<td>:
								<asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("gender") %>'>
									<asp:ListItem Text="Select" Value="">
									</asp:ListItem>

									<asp:ListItem Text="Male" Value="Male">
									</asp:ListItem>
									<asp:ListItem Text="Female" Value="Female">
									</asp:ListItem>
								</asp:DropDownList>
						</td>
					</tr>
					<tr>
						<td>
							<b>Date of Birth</b>
						</td>
						<td>:
								<asp:TextBox class="inputDate" ID="inputDate" runat="server" Text='<%# Bind("dob") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Father's Name</b>
						</td>
						<td>:
								<asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Mother's Name</b>
						</td>
						<td>:
								<asp:TextBox ID="mnameTextBox" runat="server" Text='<%# Bind("mname") %>' />
						</td>
					</tr>
                    <tr>
						<td>
							<b>Image</b>
						</td>
						<td>:
								<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>' />
						</td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
							runat="server" CausesValidation="True"
							CommandName="Update" Text="Update" />
						</td>
						<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
							runat="server"
							CausesValidation="False" CommandName="Cancel" Text="Cancel" />
						</td>
					</tr>
				</table>
			</EditItemTemplate>
			<ItemTemplate>
				
				<table>
					<tr>
                        
						<td>
							<b>Name</b>
						</td>
						<td>:
								<asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Course</b>
						</td>
						<td>:
								<asp:Label ID="courseLabel" runat="server" Text='<%# Bind("course") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Batch</b>
						</td>
						<td>:
								<asp:Label ID="batchLabel" runat="server" Text='<%# Bind("batch") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Belongs To</b>
						</td>
						<td>:
								<asp:Label ID="placeLabel" runat="server" Text='<%# Bind("place") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Gender</b>
						</td>
						<td>:
								<asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Date of Birth</b>
						</td>
						<td>:
								<asp:Label ID="dobLabel" runat="server" Text='<%# Bind("dob") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Father's Name</b>
						</td>
						<td>:
								<asp:Label ID="fnameLabel" runat="server" Text='<%# Bind("fname") %>' />
						</td>
					</tr>
					<tr>
						<td>
							<b>Mother's Name</b>
						</td>
						<td>:
								<asp:Label ID="mnameLabel" runat="server" Text='<%# Bind("mname") %>' />
						</td>
					</tr>
                    <tr>
						<td>
							<b>Image</b>
						</td>
						<td>:
								<asp:Label ID="Label2" runat="server" Text='<%# Bind("image") %>' />
						</td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;<asp:LinkButton ID="EditButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 50px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
							runat="server" CausesValidation="False"
							CommandName="Edit" Text="Edit" />
						</td>
						<td></td>
					</tr>
				</table>
			</ItemTemplate>
		</asp:FormView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
			DeleteCommand="DELETE FROM [students] WHERE [sid] = @sid" InsertCommand="INSERT INTO [students] ([image], [name], [course], [batch], [place], [gender], [dob], [fname], [mname]) VALUES (@image, @name, @course, @batch, @place, @gender, @dob, @fname, @mname)"
			SelectCommand="SELECT [sid], [image], [name], [course], [batch], [place], [gender], [dob], [fname], [mname] FROM [students] WHERE ([email] = @email)"
			UpdateCommand="UPDATE [students] SET [place] = @place, [gender] = @gender, [dob] = @dob, [fname] = @fname, [mname] = @mname, [image] = @image WHERE [sid] = @sid">
			<SelectParameters>
				<asp:SessionParameter SessionField="StudentUser" Name="email" Type="String" />
				<%--<asp:CookieParameter CookieName="StudentUser" Name="email" Type="String" />--%>
			</SelectParameters>
			<UpdateParameters>
				<asp:Parameter Name="image" Type="String" />
				<asp:Parameter Name="name" Type="String" />
				<asp:Parameter Name="course" Type="String" />
				<asp:Parameter Name="batch" Type="String" />
				<asp:Parameter Name="place" Type="String" />
				<asp:Parameter Name="gender" Type="String" />
				<asp:Parameter Name="dob" Type="String" />
				<asp:Parameter Name="fname" Type="String" />
				<asp:Parameter Name="mname" Type="String" />
				<asp:Parameter Name="sid" Type="Int32" />
			</UpdateParameters>
		</asp:SqlDataSource>
		<br />
	</div>


	
			<h2><a name="t2" id="t2">Education Qualification</a></h2>
			<asp:FormView ID="FormView5" runat="server" DataKeyNames="sid" DataSourceID="SqlDataSource5">
				<EditItemTemplate>
					<table cellspacing="10px">
						<tr>
							<th></th>
							<th>Stream
							</th>
							<th>Passout Year
							</th>
							<th>Board/University
							</th>
							<th>Aggregate Percentage
							</th>
						</tr>
						<tr>
							<th>10th</th>
							<td>
								<asp:DropDownList ID="DropDownList2" runat="server" Width="100px" SelectedValue='<%# Bind("tnstream") %>'>
									<asp:ListItem Text="Select" Value="">
									</asp:ListItem>
									<asp:ListItem Text="English" Value="English"></asp:ListItem>
									<asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
								</asp:DropDownList>
							</td>
							<td>
								<asp:TextBox ID="tnpassTextBox" runat="server" Text='<%# Bind("tnpass") %>' />
							</td>
							<td>
								<asp:TextBox ID="tnschTextBox" runat="server" Text='<%# Bind("tnsch") %>' />
							</td>
							<td>
								<asp:TextBox ID="tnperTextBox" runat="server" Text='<%# Bind("tnper") %>' />
							</td>
						</tr>
						<tr>
							<th>12th</th>
							<td>
								<asp:DropDownList ID="DropDownList3" runat="server" Width="100px" SelectedValue='<%# Bind("twstream") %>'>
									<asp:ListItem Text="Select" Value="">
									</asp:ListItem>
									<asp:ListItem Text="Science" Value="Science"></asp:ListItem>
									<asp:ListItem Text="Commerce" Value="Commerce"></asp:ListItem>
									<asp:ListItem Text="Arts" Value="Arts"></asp:ListItem>
								</asp:DropDownList></td>
							<td>
								<asp:TextBox ID="twpassTextBox" runat="server" Text='<%# Bind("twpass") %>' /></td>

							<td>
								<asp:TextBox ID="twschTextBox" runat="server" Text='<%# Bind("twsch") %>' /></td>
							<td>
								<asp:TextBox ID="twperTextBox" runat="server" Text='<%# Bind("twper") %>' /></td>
						</tr>
						<tr>
							<th>Graduation</th>
							<td>
								<asp:DropDownList ID="DropDownList4" runat="server" Width="100px" SelectedValue='<%# Bind("grstream") %>'>
									<asp:ListItem Text="Select" Value="">
									</asp:ListItem>
									<asp:ListItem Text="BCA" Value="BCA"></asp:ListItem>
									<asp:ListItem Text="BTech" Value="BTech"></asp:ListItem>
									<asp:ListItem Text="BSc" Value="BSc"></asp:ListItem>
									<asp:ListItem Text="B.Com" Value="B.Com"></asp:ListItem>
									<asp:ListItem Text="Other" Value="Other"></asp:ListItem>
								</asp:DropDownList></td>
							<td>
								<asp:TextBox ID="grpassTextBox" runat="server" Text='<%# Bind("grpass") %>' /></td>

							<td>
								<asp:TextBox ID="grcolTextBox" runat="server" Text='<%# Bind("grcol") %>' /></td>
							<td>
								<asp:TextBox ID="grperTextBox" runat="server" Text='<%# Bind("grper") %>' /></td>
						</tr>
						<tr>
							<td></td>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server" CausesValidation="True"
								CommandName="Update" Text="Update" />
							</td>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server"
								CausesValidation="False" CommandName="Cancel" Text="Cancel" />
							</td>
							<td></td>
							<td></td>

						</tr>
					</table>

				</EditItemTemplate>

				<ItemTemplate>
					<table cellspacing="10px">
						<tr>
							<th></th>
							<th>Stream
							</th>
							<th>Passout Year
							</th>
							<th>Board/University
							</th>
							<th>Aggregate Percentage
							</th>
						</tr>
						<tr>
							<th>10th
							</th>
							<td>
								<asp:Label ID="tnstreamLabel" runat="server" Text='<%# Bind("tnstream") %>' />
							</td>
							<td>
								<asp:Label ID="tnpassLabel" runat="server" Text='<%# Bind("tnpass") %>' />
								<td>
									<asp:Label ID="tnschLabel" runat="server" Text='<%# Bind("tnsch") %>' />
									<td>
										<asp:Label ID="tnperLabel" runat="server" Text='<%# Bind("tnper") %>' />
						</tr>
						<tr>
							<th>12th
							</th>
							<td>
								<asp:Label ID="twstreamLabel" runat="server" Text='<%# Bind("twstream") %>' />
							</td>
							<td>
								<asp:Label ID="twpassLabel" runat="server" Text='<%# Bind("twpass") %>' />
							</td>
							<td>
								<asp:Label ID="twschLabel" runat="server" Text='<%# Bind("twsch") %>' />
							</td>
							<td>
								<asp:Label ID="twperLabel" runat="server" Text='<%# Bind("twper") %>' />
							</td>
						</tr>
						<tr>
							<th>Graduation
							</th>
							<td>
								<asp:Label ID="grstreamLabel" runat="server" Text='<%# Bind("grstream") %>' />
							</td>
							<td>
								<asp:Label ID="grpassLabel" runat="server" Text='<%# Bind("grpass") %>' />
							</td>
							<td>
								<asp:Label ID="grcolLabel" runat="server" Text='<%# Bind("grcol") %>' />
							</td>
							<td>
								<asp:Label ID="grperLabel" runat="server" Text='<%# Bind("grper") %>' />
							</td>
						</tr>
						<tr>
							<td></td>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="EditButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 50px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server" CausesValidation="False"
								CommandName="Edit" Text="Edit" />
							</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>





				</ItemTemplate>
			</asp:FormView>
			<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
				DeleteCommand="DELETE FROM [students] WHERE [sid] = @sid" InsertCommand="INSERT INTO [students] ([tnstream], [tnpass], [tnsch], [tnper], [twstream], [twpass], [twsch], [twper], [grstream], [grpass], [grcol], [grper]) VALUES (@tnstream, @tnpass, @tnsch, @tnper, @twstream, @twpass, @twsch, @twper, @grstream, @grpass, @grcol, @grper)"
				SelectCommand="SELECT [sid], [tnstream], [tnpass], [tnsch], [tnper], [twstream], [twpass], [twsch], [twper], [grstream], [grpass], [grcol], [grper] FROM [students] WHERE ([email] = @email)"
				UpdateCommand="UPDATE [students] SET [tnstream] = @tnstream, [tnpass] = @tnpass, [tnsch] = @tnsch, [tnper] = @tnper, [twstream] = @twstream, [twpass] = @twpass, [twsch] = @twsch, [twper] = @twper, [grstream] = @grstream, [grpass] = @grpass, [grcol] = @grcol, [grper] = @grper WHERE [sid] = @sid">
				<DeleteParameters>
					<asp:Parameter Name="sid" Type="Int32" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="tnstream" Type="String" />
					<asp:Parameter Name="tnpass" Type="String" />
					<asp:Parameter Name="tnsch" Type="String" />
					<asp:Parameter Name="tnper" Type="String" />
					<asp:Parameter Name="twstream" Type="String" />
					<asp:Parameter Name="twpass" Type="String" />
					<asp:Parameter Name="twsch" Type="String" />
					<asp:Parameter Name="twper" Type="String" />
					<asp:Parameter Name="grstream" Type="String" />
					<asp:Parameter Name="grpass" Type="String" />
					<asp:Parameter Name="grcol" Type="String" />
					<asp:Parameter Name="grper" Type="String" />
				</InsertParameters>
				<SelectParameters>
					<asp:SessionParameter SessionField="StudentUser" Name="email" Type="String" />
				</SelectParameters>
				<UpdateParameters>
					<asp:Parameter Name="tnstream" Type="String" />
					<asp:Parameter Name="tnpass" Type="String" />
					<asp:Parameter Name="tnsch" Type="String" />
					<asp:Parameter Name="tnper" Type="String" />
					<asp:Parameter Name="twstream" Type="String" />
					<asp:Parameter Name="twpass" Type="String" />
					<asp:Parameter Name="twsch" Type="String" />
					<asp:Parameter Name="twper" Type="String" />
					<asp:Parameter Name="grstream" Type="String" />
					<asp:Parameter Name="grpass" Type="String" />
					<asp:Parameter Name="grcol" Type="String" />
					<asp:Parameter Name="grper" Type="String" />
					<asp:Parameter Name="sid" Type="Int32" />
				</UpdateParameters>
			</asp:SqlDataSource>
		
			<h2>
				<a name="t3" id="t3">Technical Skills</a></h2>
			<asp:FormView ID="FormView4" runat="server" DataKeyNames="sid" DataSourceID="SqlDataSource4">
				<EditItemTemplate>
					<table>
						<tr>
							<td>
								<b>Programming<br />
									Languages</b>
							</td>
							<td>:
									<asp:TextBox ID="progTextBox" TextMode="MultiLine" runat="server" Text='<%# Bind("prog") %>' />
							</td>
						</tr>
						<tr>
							<td>
								<b>Training<br />
									(If any)</b>
							</td>
							<td>:
									<asp:TextBox ID="trainingTextBox" TextMode="MultiLine" runat="server" Text='<%# Bind("training") %>' />
							</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server" CausesValidation="True"
								CommandName="Update" Text="Update" />
							</td>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server"
								CausesValidation="False" CommandName="Cancel" Text="Cancel" />
							</td>
						</tr>
					</table>
				</EditItemTemplate>
				<ItemTemplate>
					<table>
						<tr>
							<td>
								<b>Programming<br />
									Languages</b>
							</td>
							<td>:
									<asp:Label ID="progLabel" runat="server" Text='<%# Bind("prog") %>' />
							</td>
						</tr>
						<tr>
							<td>
								<b>Training<br />
									(If any)</b>
							</td>
							<td>:
									<asp:Label ID="trainingLabel" runat="server" Text='<%# Bind("training") %>' />
							</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="EditButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 50px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server" CausesValidation="False"
								CommandName="Edit" Text="Edit" />
							</td>
							<td></td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:FormView>
			<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
				DeleteCommand="DELETE FROM [students] WHERE [sid] = @sid" InsertCommand="INSERT INTO [students] ([prog], [training]) VALUES (@prog, @training)"
				SelectCommand="SELECT [sid], [prog], [training] FROM [students] WHERE ([email] = @email)"
				UpdateCommand="UPDATE [students] SET [prog] = @prog, [training] = @training WHERE [sid] = @sid">
				<DeleteParameters>
					<asp:Parameter Name="sid" Type="Int32" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="prog" Type="String" />
					<asp:Parameter Name="training" Type="String" />
				</InsertParameters>
				<SelectParameters>
					<asp:SessionParameter SessionField="StudentUser" Name="email" Type="String" />
				</SelectParameters>
				<UpdateParameters>
					<asp:Parameter Name="prog" Type="String" />
					<asp:Parameter Name="training" Type="String" />
					<asp:Parameter Name="sid" Type="Int32" />
				</UpdateParameters>
			</asp:SqlDataSource>
			<p>
				<a href="#top">back to menu</a>
			</p>
		
			<h2>
				<a name="t4" id="t4">Achievements</a></h2>
			<asp:FormView ID="FormView3" runat="server" DataKeyNames="sid" DataSourceID="SqlDataSource3">
				<EditItemTemplate>
					<table>
						<tr>
							<td>
								<b>Achievement</b>
							</td>
							<td>:
									<asp:TextBox ID="achievementTextBox" TextMode="MultiLine" Rows="5" Columns="50" runat="server"
										Text='<%# Bind("achievement") %>' />
							</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server" CausesValidation="True"
								CommandName="Update" Text="Update" />
							</td>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server"
								CausesValidation="False" CommandName="Cancel" Text="Cancel" />
							</td>
						</tr>
					</table>
				</EditItemTemplate>
				<ItemTemplate>
					<table>
						<tr>
							<td>
								<b>Achievement</b>
							</td>
							<td>:
									<asp:Label ID="achievementLabel" runat="server" Text='<%# Bind("achievement") %>' />
							</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="EditButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 50px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server" CausesValidation="False"
								CommandName="Edit" Text="Edit" />
							</td>
							<td></td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:FormView>
			<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
				DeleteCommand="DELETE FROM [students] WHERE [sid] = @sid" InsertCommand="INSERT INTO [students] ([achievement]) VALUES (@achievement)"
				SelectCommand="SELECT [sid], [achievement] FROM [students] WHERE ([email] = @email)"
				UpdateCommand="UPDATE [students] SET [achievement] = @achievement WHERE [sid] = @sid">
				<DeleteParameters>
					<asp:Parameter Name="sid" Type="Int32" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="achievement" Type="String" />
				</InsertParameters>
				<SelectParameters>
					<asp:SessionParameter SessionField="StudentUser" Name="email" Type="String" />
				</SelectParameters>
				<UpdateParameters>
					<asp:Parameter Name="achievement" Type="String" />
					<asp:Parameter Name="sid" Type="Int32" />
				</UpdateParameters>
			</asp:SqlDataSource>
		
			<h2>
				<a name="t5" id="t5">Contact Information</a></h2>
			<asp:FormView ID="FormView2" runat="server" DataKeyNames="sid" DataSourceID="SqlDataSource2">
				<EditItemTemplate>
					<table>
						<tr>
							<td>
								<b>Mobile No</b>
							</td>
							<td>:
									<asp:TextBox ID="mobTextBox" runat="server" Text='<%# Bind("mob") %>' />
							</td>
						</tr>
						<tr>
							<td>
								<b>Phone No</b>
							</td>
							<td>:
									<asp:TextBox ID="phTextBox" runat="server" Text='<%# Bind("ph") %>' />
							</td>
						</tr>
						<tr>
							<td>
								<b>Email ID</b>
							</td>
							<td>:
									<asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
							</td>
						</tr>
						<tr>
							<td>
								<b>Alternate Email ID</b>
							</td>
							<td>:
									<asp:TextBox ID="aemailTextBox" runat="server" Text='<%# Bind("aemail") %>' />
							</td>
						</tr>
						<tr>
							<td>
								<b>Address</b>
							</td>
							<td>:
									<asp:TextBox TextMode="MultiLine" ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
							</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server" CausesValidation="True"
								CommandName="Update" Text="Update" />
							</td>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server"
								CausesValidation="False" CommandName="Cancel" Text="Cancel" />
							</td>
						</tr>
					</table>
				</EditItemTemplate>
				<ItemTemplate>
					<table>
						<tr>
							<td>
								<b>Mobile No</b>
							</td>
							<td>:
									<asp:Label ID="mobLabel" runat="server" Text='<%# Bind("mob") %>' />
							</td>
						</tr>
						<tr>
							<td>
								<b>Phone No</b>
							</td>
							<td>:
									<asp:Label ID="phLabel" runat="server" Text='<%# Bind("ph") %>' />
							</td>
						</tr>
						<tr>
							<td>
								<b>Email ID</b>
							</td>
							<td>:
									<asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
							</td>
						</tr>
						<tr>
							<td>
								<b>Alternate Email ID</b>
							</td>
							<td>:
									<asp:Label ID="aemailLabel" runat="server" Text='<%# Bind("aemail") %>' />
							</td>
						</tr>
						<tr>
							<td>
								<b>Address</b>
							</td>
							<td>:
									<asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
							</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="EditButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 50px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server" CausesValidation="False"
								CommandName="Edit" Text="Edit" />
							</td>
							<td></td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:FormView>
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
				DeleteCommand="DELETE FROM [students] WHERE [sid] = @sid" InsertCommand="INSERT INTO [students] ([mob], [ph], [email], [aemail], [address]) VALUES (@mob, @ph, @email, @aemail, @address)"
				SelectCommand="SELECT [sid], [mob], [ph], [email], [aemail], [address] FROM [students] WHERE ([email] = @email)"
				UpdateCommand="UPDATE [students] SET [mob] = @mob, [ph] = @ph, [aemail] = @aemail, [address] = @address WHERE [sid] = @sid">
				<DeleteParameters>
					<asp:Parameter Name="sid" Type="Int32" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="mob" Type="String" />
					<asp:Parameter Name="ph" Type="String" />
					<asp:Parameter Name="email" Type="String" />
					<asp:Parameter Name="aemail" Type="String" />
					<asp:Parameter Name="address" Type="String" />
				</InsertParameters>
				<SelectParameters>
					<asp:SessionParameter SessionField="StudentUser" Name="email" Type="String" />
				</SelectParameters>
				<UpdateParameters>
					<asp:Parameter Name="mob" Type="String" />
					<asp:Parameter Name="ph" Type="String" />
					<asp:Parameter Name="email" Type="String" />
					<asp:Parameter Name="aemail" Type="String" />
					<asp:Parameter Name="address" Type="String" />
					<asp:Parameter Name="sid" Type="Int32" />
				</UpdateParameters>
			</asp:SqlDataSource>
</asp:Content>
