using System;
using System.IO;
using Microsoft.Win32;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Net;
using System.Net.Mail;

namespace EmailSender
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        MailMessage message = new MailMessage();
        public MainWindow()
        {
            InitializeComponent();
        }

        private void SendEmailButton_Click(object sender, RoutedEventArgs e)
        {
            GetDetails();
            SendEmail();
        }

        private void GetDetails()
        {
            message.From = new MailAddress(EmailTextBox.Text);
            message.Subject = SubjectTextBox.Text;
            message.Body = BodyTextBox.Text + "\n\n-- Sent using EmailSender";
            foreach (string s in RecipientTextBox.Text.Split(';'))
            {
                message.To.Add(s);
            }
            foreach (string file in AttachmentTextBox.Items)
            {
                message.Attachments.Add(new Attachment(file));
            }
        }

        private void SendEmail()
        {
            SmtpClient client = new SmtpClient();
            client.Credentials = new NetworkCredential(EmailTextBox.Text, PasswordTextBox.Password);
            if (EmailTextBox.Text.Contains("@gmail.com"))
            {
                client.Host = "smtp.gmail.com";
                client.Port = 587;
            }
            else if (EmailTextBox.Text.Contains("@live.com"))
            {
                client.Host = "smtp.live.com";
                client.Port = 25;
            }
            else if ((EmailTextBox.Text.Contains("@yahoo.com")) || (EmailTextBox.Text.Contains("@yahoo.co.in")))
            {
                client.Host = "smtp.mail.yahoo.com";
                client.Port = 587;
            }
            else
            {
                MessageBox.Show("Please enter either a Gmail, Yahoo or Live email address");
            }
            client.EnableSsl = true;
            client.Send(message);
            message.Attachments.Clear();
            AttachmentTextBox.Items.Clear();
        }

        private void AttachFile_Click(object sender, RoutedEventArgs e)
        {
            var fileDialog = new OpenFileDialog();
            fileDialog.Multiselect = true;
            fileDialog.Filter = "Text files (*.txt)|*.txt|All files (*.*)|*.*";
            fileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            if (fileDialog.ShowDialog() == true)
            {
                foreach (string filename in fileDialog.FileNames)
                    AttachmentTextBox.Items.Add(System.IO.Path.GetFullPath(filename));
            }
        }

        private void RemoveAttachments_Click(object sender, RoutedEventArgs e)
        {
            AttachmentTextBox.Items.Remove(AttachmentTextBox.SelectedItem);
        }
    }
}
