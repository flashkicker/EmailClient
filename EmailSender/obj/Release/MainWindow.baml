   M S B A M L   `   `   `  ����   EmailSender    EmailSender.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  Email Sender��$	��660��$	��500�� � 
ResizeMode$ CanMinimize=� � Icon$# 1447291205_email-envelope.png��.��� 
������� � RowDefinitions �� $��88 ��� $��86 ��� $	��174 ��� $��75 ��� $	��148 ��� $	��100 �.+��� $��Credentials��$
��Left=�$��	10,10,0,0q�$��4��$	��Top=�$��1q�$	��140��$	��460��$��2��.��� $
��Left=�$	��143��$	��Top=�$	��435��$��10,0,0,0q�.+��� $
��Left=�$��10,7,0,0q�$
��Wrap=�$��Email:��$	��Top=��� -    ��Name$ EmailTextBox��$
��Left=�$��23��$��	10,23,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��2.5q�$	��250�� � ToolTip$1 +Enter either a Gmail, Yahoo or Live account���� $
��Left=�$��	10,51,0,0q�$
��Wrap=�$��	Password:��$	��Top=�G� -    G�Name$ PasswordTextBox��$
��Left=�$	��2.5q�$��23��$��	10,67,0,0q�$	��Top=�$	��250���� -   $ RecipientTextBox��$
��Left=�$��53��$��	10,30,0,0q�$
 Wrap=�$	��Top=�$	��460��$	��2.5q�$_ YMultiple recipients should be seperated by a ';'. Don't put space after the seperator(;).���� $
��Left=�$��	10,10,0,0q�$
��Wrap=�$��Recipient(s): ��$	��Top=�$��16��$��70���� $
��Left=�$��	10,10,0,0q�$��1��$
��Wrap=�$��Subject:��$	��Top=�$��16��$��42���� -   $ SubjectTextBox��$
��Left=�$	��2.5q�$��	10,30,0,0q�$��1��$
 Wrap=�$	��460��$��50��$	��Top=��� -   $ BodyTextBox��$
��Left=�$	��140��$	��2.5q�$��	10,30,0,0q�$��2��$
 Wrap=�$	��Top=�$	��460���� $
��Left=�$��	10,10,0,0q�$��2��$��Body:��$	��Top=�$��16��$��29���� -    ��Name$ SendEmailButton��$��
Send Email��$
��Left=�$��
390,15,0,0q�$��5��$	��Top=�$��75��$��20���� $
��Left=�$��10,0,0,0q�$��3��$
��Wrap=�$��Attachment(s):��$	��Top=�$��16��$��77���� -   	 ��Name$	 AttachmentTextBox��$
��Left=�$��56��$��	10,16,0,0q�$��3��$	��Top=�$	��284���� -   $ 
AttachFile��$��Attach file��$
��Left=�$��
345,16,0,0q�$��3��$	��Top=�$	��125��$��20���� -	   $ RemoveAttachments��$��Remove Attachments��$
��Left=�$��
345,45,0,0q�$��3��$	��Top=�$	��125��$��20��