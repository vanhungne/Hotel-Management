   M S B A M L   `   `   `  ����E  AManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Management.RoomInformationRManagement.RoomInformationR  5      +    %Management.RoomInformationR.RoomInfor   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:Management.RoomInformationR     5        N� Title$!  Room Information Management��5	       � 	Resources 5         RoundedTextBox �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius ��Name  ActionButton��%/  &	        &	 �    �� 5   
   " ��6'   .�5      ��  � ��$
 10,8q�6(   �� 5       � ��$ 1q�60   �� 5       � �� �#E0E0E06,   �� 5       � �� �#F8F8F86+   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ 6��6!   #��z��62   #��z��6\   #��z��6�   ._�5      �� $ PART_ContentHost��6+   5      5      5      5      �� 5   
   " ��6%   .�5      ��  � ��$
 20,8q�6(   �� 5       � ��$ 5q�6'   �� 5       � ��$ 0q�60   �� 5        � ��
 �����6+   �� 5!       � ��$ SemiBold"�6+   �� 5"       � �� 5#      �� 5$      " ��6&   .R�5%      �� $ 6��6!   #��z��62   ._�5&      �� $��Center=�6/   $��Center=�6L   5'      5(      5*      5+      5,      .��5.      � ���#F0F4F8 � RowDefinitions 5/   
   �� 50      $
��Auto �6   �� 51      $��* �6   .+�55   
   �� $��0��6   ���#2C3E50	 �� Padding$	 30,15q�63   ._�56      �� $!��Room Information Management��6   $��28(�6;   $
��Bold"�6I   
�������6[   57      � 5:   
   $��1��6   $��30q�6   
 � ColumnDefinitions
 5;      �� 5<      $
��1.2* �6#   �� 5=      $��2* �6#   .+�5A      �� $��0��6   
�������$ 12��68   $	 25q�6J   $��0,0,15,0q�6W    J� Effect 5B      3  -System.Windows.Media.Effects.DropShadowEffect  5C         ShadowDepth$ 1Q�6'      	Direction$	 270Q�67      Color$ #CCCCCC��6G      Opacity$	 0.3Q�6W      
BlurRadius$ 10Q�6e   ._�5E      �� .+�5F      �� $��Room Details��6    $��22(�64   $
��Bold"�6B   $��0,0,0,25q�6T   �� 5H      $��Room Number:��6    $��0,8,0,4q�64   $��SemiBold"�6E   �� 5I      -   5         ��Name$ RoomNumberTextBox��5I      #��[  69   $��0,0,0,12q�6a   �� 5K      $��Room Description:��6    $��0,8,0,4q�69   $��SemiBold"�6J   �� 5L      -   5        $ RoomDescriptionTextBox��5L      #��[  6>   $��0,0,0,12q�6f    �� TextWrapping$
 Wrap=�6x    �� AcceptsReturn$
 True��6�   $��80��6�   �� 5N      $��Room Max Capacity:��6    $��0,8,0,4q�6:   $��SemiBold"�6K   �� 5O      -   5        $ RoomMaxCapacityTextBox��5O      #��[  6>   $��0,0,0,12q�6f   �� 5Q      $��Room Status:��6    $��0,8,0,4q�64   $��SemiBold"�6E   �� 5R      -   5         ��Name$ RoomStatusCheckBox��5R      $��	Available��6;   $��0,4,0,12q�6O   �� 5T      $��Room Price Per Date:��6    $��0,8,0,4q�6<   $��SemiBold"�6M   �� 5U      -   5        $ RoomPricePerDateTextBox��5U      #��[  6?   $��0,0,0,12q�6g   �� 5W      $��
Room Type:��6    $��0,8,0,4q�62   $��SemiBold"�6C   �� 5X      -   5         ��Name$ RoomTypeComboBox��5X      $��0,0,0,25q�69   $
��10,8q�6K   $��1q�6Z   ���#E0E0E06�   �� 5Z       �� Orientation$ 
Horizontal=�6!   $��Right=�6:   .+�5[      �� -   5         ��Name$ 	AddButton��5[   !   $	��Add��64   #��[ 6B   ���#4CAF506}   �� 5\      -   5        $ UpdateButton��5\   !   $��Update��67   #��[ 6H   ���#2196F36�   �� 5]      -	   5        $ DeleteButton��5]   !   $��Delete��67   #��[ 6H   ���#F443366�   5^      5_      5`      � 5c      $��1��6   $��15,0,0,0q�6#    5d      �� 5e      $
��Auto �6$   �� 5f      $��* �6$   .+�5j      �� $��0��6   
�������$ 12��69   $	 25q�6K   $��0,0,0,20q�6X    5k        5l      $ 1Q�6+   $	 270Q�6;   $ #CCCCCC��6K   $	 0.3Q�6[   $ 10Q�6i   ._�5n      �� .+�5o      �� $��Search Rooms��6$   $��22(�68   $
��Bold"�6F   $��0,0,0,15q�6X   � 5p      
 5q      �� 5r   "   $��* �63   �� 5s   "   $
��Auto �63   �� 5t   "   $
��Auto �63   .+�5x      � $��0��6#   $��0,0,10,0q�63   .+�5y   "   �� -
   5        $ SearchTextBox��5y   *   #��[  6A   �� 5z   "    J� IsHitTestVisible$ False��6,   $��Search by room number...��6E   $��Center=�6e   $
��Left=�6�   $��12,0,0,0q�6�   
���������5{   &   �� 5|   *   " ��60   .�5}   .   ��  � y�$ 	Collapsed=�6K    �� Triggers 5~   .   �� 5   2    �� Binding 6>   �� *Text+ �� ElementName$ SearchTextBox�� �� Value  6r   .a�5�   6   ��  � y�$ Visible=�6S   5�   3   5�   +   5�   #   5�      � 5�      $��1��6#   $	��140��63   $��0,0,10,0q�6?   .+�5�   "   �� -   5        $ MaxCapacityTextBox��5�   *   #��[  6F   �� 5�   "   $ False��6,   $��Max Capacity��6E   $��Center=�6Y   $
��Left=�6t   $��12,0,0,0q�6�   
���������5�   &   �� 5�   *   " ��60   .�5�   .   ��  � y�$ 	Collapsed=�6K    5�   .   �� 5�   2    6>   �� *Text+$ MaxCapacityTextBox��  6w   .a�5�   6   ��  � y�$ Visible=�6S   5�   3   5�   +   5�   #   5�      �� 5�      -   5        $ SearchButton��5�   %   $��2��6;   $��Search��6K   #��[ 6\   ���#3498db6�   5�      5�      5�      �� 5�      $��1��6   
�������$ 12��69   $	 25q�6K    5�        5�      $ 1Q�6+   $	 270Q�6;   $ #CCCCCC��6K   $	 0.3Q�6[   $ 10Q�6i   ._�5�      &   System.Windows.Controls.DataGrid  -   5          Name$ RoomDataGrid��5�         AutoGenerateColumns$ False��65      
IsReadOnly$
 True��5�          HeadersVisibility$  Column=�61   $��0q�6L   
������ !   RowBackground
! �����"   AlternatingRowBackground" �#F8F8F8$��Stretch=�5�   X    5�      =  7System.Windows.Controls.Primitives.DataGridColumnHeader��%�   '        �� 5�      "  6$   .�5�   "   ��  � �� �#2C3E506?   �� 5�   "    � ��
 �����6?   �� 5�   "    � ��$ 12q�6<   �� 5�   "    � ��$ SemiBold"�6?   5�      5�      #   Columns# 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn$   Header$$ ID��61   %   Width5  /System.Windows.Controls.DataGridLengthConverter$
% Auto 6X   1  +System.Windows.Controls.DataGridBoundColumn&   Binding& 6=   �� *RoomId+6X     5�      $$ Room Number��61   $% * 6e   & 6F   �� *
RoomNumber+6e     5�      $$ Description��61   $% * 6j   & 6F   �� *RoomDescription+6j     5�      $$ Max Capacity��61   $
% Auto 6k   & 6G   �� *RoomMaxCapacity+6k   4  .System.Windows.Controls.DataGridCheckBoxColumn  5�      $$ Status��65   $
% Auto 6d   & 6E   �� *
RoomStatus+6d     5�      $$ Price Per Date��61   $
% Auto 6n   & 6I   �� *RoomPricePerDate+6n     5�      $$ 	Room Type��61   $
% Auto 6n   & 6D   �� *RoomType.RoomTypeName+6n   5�      5�      5�      5�      5�      5�      