   M S B A M L   `   `   `  ����   EmailSender    EmailSender.App   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       �� 	Resources     ControlNormalColor  ControlMouseOverColor  DisabledControlColor  DisabledForegroundColor  ControlPressedColor �� 
TargetType �� Property �� Value �� 
TargetType ��Name J� SnapsToDevicePixels �� CornerRadius ��Name	 �� Triggers
 P� Property P� Value �� 
TargetName  ButtonFocusVisual �� StrokeDashArray �� Color'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   GeneratedDuration	   To   States   System.Windows.VisualState   
Storyboard �� TargetProperty �� 
TargetName8  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value��%�  &	        &	      &	 !     &	 4     &	 G     '�� X     'G� +    '�� �    &	 �    '�� *    7  7  7  7  7  ��
Silver����#dfc97a����	#FFF2F2F2����	#FFBFBFBF����#E0BD3F���� " ��.���  � �� �� " ��.R��� $ Bd�� . 
����������#dfc97a$��2q�$ 1��._��� $ PART_ContentHost��	 P� 
 �@J�	IsFocused . . ��� $ Bd�� � �� �#dfc97a�� " G�.���  � �� �� " G�.R��� $ Bd�� . 
����������#dfc97a$��2q�$ 1��._��� $ PART_ContentHost��	 P� 
 �@J�	IsFocused . . ��� $ Bd�� � �� �#dfc97a�� " ��.���  � �� �� " ��.R��� $ Bd�� . 
����������#dfc97a$��2q�$ 1��._��� $ PART_ContentHost��	 P� 
 �@J�	IsFocused . . ��� $ Bd�� � �� �#dfc97a�� .���  � �� �� .R��� ._��� $��2q�$��1�����	#60000000$	 1 2R��� " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  �@�FocusVisualStyle8   ��  � ��$
 24px����  � ��$ 103px����  � ��
 �   ���  � �� �� " ��.R��� $ Border��#��z������ # �      CommonStates��   $ 0:0:0.5D�  $ 0D�$ Pressed��.   
Normal��  	MouseOver��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��8    Pressed��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��8    Disabled��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��8  �� $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�$ Border��.g�  $ 0��8  ._��� $��2q�$��Center=�$��Center=���. 