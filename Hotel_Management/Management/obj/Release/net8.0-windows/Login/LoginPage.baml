   M S B A M L   `   `   `  ����   
Management     Management.Login.LoginPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       N� Title$%  Login - Hotel Management System�� � 	Resources    RoundedTextBox �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius ��Name  RoundedPasswordBox  LoginButtonStyle �� Triggers	 P� Property
 P� Value��%w  &	        &	 �     &	     �� " ��.���  � �� �� " ��.R��� 
�������$ 5�����#E0E0E0$��1q�._��� $ PART_ContentHost��$��0q��� " G�.���  � �� �� " G�.R��� 
�������$ 5�����#E0E0E0$��1q�._��� $ PART_ContentHost��$��0q��� " ��.���  � �� �#4CAF50��  � ��
 �������  � ��$ 16(���  � ��$
 Bold"���  � ��$ 20,10q���  � ��$ 0q���  �@�Cursor$
 Hand����  � �� �� " ��.R��� #��z��$ 5��._��� $��Center=�$��Center=� P� 	 �@J�IsMouseOver$

 True��. ���  � �� �#45a049.��� ����  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,1&�.���  � Color$ #4CAF50�� � Offset$ 0Q�� $ #45a049��$ 1Q�.+��� $ 10��
�������$	��400��$��Center=�$��Center=� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     ShadowDepth$ 5Q�   	Direction$	 315Q�   Color$ Black��   Opacity$	 0.5Q�   
BlurRadius$ 15Q�._��� $��40q�.+��� $��/Assets/hotel_logo.png��$	��100��$	��100��$��0,0,0,20q��� $��Hotel Management System��$��24(�$
��Bold"�$��Center=�$��0,0,0,30q��� $��Username��$��SemiBold"�$��0,0,0,5q��� -    ��Name$ UsernameTextBox��#��[  $��40��$��16(�$
��10,5q�$��0,0,0,15q��� $��Password��$��SemiBold"�$��0,0,0,5q�G� -    G�Name$ PasswordBox��#��[ $��40��$��16(�$
��10,5q�$��0,0,0,25q��� -   $��Login��#��[ �� -    ��Name$ ErrorMessageTextBlock��
���  ��$
��Wrap=�$	��320��$��0,15,0,0q� �� TextAlignment$ Center=�