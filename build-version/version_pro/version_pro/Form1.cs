using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace version_pro
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.lbl_Version.Text = Version.Instance.GitVersion;
            this.lbl_VersionTime.Text = Version.Instance.GitTime;
        }
    }
}
