
namespace WindowsFormsTest
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea5 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend5 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series37 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series38 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series39 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series40 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series41 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series42 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series43 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series44 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series45 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea6 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend6 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series46 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series47 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series48 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series49 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series50 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series51 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series52 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series53 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series54 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.PictureBoxConnectionInd = new System.Windows.Forms.PictureBox();
            this.LabelStatus = new System.Windows.Forms.Label();
            this.ButtonDisconnect = new System.Windows.Forms.Button();
            this.ButtonConnect = new System.Windows.Forms.Button();
            this.ComboBoxBaudRate = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.ComboBoxPort = new System.Windows.Forms.ComboBox();
            this.ButtonScanPort = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.LabelSensor9 = new System.Windows.Forms.Label();
            this.LabelSensor8 = new System.Windows.Forms.Label();
            this.LabelSensor7 = new System.Windows.Forms.Label();
            this.LabelSensor6 = new System.Windows.Forms.Label();
            this.LabelSensor5 = new System.Windows.Forms.Label();
            this.LabelSensor4 = new System.Windows.Forms.Label();
            this.LabelSensor3 = new System.Windows.Forms.Label();
            this.LabelSensor2 = new System.Windows.Forms.Label();
            this.LabelSensor1 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.PictureBoxRecordInd = new System.Windows.Forms.PictureBox();
            this.label2 = new System.Windows.Forms.Label();
            this.ButtonClear = new System.Windows.Forms.Button();
            this.ButtonStopRecording = new System.Windows.Forms.Button();
            this.ButtonStartRecording = new System.Windows.Forms.Button();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.ProgressBarProcess = new System.Windows.Forms.ProgressBar();
            this.ButtonSaveToExcel = new System.Windows.Forms.Button();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.No = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TIME = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DATE_ = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.chart1 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.SerialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.TimerSerial = new System.Windows.Forms.Timer(this.components);
            this.TimerDataLogRecord = new System.Windows.Forms.Timer(this.components);
            this.RadioButtonA = new System.Windows.Forms.RadioButton();
            this.groupBox7 = new System.Windows.Forms.GroupBox();
            this.RadioButtonB = new System.Windows.Forms.RadioButton();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn10 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn11 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn12 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.chart2 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PictureBoxConnectionInd)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PictureBoxRecordInd)).BeginInit();
            this.groupBox4.SuspendLayout();
            this.groupBox5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox6.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).BeginInit();
            this.groupBox7.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chart2)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.PictureBoxConnectionInd);
            this.groupBox1.Controls.Add(this.LabelStatus);
            this.groupBox1.Controls.Add(this.ButtonDisconnect);
            this.groupBox1.Controls.Add(this.ButtonConnect);
            this.groupBox1.Controls.Add(this.ComboBoxBaudRate);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.ComboBoxPort);
            this.groupBox1.Controls.Add(this.ButtonScanPort);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(429, 88);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Connection";
            // 
            // PictureBoxConnectionInd
            // 
            this.PictureBoxConnectionInd.Image = global::WindowsFormsTest.Properties.Resources.Red;
            this.PictureBoxConnectionInd.Location = new System.Drawing.Point(399, 1);
            this.PictureBoxConnectionInd.Name = "PictureBoxConnectionInd";
            this.PictureBoxConnectionInd.Size = new System.Drawing.Size(24, 18);
            this.PictureBoxConnectionInd.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.PictureBoxConnectionInd.TabIndex = 1;
            this.PictureBoxConnectionInd.TabStop = false;
            // 
            // LabelStatus
            // 
            this.LabelStatus.AutoSize = true;
            this.LabelStatus.Location = new System.Drawing.Point(214, 2);
            this.LabelStatus.Name = "LabelStatus";
            this.LabelStatus.Size = new System.Drawing.Size(126, 17);
            this.LabelStatus.TabIndex = 1;
            this.LabelStatus.Text = "Status: Disconnect";
            // 
            // ButtonDisconnect
            // 
            this.ButtonDisconnect.Location = new System.Drawing.Point(217, 52);
            this.ButtonDisconnect.Name = "ButtonDisconnect";
            this.ButtonDisconnect.Size = new System.Drawing.Size(206, 26);
            this.ButtonDisconnect.TabIndex = 4;
            this.ButtonDisconnect.Text = "Disconnect";
            this.ButtonDisconnect.UseVisualStyleBackColor = true;
            this.ButtonDisconnect.Click += new System.EventHandler(this.ButtonDisconnect_Click);
            // 
            // ButtonConnect
            // 
            this.ButtonConnect.Location = new System.Drawing.Point(6, 52);
            this.ButtonConnect.Name = "ButtonConnect";
            this.ButtonConnect.Size = new System.Drawing.Size(205, 26);
            this.ButtonConnect.TabIndex = 3;
            this.ButtonConnect.Text = "Connect";
            this.ButtonConnect.UseVisualStyleBackColor = true;
            this.ButtonConnect.Click += new System.EventHandler(this.ButtonConnect_Click);
            // 
            // ComboBoxBaudRate
            // 
            this.ComboBoxBaudRate.FormattingEnabled = true;
            this.ComboBoxBaudRate.Items.AddRange(new object[] {
            "4800",
            "9600",
            "19200",
            "38400",
            "57600",
            "115200"});
            this.ComboBoxBaudRate.Location = new System.Drawing.Point(309, 21);
            this.ComboBoxBaudRate.Name = "ComboBoxBaudRate";
            this.ComboBoxBaudRate.Size = new System.Drawing.Size(114, 24);
            this.ComboBoxBaudRate.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(214, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(83, 17);
            this.label1.TabIndex = 1;
            this.label1.Text = "Baud Rate :";
            // 
            // ComboBoxPort
            // 
            this.ComboBoxPort.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.ComboBoxPort.FormattingEnabled = true;
            this.ComboBoxPort.Location = new System.Drawing.Point(117, 22);
            this.ComboBoxPort.Name = "ComboBoxPort";
            this.ComboBoxPort.Size = new System.Drawing.Size(91, 24);
            this.ComboBoxPort.TabIndex = 1;
            // 
            // ButtonScanPort
            // 
            this.ButtonScanPort.Location = new System.Drawing.Point(6, 21);
            this.ButtonScanPort.Name = "ButtonScanPort";
            this.ButtonScanPort.Size = new System.Drawing.Size(105, 25);
            this.ButtonScanPort.TabIndex = 1;
            this.ButtonScanPort.Text = "Scan Port";
            this.ButtonScanPort.UseVisualStyleBackColor = true;
            this.ButtonScanPort.Click += new System.EventHandler(this.ButtonScanPort_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.groupBox2.Controls.Add(this.LabelSensor9);
            this.groupBox2.Controls.Add(this.LabelSensor8);
            this.groupBox2.Controls.Add(this.LabelSensor7);
            this.groupBox2.Controls.Add(this.LabelSensor6);
            this.groupBox2.Controls.Add(this.LabelSensor5);
            this.groupBox2.Controls.Add(this.LabelSensor4);
            this.groupBox2.Controls.Add(this.LabelSensor3);
            this.groupBox2.Controls.Add(this.LabelSensor2);
            this.groupBox2.Controls.Add(this.LabelSensor1);
            this.groupBox2.Location = new System.Drawing.Point(731, 12);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(99, 665);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Data";
            // 
            // LabelSensor9
            // 
            this.LabelSensor9.AutoSize = true;
            this.LabelSensor9.Location = new System.Drawing.Point(6, 564);
            this.LabelSensor9.Name = "LabelSensor9";
            this.LabelSensor9.Size = new System.Drawing.Size(25, 17);
            this.LabelSensor9.TabIndex = 8;
            this.LabelSensor9.Text = "A9";
            // 
            // LabelSensor8
            // 
            this.LabelSensor8.AutoSize = true;
            this.LabelSensor8.Location = new System.Drawing.Point(6, 499);
            this.LabelSensor8.Name = "LabelSensor8";
            this.LabelSensor8.Size = new System.Drawing.Size(25, 17);
            this.LabelSensor8.TabIndex = 7;
            this.LabelSensor8.Text = "A8";
            // 
            // LabelSensor7
            // 
            this.LabelSensor7.AutoSize = true;
            this.LabelSensor7.Location = new System.Drawing.Point(5, 434);
            this.LabelSensor7.Name = "LabelSensor7";
            this.LabelSensor7.Size = new System.Drawing.Size(25, 17);
            this.LabelSensor7.TabIndex = 6;
            this.LabelSensor7.Text = "A7";
            // 
            // LabelSensor6
            // 
            this.LabelSensor6.AutoSize = true;
            this.LabelSensor6.Location = new System.Drawing.Point(5, 364);
            this.LabelSensor6.Name = "LabelSensor6";
            this.LabelSensor6.Size = new System.Drawing.Size(25, 17);
            this.LabelSensor6.TabIndex = 5;
            this.LabelSensor6.Text = "A6";
            // 
            // LabelSensor5
            // 
            this.LabelSensor5.AutoSize = true;
            this.LabelSensor5.Location = new System.Drawing.Point(6, 296);
            this.LabelSensor5.Name = "LabelSensor5";
            this.LabelSensor5.Size = new System.Drawing.Size(25, 17);
            this.LabelSensor5.TabIndex = 4;
            this.LabelSensor5.Text = "A5";
            // 
            // LabelSensor4
            // 
            this.LabelSensor4.AutoSize = true;
            this.LabelSensor4.Location = new System.Drawing.Point(6, 227);
            this.LabelSensor4.Name = "LabelSensor4";
            this.LabelSensor4.Size = new System.Drawing.Size(25, 17);
            this.LabelSensor4.TabIndex = 3;
            this.LabelSensor4.Text = "A4";
            // 
            // LabelSensor3
            // 
            this.LabelSensor3.AutoSize = true;
            this.LabelSensor3.Location = new System.Drawing.Point(6, 162);
            this.LabelSensor3.Name = "LabelSensor3";
            this.LabelSensor3.Size = new System.Drawing.Size(25, 17);
            this.LabelSensor3.TabIndex = 2;
            this.LabelSensor3.Text = "A3";
            // 
            // LabelSensor2
            // 
            this.LabelSensor2.AutoSize = true;
            this.LabelSensor2.Location = new System.Drawing.Point(5, 101);
            this.LabelSensor2.Name = "LabelSensor2";
            this.LabelSensor2.Size = new System.Drawing.Size(25, 17);
            this.LabelSensor2.TabIndex = 1;
            this.LabelSensor2.Text = "A2";
            // 
            // LabelSensor1
            // 
            this.LabelSensor1.AutoSize = true;
            this.LabelSensor1.Location = new System.Drawing.Point(5, 44);
            this.LabelSensor1.Name = "LabelSensor1";
            this.LabelSensor1.Size = new System.Drawing.Size(25, 17);
            this.LabelSensor1.TabIndex = 0;
            this.LabelSensor1.Text = "A1";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.PictureBoxRecordInd);
            this.groupBox3.Controls.Add(this.label2);
            this.groupBox3.Controls.Add(this.ButtonClear);
            this.groupBox3.Controls.Add(this.ButtonStopRecording);
            this.groupBox3.Controls.Add(this.ButtonStartRecording);
            this.groupBox3.Location = new System.Drawing.Point(12, 103);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(429, 90);
            this.groupBox3.TabIndex = 2;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Control";
            // 
            // PictureBoxRecordInd
            // 
            this.PictureBoxRecordInd.Image = global::WindowsFormsTest.Properties.Resources.Red;
            this.PictureBoxRecordInd.Location = new System.Drawing.Point(399, 1);
            this.PictureBoxRecordInd.Name = "PictureBoxRecordInd";
            this.PictureBoxRecordInd.Size = new System.Drawing.Size(24, 18);
            this.PictureBoxRecordInd.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.PictureBoxRecordInd.TabIndex = 4;
            this.PictureBoxRecordInd.TabStop = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(214, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 17);
            this.label2.TabIndex = 4;
            this.label2.Text = "Recording";
            // 
            // ButtonClear
            // 
            this.ButtonClear.Location = new System.Drawing.Point(6, 56);
            this.ButtonClear.Name = "ButtonClear";
            this.ButtonClear.Size = new System.Drawing.Size(417, 28);
            this.ButtonClear.TabIndex = 2;
            this.ButtonClear.Text = "Clear Data Grid View and Graph";
            this.ButtonClear.UseVisualStyleBackColor = true;
            this.ButtonClear.Click += new System.EventHandler(this.ButtonClear_Click);
            // 
            // ButtonStopRecording
            // 
            this.ButtonStopRecording.Location = new System.Drawing.Point(217, 21);
            this.ButtonStopRecording.Name = "ButtonStopRecording";
            this.ButtonStopRecording.Size = new System.Drawing.Size(206, 29);
            this.ButtonStopRecording.TabIndex = 1;
            this.ButtonStopRecording.Text = "Stop Recording";
            this.ButtonStopRecording.UseVisualStyleBackColor = true;
            this.ButtonStopRecording.Click += new System.EventHandler(this.ButtonStopRecording_Click);
            // 
            // ButtonStartRecording
            // 
            this.ButtonStartRecording.Location = new System.Drawing.Point(6, 21);
            this.ButtonStartRecording.Name = "ButtonStartRecording";
            this.ButtonStartRecording.Size = new System.Drawing.Size(205, 29);
            this.ButtonStartRecording.TabIndex = 0;
            this.ButtonStartRecording.Text = "Start Recording";
            this.ButtonStartRecording.UseVisualStyleBackColor = true;
            this.ButtonStartRecording.Click += new System.EventHandler(this.ButtonStartRecording_Click);
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.ProgressBarProcess);
            this.groupBox4.Controls.Add(this.ButtonSaveToExcel);
            this.groupBox4.Location = new System.Drawing.Point(447, 106);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(278, 87);
            this.groupBox4.TabIndex = 3;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Export";
            this.groupBox4.Enter += new System.EventHandler(this.groupBox4_Enter);
            // 
            // ProgressBarProcess
            // 
            this.ProgressBarProcess.Location = new System.Drawing.Point(0, 66);
            this.ProgressBarProcess.Maximum = 10;
            this.ProgressBarProcess.Name = "ProgressBarProcess";
            this.ProgressBarProcess.Size = new System.Drawing.Size(277, 15);
            this.ProgressBarProcess.TabIndex = 1;
            this.ProgressBarProcess.Visible = false;
            // 
            // ButtonSaveToExcel
            // 
            this.ButtonSaveToExcel.Location = new System.Drawing.Point(0, 18);
            this.ButtonSaveToExcel.Name = "ButtonSaveToExcel";
            this.ButtonSaveToExcel.Size = new System.Drawing.Size(278, 67);
            this.ButtonSaveToExcel.TabIndex = 0;
            this.ButtonSaveToExcel.Text = "Save to MS Excel";
            this.ButtonSaveToExcel.UseVisualStyleBackColor = true;
            this.ButtonSaveToExcel.Click += new System.EventHandler(this.ButtonSaveToExcel_Click);
            // 
            // groupBox5
            // 
            this.groupBox5.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.groupBox5.Controls.Add(this.dataGridView2);
            this.groupBox5.Controls.Add(this.dataGridView1);
            this.groupBox5.Location = new System.Drawing.Point(12, 199);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(718, 481);
            this.groupBox5.TabIndex = 4;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Data Grid View(Real-Time/Second)";
            // 
            // dataGridView1
            // 
            this.dataGridView1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.No,
            this.A1,
            this.A2,
            this.A3,
            this.A4,
            this.A5,
            this.A6,
            this.A7,
            this.A8,
            this.A9,
            this.TIME,
            this.DATE_});
            this.dataGridView1.Location = new System.Drawing.Point(6, 21);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(707, 454);
            this.dataGridView1.TabIndex = 0;
            // 
            // No
            // 
            this.No.FillWeight = 77.64149F;
            this.No.HeaderText = "No";
            this.No.MinimumWidth = 6;
            this.No.Name = "No";
            // 
            // A1
            // 
            this.A1.FillWeight = 97.41563F;
            this.A1.HeaderText = "A1";
            this.A1.MinimumWidth = 6;
            this.A1.Name = "A1";
            // 
            // A2
            // 
            this.A2.FillWeight = 95.69901F;
            this.A2.HeaderText = "A2";
            this.A2.MinimumWidth = 6;
            this.A2.Name = "A2";
            // 
            // A3
            // 
            this.A3.FillWeight = 96.29121F;
            this.A3.HeaderText = "A3";
            this.A3.MinimumWidth = 6;
            this.A3.Name = "A3";
            // 
            // A4
            // 
            this.A4.FillWeight = 97.44449F;
            this.A4.HeaderText = "A4";
            this.A4.MinimumWidth = 6;
            this.A4.Name = "A4";
            // 
            // A5
            // 
            this.A5.FillWeight = 98.10738F;
            this.A5.HeaderText = "A5";
            this.A5.MinimumWidth = 6;
            this.A5.Name = "A5";
            // 
            // A6
            // 
            this.A6.FillWeight = 99.38998F;
            this.A6.HeaderText = "A6";
            this.A6.MinimumWidth = 6;
            this.A6.Name = "A6";
            // 
            // A7
            // 
            this.A7.FillWeight = 100.9668F;
            this.A7.HeaderText = "A7";
            this.A7.MinimumWidth = 6;
            this.A7.Name = "A7";
            // 
            // A8
            // 
            this.A8.FillWeight = 96.97082F;
            this.A8.HeaderText = "A8";
            this.A8.MinimumWidth = 6;
            this.A8.Name = "A8";
            // 
            // A9
            // 
            this.A9.FillWeight = 96.25668F;
            this.A9.HeaderText = "A9";
            this.A9.MinimumWidth = 6;
            this.A9.Name = "A9";
            // 
            // TIME
            // 
            this.TIME.FillWeight = 121.9083F;
            this.TIME.HeaderText = "TIME";
            this.TIME.MinimumWidth = 6;
            this.TIME.Name = "TIME";
            // 
            // DATE_
            // 
            this.DATE_.FillWeight = 121.9083F;
            this.DATE_.HeaderText = "DATE";
            this.DATE_.MinimumWidth = 6;
            this.DATE_.Name = "DATE_";
            // 
            // groupBox6
            // 
            this.groupBox6.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox6.Controls.Add(this.chart2);
            this.groupBox6.Controls.Add(this.chart1);
            this.groupBox6.Location = new System.Drawing.Point(830, 12);
            this.groupBox6.Name = "groupBox6";
            this.groupBox6.Size = new System.Drawing.Size(928, 668);
            this.groupBox6.TabIndex = 5;
            this.groupBox6.TabStop = false;
            this.groupBox6.Text = "Graph (Real-Time/Second)";
            // 
            // chart1
            // 
            this.chart1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            chartArea5.Name = "ChartArea1";
            this.chart1.ChartAreas.Add(chartArea5);
            legend5.Name = "Legend1";
            this.chart1.Legends.Add(legend5);
            this.chart1.Location = new System.Drawing.Point(6, 21);
            this.chart1.Name = "chart1";
            series37.ChartArea = "ChartArea1";
            series37.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series37.Legend = "Legend1";
            series37.Name = "A1";
            series38.ChartArea = "ChartArea1";
            series38.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series38.Legend = "Legend1";
            series38.Name = "A2";
            series39.ChartArea = "ChartArea1";
            series39.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series39.Legend = "Legend1";
            series39.Name = "A3";
            series40.ChartArea = "ChartArea1";
            series40.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series40.Legend = "Legend1";
            series40.Name = "A4";
            series41.ChartArea = "ChartArea1";
            series41.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series41.Legend = "Legend1";
            series41.Name = "A5";
            series42.ChartArea = "ChartArea1";
            series42.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series42.Legend = "Legend1";
            series42.Name = "A6";
            series43.ChartArea = "ChartArea1";
            series43.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series43.Legend = "Legend1";
            series43.Name = "A7";
            series44.ChartArea = "ChartArea1";
            series44.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series44.Legend = "Legend1";
            series44.Name = "A8";
            series45.ChartArea = "ChartArea1";
            series45.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series45.Legend = "Legend1";
            series45.Name = "A9";
            this.chart1.Series.Add(series37);
            this.chart1.Series.Add(series38);
            this.chart1.Series.Add(series39);
            this.chart1.Series.Add(series40);
            this.chart1.Series.Add(series41);
            this.chart1.Series.Add(series42);
            this.chart1.Series.Add(series43);
            this.chart1.Series.Add(series44);
            this.chart1.Series.Add(series45);
            this.chart1.Size = new System.Drawing.Size(916, 644);
            this.chart1.TabIndex = 0;
            this.chart1.Text = "chart1";
            // 
            // TimerSerial
            // 
            this.TimerSerial.Interval = 1000;
            this.TimerSerial.Tick += new System.EventHandler(this.TimerSerial_Tick);
            // 
            // TimerDataLogRecord
            // 
            this.TimerDataLogRecord.Interval = 1000;
            this.TimerDataLogRecord.Tick += new System.EventHandler(this.TimerDataLogRecord_Tick);
            // 
            // RadioButtonA
            // 
            this.RadioButtonA.AutoSize = true;
            this.RadioButtonA.Location = new System.Drawing.Point(6, 18);
            this.RadioButtonA.Name = "RadioButtonA";
            this.RadioButtonA.Size = new System.Drawing.Size(125, 21);
            this.RadioButtonA.TabIndex = 6;
            this.RadioButtonA.TabStop = true;
            this.RadioButtonA.Text = "Sensor Array A";
            this.RadioButtonA.UseVisualStyleBackColor = true;
            this.RadioButtonA.CheckedChanged += new System.EventHandler(this.RadioButtonA_CheckedChanged);
            // 
            // groupBox7
            // 
            this.groupBox7.Controls.Add(this.RadioButtonB);
            this.groupBox7.Controls.Add(this.RadioButtonA);
            this.groupBox7.Location = new System.Drawing.Point(447, 12);
            this.groupBox7.Name = "groupBox7";
            this.groupBox7.Size = new System.Drawing.Size(278, 88);
            this.groupBox7.TabIndex = 7;
            this.groupBox7.TabStop = false;
            this.groupBox7.Text = "Selection";
            // 
            // RadioButtonB
            // 
            this.RadioButtonB.AutoSize = true;
            this.RadioButtonB.Location = new System.Drawing.Point(6, 55);
            this.RadioButtonB.Name = "RadioButtonB";
            this.RadioButtonB.Size = new System.Drawing.Size(125, 21);
            this.RadioButtonB.TabIndex = 8;
            this.RadioButtonB.TabStop = true;
            this.RadioButtonB.Text = "Sensor Array B";
            this.RadioButtonB.UseVisualStyleBackColor = true;
            this.RadioButtonB.CheckedChanged += new System.EventHandler(this.RadioButtonB_CheckedChanged);
            // 
            // dataGridView2
            // 
            this.dataGridView2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.dataGridView2.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn4,
            this.dataGridViewTextBoxColumn5,
            this.dataGridViewTextBoxColumn6,
            this.dataGridViewTextBoxColumn7,
            this.dataGridViewTextBoxColumn8,
            this.dataGridViewTextBoxColumn9,
            this.dataGridViewTextBoxColumn10,
            this.dataGridViewTextBoxColumn11,
            this.dataGridViewTextBoxColumn12});
            this.dataGridView2.Location = new System.Drawing.Point(6, 21);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.RowHeadersWidth = 51;
            this.dataGridView2.RowTemplate.Height = 24;
            this.dataGridView2.Size = new System.Drawing.Size(706, 454);
            this.dataGridView2.TabIndex = 1;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.FillWeight = 77.64149F;
            this.dataGridViewTextBoxColumn1.HeaderText = "No";
            this.dataGridViewTextBoxColumn1.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.FillWeight = 97.41563F;
            this.dataGridViewTextBoxColumn2.HeaderText = "B1";
            this.dataGridViewTextBoxColumn2.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.FillWeight = 95.69901F;
            this.dataGridViewTextBoxColumn3.HeaderText = "B2";
            this.dataGridViewTextBoxColumn3.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.FillWeight = 96.29121F;
            this.dataGridViewTextBoxColumn4.HeaderText = "B3";
            this.dataGridViewTextBoxColumn4.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.FillWeight = 97.44449F;
            this.dataGridViewTextBoxColumn5.HeaderText = "B4";
            this.dataGridViewTextBoxColumn5.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            // 
            // dataGridViewTextBoxColumn6
            // 
            this.dataGridViewTextBoxColumn6.FillWeight = 98.10738F;
            this.dataGridViewTextBoxColumn6.HeaderText = "B5";
            this.dataGridViewTextBoxColumn6.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn6.Name = "dataGridViewTextBoxColumn6";
            // 
            // dataGridViewTextBoxColumn7
            // 
            this.dataGridViewTextBoxColumn7.FillWeight = 99.38998F;
            this.dataGridViewTextBoxColumn7.HeaderText = "B6";
            this.dataGridViewTextBoxColumn7.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn7.Name = "dataGridViewTextBoxColumn7";
            // 
            // dataGridViewTextBoxColumn8
            // 
            this.dataGridViewTextBoxColumn8.FillWeight = 100.9668F;
            this.dataGridViewTextBoxColumn8.HeaderText = "B7";
            this.dataGridViewTextBoxColumn8.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn8.Name = "dataGridViewTextBoxColumn8";
            // 
            // dataGridViewTextBoxColumn9
            // 
            this.dataGridViewTextBoxColumn9.FillWeight = 96.97082F;
            this.dataGridViewTextBoxColumn9.HeaderText = "B8";
            this.dataGridViewTextBoxColumn9.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn9.Name = "dataGridViewTextBoxColumn9";
            // 
            // dataGridViewTextBoxColumn10
            // 
            this.dataGridViewTextBoxColumn10.FillWeight = 96.25668F;
            this.dataGridViewTextBoxColumn10.HeaderText = "B9";
            this.dataGridViewTextBoxColumn10.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn10.Name = "dataGridViewTextBoxColumn10";
            // 
            // dataGridViewTextBoxColumn11
            // 
            this.dataGridViewTextBoxColumn11.FillWeight = 121.9083F;
            this.dataGridViewTextBoxColumn11.HeaderText = "TIME";
            this.dataGridViewTextBoxColumn11.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn11.Name = "dataGridViewTextBoxColumn11";
            // 
            // dataGridViewTextBoxColumn12
            // 
            this.dataGridViewTextBoxColumn12.FillWeight = 121.9083F;
            this.dataGridViewTextBoxColumn12.HeaderText = "DATE";
            this.dataGridViewTextBoxColumn12.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn12.Name = "dataGridViewTextBoxColumn12";
            // 
            // chart2
            // 
            this.chart2.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            chartArea6.Name = "ChartArea1";
            this.chart2.ChartAreas.Add(chartArea6);
            legend6.Name = "Legend1";
            this.chart2.Legends.Add(legend6);
            this.chart2.Location = new System.Drawing.Point(6, 21);
            this.chart2.Name = "chart2";
            series46.ChartArea = "ChartArea1";
            series46.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series46.Legend = "Legend1";
            series46.Name = "B1";
            series47.ChartArea = "ChartArea1";
            series47.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series47.Legend = "Legend1";
            series47.Name = "B2";
            series48.ChartArea = "ChartArea1";
            series48.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series48.Legend = "Legend1";
            series48.Name = "B3";
            series49.ChartArea = "ChartArea1";
            series49.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series49.Legend = "Legend1";
            series49.Name = "B4";
            series50.ChartArea = "ChartArea1";
            series50.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series50.Legend = "Legend1";
            series50.Name = "B5";
            series51.ChartArea = "ChartArea1";
            series51.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series51.Legend = "Legend1";
            series51.Name = "B6";
            series52.ChartArea = "ChartArea1";
            series52.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series52.Legend = "Legend1";
            series52.Name = "B7";
            series53.ChartArea = "ChartArea1";
            series53.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series53.Legend = "Legend1";
            series53.Name = "B8";
            series54.ChartArea = "ChartArea1";
            series54.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series54.Legend = "Legend1";
            series54.Name = "B9";
            this.chart2.Series.Add(series46);
            this.chart2.Series.Add(series47);
            this.chart2.Series.Add(series48);
            this.chart2.Series.Add(series49);
            this.chart2.Series.Add(series50);
            this.chart2.Series.Add(series51);
            this.chart2.Series.Add(series52);
            this.chart2.Series.Add(series53);
            this.chart2.Series.Add(series54);
            this.chart2.Size = new System.Drawing.Size(916, 644);
            this.chart2.TabIndex = 1;
            this.chart2.Text = "chart2";
            // 
            // Form1
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.AutoSize = true;
            this.ClientSize = new System.Drawing.Size(1772, 683);
            this.Controls.Add(this.groupBox7);
            this.Controls.Add(this.groupBox6);
            this.Controls.Add(this.groupBox5);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form1";
            this.Text = "Data Logger";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PictureBoxConnectionInd)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PictureBoxRecordInd)).EndInit();
            this.groupBox4.ResumeLayout(false);
            this.groupBox5.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox6.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).EndInit();
            this.groupBox7.ResumeLayout(false);
            this.groupBox7.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chart2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.PictureBox PictureBoxConnectionInd;
        private System.Windows.Forms.Label LabelStatus;
        private System.Windows.Forms.Button ButtonDisconnect;
        private System.Windows.Forms.Button ButtonConnect;
        private System.Windows.Forms.ComboBox ComboBoxBaudRate;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox ComboBoxPort;
        private System.Windows.Forms.Button ButtonScanPort;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label LabelSensor3;
        private System.Windows.Forms.Label LabelSensor2;
        private System.Windows.Forms.Label LabelSensor1;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.PictureBox PictureBoxRecordInd;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button ButtonClear;
        private System.Windows.Forms.Button ButtonStopRecording;
        private System.Windows.Forms.Button ButtonStartRecording;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.ProgressBar ProgressBarProcess;
        private System.Windows.Forms.Button ButtonSaveToExcel;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.GroupBox groupBox6;
        private System.Windows.Forms.DataVisualization.Charting.Chart chart1;
        private System.IO.Ports.SerialPort SerialPort1;
        private System.Windows.Forms.Timer TimerSerial;
        private System.Windows.Forms.Timer TimerDataLogRecord;
        private System.Windows.Forms.Label LabelSensor9;
        private System.Windows.Forms.Label LabelSensor8;
        private System.Windows.Forms.Label LabelSensor7;
        private System.Windows.Forms.Label LabelSensor6;
        private System.Windows.Forms.Label LabelSensor5;
        private System.Windows.Forms.Label LabelSensor4;
        private System.Windows.Forms.DataGridViewTextBoxColumn No;
        private System.Windows.Forms.DataGridViewTextBoxColumn A1;
        private System.Windows.Forms.DataGridViewTextBoxColumn A2;
        private System.Windows.Forms.DataGridViewTextBoxColumn A3;
        private System.Windows.Forms.DataGridViewTextBoxColumn A4;
        private System.Windows.Forms.DataGridViewTextBoxColumn A5;
        private System.Windows.Forms.DataGridViewTextBoxColumn A6;
        private System.Windows.Forms.DataGridViewTextBoxColumn A7;
        private System.Windows.Forms.DataGridViewTextBoxColumn A8;
        private System.Windows.Forms.DataGridViewTextBoxColumn A9;
        private System.Windows.Forms.DataGridViewTextBoxColumn TIME;
        private System.Windows.Forms.DataGridViewTextBoxColumn DATE_;
        private System.Windows.Forms.RadioButton RadioButtonA;
        private System.Windows.Forms.GroupBox groupBox7;
        private System.Windows.Forms.RadioButton RadioButtonB;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn6;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn7;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn8;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn9;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn10;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn11;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn12;
        private System.Windows.Forms.DataVisualization.Charting.Chart chart2;
    }
}

