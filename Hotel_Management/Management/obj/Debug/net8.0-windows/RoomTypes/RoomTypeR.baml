   M S B A M L   `   `   `  ����E  AManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Management.RoomTypeManagement.RoomType  5      #    Management.RoomType.RoomTypeR   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:Management.RoomType     5        N� Title$  Room Type Management��5	       � 	Resources 5         RoundedTextBox �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius ��Name  NavigationButton  ActionButton��%�  &	        &	 \    &	     �� 5   
   " ��6'   .�5      ��  � ��$
 10,5q�6(   �� 5       � ��$ 1q�60   �� 5       � �� �#CCCCCC6,   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ 5��6!   #��z��62   #��z��6\   #��z��6�   ._�5      �� $ PART_ContentHost��6+   5      5      5      5      �� 5   
   " ��6)   .�5      ��  � �� �#34495E6+   �� 5       � ��
 �����6+   �� 5       � ��$ 14(�6)   �� 5       � ��$ SemiBold"�6+   �� 5       � ��$
 15,8q�6(   �� 5        � ��$ 0q�60   �� 5!       � �� 5"      �� 5#      " ��6&   .R�5$      �� $ 5��6!   #��z��62   ._�5%      �� $��Center=�6/   $��Center=�6L   5&      5'      5)      5*      �� 5,   
   " ��6%   .�5-      ��  � ��$
 15,5q�6(   �� 5.       � ��$ 5q�6'   �� 5/       � ��$ 0q�60   �� 50       � ��
 �����6+   �� 51       � ��$ SemiBold"�6+   �� 52       � �� 53      �� 54      " ��6&   .R�55      �� $ 5��6!   #��z��62   ._�56      �� $��Center=�6/   $��Center=�6L   57      58      5:      5;      5<      .��5>      � ���#F0F4F8 � RowDefinitions 5?   
   �� 5@      $
��Auto �6   �� 5A      $��* �6   .+�5F   
   �� $��0��6   ���#2C3E50	 �� Padding$	 20,10q�63   ._�5G      � 
 � ColumnDefinitions
 5H      �� 5I      $��* �6'   �� 5J      $
��Auto �6'   .+�5L      �� $��Room Type Management��6   $��24(�68   $
��Bold"�6F   
�������$��Center=�6k   �� 5M      -   5         ��Name$ GoToRoomInfoButton��5M      $��Go to Room Info��65   $��1��6O   #��[ 6_   6�   5N      5O      � 5R   
   $��1��6   $��20q�6   
 5S      �� 5T      $��1* �6#   �� 5U      $��2* �6#   .+�5Y      �� $��0��6   
�������$ 10��68   $	 20q�6J   $��0,0,10,0q�6W    J� Effect 5Z      3  -System.Windows.Media.Effects.DropShadowEffect  5[         ShadowDepth$ 1Q�6'      	Direction$	 270Q�67      Color$ #CCCCCC��6G      Opacity$	 0.5Q�6W      
BlurRadius$ 10Q�6e   ._�5]      �� .+�5^      �� $��Room Type Details��6    $��18(�69   $
��Bold"�6G   $��0,0,0,20q�6Y   �� 5`      $��Room Type Name:��6    $	��0,5q�67   �� 5a      -   5         ��Name$ RoomTypeNameTextBox��5a      #��[  6;   $��0,5,0,10q�6c   �� 5c      $��Description:��6    $	��0,5q�64   �� 5d      -   5        $ DescriptionTextBox��5d      #��[  6:   $��60��6b    �� TextWrapping$
 Wrap=�6n    �� AcceptsReturn$
 True��6�   " �� VerticalScrollBarVisibility$
 Auto=�6�   $��0,5,0,10q�6�   �� 5f      $��Note:��6    $	��0,5q�6-   �� 5g      -   5        $ NoteTextBox��5g      #��[  63   $��60��6[   $
 Wrap=�6g   $
 True��6{   $
 Auto=�6�   $��0,5,0,20q�6�   �� 5i       �� Orientation$ 
Horizontal=�6!   $��Right=�6:   .+�5j      �� -   5        $ 	AddButton��5j   !   $	��Add��64   #��[ 6B   ���#4CAF506}   �� 5k      -   5        $ UpdateButton��5k   !   $��Update��67   #��[ 6H   ���#2196F36�   �� 5l      -   5        $ DeleteButton��5l   !   $��Delete��67   #��[ 6H   ���#F443366�   5m      5n      5o      �� 5r      $��1��6   
�������$ 10��68   $	 20q�6J   $��10,0,0,0q�6W    5s        5t      $ 1Q�6'   $	 270Q�67   $ #CCCCCC��6G   $	 0.5Q�6W   $ 10Q�6e   ._�5v      &   System.Windows.Controls.DataGrid  -   5          Name$ RoomTypeDataGrid��5v         AutoGenerateColumns$ False��65      
IsReadOnly$
 True��5w         HeadersVisibility$ Column=�6-   $��0q�6H   
������    RowBackground
 �����   AlternatingRowBackground �#F8F8F8 5y      =  7System.Windows.Controls.Primitives.DataGridColumnHeader��%�   '        �� 5z      "  6    .�5{      ��  � �� �#2C3E506;   �� 5|       � ��
 �����6;   �� 5}       � ��$ 10q�68   �� 5~       � ��$ SemiBold"�6;   5      5�         Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6X   1  +System.Windows.Controls.DataGridBoundColumn    Binding  69   �� *
RoomTypeId+6X     5�      $ Room Type Name��6-   $ * 6f     6E   �� *RoomTypeName+6f     5�      $ Description��6-   $ * 6f     6B   �� *TypeDescription+6f     5�      $
 Note��6-   $ * 6X     6;   �� *
TypeNote+6X   5�      5�      5�      5�      5�      