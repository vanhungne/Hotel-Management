   M S B A M L   `   `   `  ����E  AManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Management.CustomerTManagement.CustomerT  5      $    Management.CustomerT.CustomerT   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:Management.CustomerT     5        N� Title$  Customer Management��5	       � 	Resources 5         RoundedTextBox �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius ��Name  RoundedDatePicker(  "System.Windows.Controls.DatePicker  RoundedPasswordBox  ActionButton  	SearchBox �� BasedOn  SearchButton��%@  &	        &	 \    &	 �    &	 O    &	 �    7   &	 �    7  �� 5   
   " ��6'   .�5      ��  � ��$
 10,5q�6(   �� 5       � ��$ 1q�60   �� 5       � �� �#CCCCCC6,   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ 5��6!   #��z��62   #��z��6\   #��z��6�   ._�5      �� $ PART_ContentHost��6+   5      5      5      5      �� 5   
   "  6*   .�5      ��  � ��$
 10,5q�6(   �� 5       � ��$ 1q�60   �� 5       � �� �#CCCCCC6,   5      �� 5!   
   " G�6+   .�5"      ��  � ��$
 10,5q�6(   �� 5#       � ��$ 1q�60   �� 5$       � �� �#CCCCCC6,   �� 5%       � �� 5&      �� 5'      " G�6&   .R�5(      �� $ 5��6!   #��z��62   #��z��6\   #��z��6�   ._�5)      �� $ PART_ContentHost��6+   5*      5+      5-      5.      �� 50   
   " ��6%   .�51      ��  � ��$
 15,5q�6(   �� 52       � ��$ 5q�6'   �� 53       � ��$ 0q�60   �� 54       � ��
 �����6+   �� 55       � ��$ SemiBold"�6+   �� 56       � �� 57      �� 58      " ��6&   .R�59      �� $ 5��6!   #��z��62   ._�5:      �� $��Center=�6/   $��Center=�6L   5;      5<      5>      5?      �� 5B      " ��6   8   .�5C      ��  � ��$ 0,0,5,0q�6   �� 5D       � ��$	 200��6   �� 5E       � ��$ Center=�6)   5F      �� 5H      " ��6   8   .�5I      ��  � �� �#3498db6"   �� 5J       � ��$
 10,5q�6   5K      5L      .��5N      � ���#F0F4F8	 � RowDefinitions	 5O   
   �� 5P      $
��Auto �6   �� 5Q      $��* �6   .+�5U   
   �� $��0��6   ���#2C3E50
 �� Padding$
 20,10q�63   ._�5V      �� $��Customer Management��6   $��24(�63   $
��Bold"�6A   
�������6S   5W      � 5Z   
   $��1��6   $��20q�6    � ColumnDefinitions 5[      �� 5\      $��1* �6#   �� 5]      $��2* �6#   .+�5a      �� $��0��6   
�������$ 10��68   $
 20q�6J   $��0,0,10,0q�6W    J� Effect 5b      3  -System.Windows.Media.Effects.DropShadowEffect  5c         ShadowDepth$ 1Q�6'      	Direction$	 270Q�67      Color$ #CCCCCC��6G      Opacity$	 0.5Q�6W      
BlurRadius$ 10Q�6e   ._�5e      �� .+�5f      �� $��Customer Details��6    $��18(�68   $
��Bold"�6F   $��0,0,0,20q�6X   �� 5h      $��
Full Name:��6    $	��0,5q�62   �� 5i      -   5         ��Name$ FullNameTextBox��5i      #��[  67   $��0,5,0,10q�6_   �� 5k      $��
Telephone:��6    $	��0,5q�62   �� 5l      -   5        $ TelephoneTextBox��5l      #��[  68   $��0,5,0,10q�6`   �� 5n      $��Email:��6    $	��0,5q�6.   �� 5o      -   5        $ EmailTextBox��5o      #��[  64   $��0,5,0,10q�6\   �� 5q      $��	Birthday:��6    $	��0,5q�61     5r      -   5          Name$ BirthdayDatePicker��5r   !   #��[ 6=   $��0,5,0,10q�6h   �� 5t      $��Status:��6    $	��0,5q�6/   �� 5u      -   5        $ StatusTextBox��5u      #��[  65   $��0,5,0,10q�6]   �� 5w      $��	Password:��6    $	��0,5q�61   G� 5x      -   5         G�Name$ PasswordBox��5x   "   #��[ 67   $��0,5,0,20q�6c   �� 5z       �� Orientation$ 
Horizontal=�6!   $��Right=�6:   .+�5{      �� -   5         ��Name$ 	AddButton��5{   !   $	��Add��64   #��[ 6B   ���#4CAF506}   �� 5|      -   5        $ UpdateButton��5|   !   $��Update��67   #��[ 6H   ���#2196F36�   �� 5}      -	   5        $ DeleteButton��5}   !   $��Delete��67   #��[ 6H   ���#F443366�   5~      5      5�      �� 5�      $��1��6   
�������$ 10��68   $
 20q�6J   $��10,0,0,0q�6W    5�        5�      $ 1Q�6'   $	 270Q�67   $ #CCCCCC��6G   $	 0.5Q�6W   $ 10Q�6e   ._�5�      ]� .+�5�      �� $	��Top=�6!   $ 
Horizontal=�66   $��0,0,0,10q�6O   .+�5�      �� -
   5        $ 	SearchBox��5�      #��[ 6"   �� 5�      -   5        $ SearchButton��5�      $��Search��6$   #��[ 65   6[   5�      &   System.Windows.Controls.DataGrid  5�      -   5          Name$ CustomerDataGrid��5�         AutoGenerateColumns$ False��65      
IsReadOnly$
 True��5�         HeadersVisibility$ Column=�6-   $��0q�6H   
������    RowBackground
 �����   AlternatingRowBackground �#F8F8F8 5�      =  7System.Windows.Controls.Primitives.DataGridColumnHeader��%�   '        �� 5�      "  6    .�5�      ��  � �� �#2C3E506;   �� 5�       � ��
 �����6;   �� 5�       � ��$ 10q�68   �� 5�       � ��$ SemiBold"�6;   5�      5�         Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6X   1  +System.Windows.Controls.DataGridBoundColumn    Binding  69   �� *
CustomerId+6X     5�      $ 	Full Name��6-   $ * 6e     6@   �� *CustomerFullName+6e     5�      $ 	Telephone��6-   $ * 6^     6@   �� *	Telephone+6^     5�      $ Email��6-   $ * 6]     6<   �� *EmailAddress+6]     5�      $ Birthday��6-   $
 Auto 6d     6?   �� *CustomerBirthday+6d     5�      $ Status��6-   $
 Auto 6`     6=   �� *CustomerStatus+6`   5�      5�      5�      5�      5�      5�      