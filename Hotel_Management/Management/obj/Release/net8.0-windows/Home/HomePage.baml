   M S B A M L   `   `   `  ����   
Management    Management.Home.HomePage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       N� Title$$  Hotel Management System - Home�� N� 
Background �#F0F2F5 � 	Resources    MenuButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers	 P� Property
 P� Value3  -System.Windows.Media.Effects.DropShadowEffect   ShadowDepth   	Direction   Color   Opacity   
BlurRadius :� RoutedEvent �� TargetProperty	 W� To g� Duration��%�  &	        �� " ��.���  � ��$	 250����  � ��$ 60����  � ��$
 0,10q���  � ��$ 16(���  � ��$ SemiBold"���  � ��
 �������  � �� �#4CAF50��  � ��$ 0q���  �@�Cursor$
 Hand����  � �� �� " ��.R��� #��z��$ 10��._��� $��Center=�$��Center=� P� 	 �@J�IsMouseOver$

 True��. ���  � �� �#45a049��  �@J�Effect   $ 5Q�$	 330Q�$ Black��$	 0.3Q�$ 10Q�:� $ 
MouseEnter��.[��� .���� .��W� $9 3(UIElement.RenderTransform).(ScaleTransform.ScaleX)� 1.05$ 0:0:0.1D�W� $9 3(UIElement.RenderTransform).(ScaleTransform.ScaleY)� 1.05$ 0:0:0.1D�:� $ 
MouseLeave��.[��� .���� .��W� $9 3(UIElement.RenderTransform).(ScaleTransform.ScaleX)� 1$ 0:0:0.1D�W� $9 3(UIElement.RenderTransform).(ScaleTransform.ScaleY)� 1$ 0:0:0.1D�.���  � RowDefinitions �� $
��Auto ��� $��* �.+��� $��0�����#2C3E50$	��100��._��� $��Hotel Management System��$��32(�$
��Bold"�
�������$��Center=�$��Center=�� $��1������  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,1&�.���  � Color$ #E0E0E0�� � Offset$ 0Q�� $ #FFFFFF��$ 1Q�.+��� $��Center=�$��Center=�.+��� -   $��Manage Customers��#��[  z��� �� -   $��Manage Room Types��#��[  z��� �� -   $��Manage Booking��#��[  z��� �� $��1��$%��© 2023 Hotel Management System��$��12(����#555$��Center=�$��Bottom=�$��0,0,0,10q�