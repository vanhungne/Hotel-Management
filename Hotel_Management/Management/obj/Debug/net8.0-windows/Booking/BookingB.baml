   M S B A M L   `   `   `  ����E  AManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Management.BookingManagement.Booking  5      !    Management.Booking.BookingB   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:Management.Booking     5        N� Title$  Booking Management��5	       � 	Resources 5         RoundedTextBox �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius ��Name  RoundedDatePicker(  "System.Windows.Controls.DatePicker  ActionButton��%�  &	        &	 \    &	 �    �� 5   
   " ��6'   .�5      ��  � ��$
 10,5q�6(   �� 5       � ��$ 1q�60   �� 5       � �� �#CCCCCC6,   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ 5��6!   #��z��62   #��z��6\   #��z��6�   ._�5      �� $ PART_ContentHost��6+   5      5      5      5      �� 5   
   "  6*   .�5      ��  � ��$
 10,5q�6(   �� 5       � ��$ 1q�60   �� 5       � �� �#CCCCCC6,   5      �� 5!   
   " ��6%   .�5"      ��  � ��$
 15,5q�6(   �� 5#       � ��$ 5q�6'   �� 5$       � ��$ 0q�60   �� 5%       � ��
 �����6+   �� 5&       � ��$ SemiBold"�6+   �� 5'       � �� 5(      �� 5)      " ��6&   .R�5*      �� $ 5��6!   #��z��62   ._�5+      �� $��Center=�6/   $��Center=�6L   5,      5-      5/      50      51      .��53      � ���#F0F4F8$��
0,0,0,-154q�6     � RowDefinitions 54   
   �� 55      $
��Auto �6   �� 56      $��* �6   .+�5:   
   �� $��0��6   ���#2C3E50	 �� Padding$	 20,10q�63   ._�5;      �� $��Booking Management��6   $��24(�62   $
��Bold"�6@   
�������6R   5<      � 5@   
   $��1��6   $��20q�6   
 � ColumnDefinitions
 5A      �� 5B      $��1* �6#   �� 5C      $��2* �6#   .+�5G      �� $��0��6   
�������$ 10��68   $	 20q�6J   $��0,0,10,0q�6W    J� Effect 5H      3  -System.Windows.Media.Effects.DropShadowEffect  5I         ShadowDepth$ 1Q�6'      	Direction$	 270Q�67      Color$ #CCCCCC��6G      Opacity$	 0.5Q�6W      
BlurRadius$ 10Q�6e   ._�5K      �� .+�5L      �� $��Booking Details��6    $��18(�67   $
��Bold"�6E   $��0,0,0,20q�6W   �� 5N      $��Customer ID:��6    $	��0,5q�64   �� 5O      -   5         ��Name$ CustomerIdTextBox��5O      #��[  69   $��0,5,0,10q�6a   �� 5Q      $��Room Number:��6    $	��0,5q�64   �� 5R      -   5        $ RoomNumberTextBox��5R      #��[  69   $��0,5,0,10q�6a   �� 5T      $��Check-In Date:��6    $	��0,5q�66     5U      -   5          Name$ CheckInDatePicker��5U   !   #��[ 6<   $��0,5,0,10q�6g   �� 5W      $��Check-Out Date:��6    $	��0,5q�67     5X      -   5        $ CheckOutDatePicker��5X   !   #��[ 6=   $��0,5,0,10q�6h   �� 5Z      $��Total Price:��6    $	��0,5q�64   �� 5[      -   5        $ TotalPriceTextBox��5[      #��[  69   $��0,5,0,10q�6a   �� 5]      $��Booking Status:��6    $	��0,5q�67   �� 5^      -   5        $ BookingStatusTextBox��5^      #��[  6<   $��0,5,0,20q�6d   �� 5`      $��Booking Date:��6    $	��0,5q�65     5a      -   5        $ BookingDatePicker��5a   !   #��[ 6<   $��0,5,0,10q�6g   �� 5c       �� Orientation$ 
Horizontal=�6!   $��Right=�6:   .+�5d      �� -   5         ��Name$ 	AddButton��5d   !   $	��Add��64   #��[ 6B   ���#4CAF506}   �� 5e      -	   5        $ UpdateButton��5e   !   $��Update��67   #��[ 6H   ���#2196F36�   �� 5f      -
   5        $ DeleteButton��5f   !   $��Delete��67   #��[ 6H   ���#F443366�   5g      �� 5i      $��1��6!   $ 
Horizontal=�6.   $��20,10q�6G   .+�5j      �� -   5        $ SearchTextBox��5j   "   $	��200��69   #��[  6E   $��0,0,10,0q�6m   6   �� 5k      -   5        $��Search��5k   !   #��[ 62   ���#3498DB6m   5l      5n      5o      �� 5r      $��1��6   
�������$ 10��68   $	 20q�6J   $��10,0,0,0q�6W    5t        5u      $ 1Q�6'   $	 270Q�67   $ #CCCCCC��6G   $	 0.5Q�6W   $ 10Q�6e   ._�5x      &   System.Windows.Controls.DataGrid  -   5          Name$ BookingDataGrid��5x         AutoGenerateColumns$ False��64      
IsReadOnly$
 True��5y         HeadersVisibility$ Column=�6-   $��0q�6H   
������    RowBackground
 �����   AlternatingRowBackground �#F8F8F8 5{      =  7System.Windows.Controls.Primitives.DataGridColumnHeader��%�   '        �� 5|      "  6    .�5}      ��  � �� �#2C3E506;   �� 5~       � ��
 �����6;   �� 5       � ��$ 10q�68   �� 5�       � ��$ SemiBold"�6;   5�      5�         Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6W   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *	BookingId+6W     5�      $ Customer ID��6-   $ * 6a    6B   �� *
CustomerId+6a     5�      $ Room Number��6-   $ * 6f    6B   �� *Room.RoomNumber+6f     5�      $ Check-In Date��6-   $ * 6t    6D   �� *CheckInDate+ �� StringFormat$ d��6t     5�      $ Check-Out Date��6-   $ * 6v    6E   �� *CheckOutDate+$ d��6v     5�      $ Total Price��6-   $ * 6q    6B   �� *
TotalPrice+$ C��6q     5�      $ Status��6-   $
 Auto 6_    6=   �� *BookingStatus+6_     5�      $ Booking Date��6-   $ * 6s    6C   �� *BookingDate+$ d��6s   5�      5�      5�      5�      5�      