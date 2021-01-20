
namespace ConsoleAppGUI
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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series2 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series3 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series4 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series5 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series6 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series7 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series8 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series9 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series10 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series11 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series12 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series13 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series14 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series15 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series16 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series17 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series18 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.ButtonScanPort = new System.Windows.Forms.Button();
            this.PictureBoxConnectionInd = new System.Windows.Forms.PictureBox();
            this.LabelStatus = new System.Windows.Forms.Label();
            this.ButtonDisconnect = new System.Windows.Forms.Button();
            this.ButtonConnect = new System.Windows.Forms.Button();
            this.ComboBoxBaudRate = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.ComboBoxPort = new System.Windows.Forms.ComboBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.LabelSensorArrayB = new System.Windows.Forms.Label();
            this.LabelSensorArrayA = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.PictureBoxRecordInd = new System.Windows.Forms.PictureBox();
            this.ButtonClear = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.ButtonStopRecording = new System.Windows.Forms.Button();
            this.ButtonStartRecording = new System.Windows.Forms.Button();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.ProgressBarProcess = new System.Windows.Forms.ProgressBar();
            this.ButtonSaveToCSV = new System.Windows.Forms.Button();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.A1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.A9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SensorArrayB = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.B2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.B3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.B4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.B5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.B6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.B7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.B8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.B9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.checkBox2 = new System.Windows.Forms.CheckBox();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.chart1 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.SerialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.TimerSerial = new System.Windows.Forms.Timer(this.components);
            this.TimerDataLogRecord = new System.Windows.Forms.Timer(this.components);
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
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.ButtonScanPort);
            this.groupBox1.Controls.Add(this.PictureBoxConnectionInd);
            this.groupBox1.Controls.Add(this.LabelStatus);
            this.groupBox1.Controls.Add(this.ButtonDisconnect);
            this.groupBox1.Controls.Add(this.ButtonConnect);
            this.groupBox1.Controls.Add(this.ComboBoxBaudRate);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.ComboBoxPort);
            this.groupBox1.Location = new System.Drawing.Point(18, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(418, 120);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Connection";
            // 
            // ButtonScanPort
            // 
            this.ButtonScanPort.Location = new System.Drawing.Point(6, 30);
            this.ButtonScanPort.Name = "ButtonScanPort";
            this.ButtonScanPort.Size = new System.Drawing.Size(97, 24);
            this.ButtonScanPort.TabIndex = 3;
            this.ButtonScanPort.Text = "SCAN PORT";
            this.ButtonScanPort.UseVisualStyleBackColor = true;
            this.ButtonScanPort.Click += new System.EventHandler(this.button1_Click);
            // 
            // PictureBoxConnectionInd
            // 
            this.PictureBoxConnectionInd.Image = global::ConsoleAppGUI.Properties.Resources.Red;
            this.PictureBoxConnectionInd.Location = new System.Drawing.Point(374, 4);
            this.PictureBoxConnectionInd.Name = "PictureBoxConnectionInd";
            this.PictureBoxConnectionInd.Size = new System.Drawing.Size(13, 13);
            this.PictureBoxConnectionInd.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.PictureBoxConnectionInd.TabIndex = 1;
            this.PictureBoxConnectionInd.TabStop = false;
            // 
            // LabelStatus
            // 
            this.LabelStatus.AutoSize = true;
            this.LabelStatus.Location = new System.Drawing.Point(213, 0);
            this.LabelStatus.Name = "LabelStatus";
            this.LabelStatus.Size = new System.Drawing.Size(130, 17);
            this.LabelStatus.TabIndex = 1;
            this.LabelStatus.Text = "Status : Disconnect";
            this.LabelStatus.Click += new System.EventHandler(this.label1_Click);
            // 
            // ButtonDisconnect
            // 
            this.ButtonDisconnect.Location = new System.Drawing.Point(204, 60);
            this.ButtonDisconnect.Name = "ButtonDisconnect";
            this.ButtonDisconnect.Size = new System.Drawing.Size(208, 44);
            this.ButtonDisconnect.TabIndex = 1;
            this.ButtonDisconnect.Text = "Disconnect";
            this.ButtonDisconnect.UseVisualStyleBackColor = true;
            this.ButtonDisconnect.Click += new System.EventHandler(this.ButtonDisconnect_Click);
            // 
            // ButtonConnect
            // 
            this.ButtonConnect.Location = new System.Drawing.Point(6, 60);
            this.ButtonConnect.Name = "ButtonConnect";
            this.ButtonConnect.Size = new System.Drawing.Size(192, 44);
            this.ButtonConnect.TabIndex = 1;
            this.ButtonConnect.Text = "Connect";
            this.ButtonConnect.UseVisualStyleBackColor = true;
            this.ButtonConnect.Click += new System.EventHandler(this.ButtonConnect_Click);
            // 
            // ComboBoxBaudRate
            // 
            this.ComboBoxBaudRate.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.ComboBoxBaudRate.FormattingEnabled = true;
            this.ComboBoxBaudRate.Items.AddRange(new object[] {
            "1200",
            "2400",
            "4800",
            "9600",
            "19200",
            "38400",
            "57600",
            "115200"});
            this.ComboBoxBaudRate.Location = new System.Drawing.Point(300, 29);
            this.ComboBoxBaudRate.Name = "ComboBoxBaudRate";
            this.ComboBoxBaudRate.Size = new System.Drawing.Size(112, 24);
            this.ComboBoxBaudRate.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(201, 30);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(87, 17);
            this.label1.TabIndex = 1;
            this.label1.Text = "BAUD RATE";
            // 
            // ComboBoxPort
            // 
            this.ComboBoxPort.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.ComboBoxPort.FormattingEnabled = true;
            this.ComboBoxPort.Location = new System.Drawing.Point(109, 30);
            this.ComboBoxPort.Name = "ComboBoxPort";
            this.ComboBoxPort.Size = new System.Drawing.Size(84, 24);
            this.ComboBoxPort.TabIndex = 1;
            this.ComboBoxPort.SelectedIndexChanged += new System.EventHandler(this.ComboBoxPort_SelectedIndexChanged);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.LabelSensorArrayB);
            this.groupBox2.Controls.Add(this.LabelSensorArrayA);
            this.groupBox2.Location = new System.Drawing.Point(468, 16);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(277, 116);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Incoming Data(Real-Time/Second)";
            // 
            // LabelSensorArrayB
            // 
            this.LabelSensorArrayB.AutoSize = true;
            this.LabelSensorArrayB.Location = new System.Drawing.Point(15, 78);
            this.LabelSensorArrayB.Name = "LabelSensorArrayB";
            this.LabelSensorArrayB.Size = new System.Drawing.Size(67, 17);
            this.LabelSensorArrayB.TabIndex = 2;
            this.LabelSensorArrayB.Text = "Waiting...";
            // 
            // LabelSensorArrayA
            // 
            this.LabelSensorArrayA.AutoSize = true;
            this.LabelSensorArrayA.Location = new System.Drawing.Point(15, 33);
            this.LabelSensorArrayA.Name = "LabelSensorArrayA";
            this.LabelSensorArrayA.Size = new System.Drawing.Size(67, 17);
            this.LabelSensorArrayA.TabIndex = 2;
            this.LabelSensorArrayA.Text = "Waiting...";
            this.LabelSensorArrayA.Click += new System.EventHandler(this.LabelSensorArrayA_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.PictureBoxRecordInd);
            this.groupBox3.Controls.Add(this.ButtonClear);
            this.groupBox3.Controls.Add(this.label2);
            this.groupBox3.Controls.Add(this.ButtonStopRecording);
            this.groupBox3.Controls.Add(this.ButtonStartRecording);
            this.groupBox3.Location = new System.Drawing.Point(18, 138);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(418, 124);
            this.groupBox3.TabIndex = 2;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Control";
            // 
            // PictureBoxRecordInd
            // 
            this.PictureBoxRecordInd.Image = global::ConsoleAppGUI.Properties.Resources.Red;
            this.PictureBoxRecordInd.Location = new System.Drawing.Point(374, 4);
            this.PictureBoxRecordInd.Name = "PictureBoxRecordInd";
            this.PictureBoxRecordInd.Size = new System.Drawing.Size(13, 13);
            this.PictureBoxRecordInd.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.PictureBoxRecordInd.TabIndex = 4;
            this.PictureBoxRecordInd.TabStop = false;
            // 
            // ButtonClear
            // 
            this.ButtonClear.Location = new System.Drawing.Point(6, 68);
            this.ButtonClear.Name = "ButtonClear";
            this.ButtonClear.Size = new System.Drawing.Size(406, 47);
            this.ButtonClear.TabIndex = 3;
            this.ButtonClear.Text = "Clear DataGrid View and Graph";
            this.ButtonClear.UseVisualStyleBackColor = true;
            this.ButtonClear.Click += new System.EventHandler(this.ButtonClear_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(295, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 17);
            this.label2.TabIndex = 3;
            this.label2.Text = "Recording";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // ButtonStopRecording
            // 
            this.ButtonStopRecording.Location = new System.Drawing.Point(216, 23);
            this.ButtonStopRecording.Name = "ButtonStopRecording";
            this.ButtonStopRecording.Size = new System.Drawing.Size(196, 39);
            this.ButtonStopRecording.TabIndex = 3;
            this.ButtonStopRecording.Text = "Stop Recording";
            this.ButtonStopRecording.UseVisualStyleBackColor = true;
            this.ButtonStopRecording.Click += new System.EventHandler(this.ButtonStopRecording_Click);
            // 
            // ButtonStartRecording
            // 
            this.ButtonStartRecording.Location = new System.Drawing.Point(6, 21);
            this.ButtonStartRecording.Name = "ButtonStartRecording";
            this.ButtonStartRecording.Size = new System.Drawing.Size(204, 41);
            this.ButtonStartRecording.TabIndex = 3;
            this.ButtonStartRecording.Text = "Start Recording";
            this.ButtonStartRecording.UseVisualStyleBackColor = true;
            this.ButtonStartRecording.Click += new System.EventHandler(this.ButtonStartRecording_Click);
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.ProgressBarProcess);
            this.groupBox4.Controls.Add(this.ButtonSaveToCSV);
            this.groupBox4.Location = new System.Drawing.Point(468, 142);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(277, 120);
            this.groupBox4.TabIndex = 3;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Export";
            // 
            // ProgressBarProcess
            // 
            this.ProgressBarProcess.Location = new System.Drawing.Point(6, 85);
            this.ProgressBarProcess.Name = "ProgressBarProcess";
            this.ProgressBarProcess.Size = new System.Drawing.Size(265, 14);
            this.ProgressBarProcess.TabIndex = 4;
            this.ProgressBarProcess.Visible = false;
            // 
            // ButtonSaveToCSV
            // 
            this.ButtonSaveToCSV.Location = new System.Drawing.Point(6, 26);
            this.ButtonSaveToCSV.Name = "ButtonSaveToCSV";
            this.ButtonSaveToCSV.Size = new System.Drawing.Size(265, 85);
            this.ButtonSaveToCSV.TabIndex = 0;
            this.ButtonSaveToCSV.Text = "Save To Excel";
            this.ButtonSaveToCSV.UseVisualStyleBackColor = true;
            this.ButtonSaveToCSV.Click += new System.EventHandler(this.ButtonSaveToCSV_Click);
            // 
            // groupBox5
            // 
            this.groupBox5.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.groupBox5.Controls.Add(this.dataGridView1);
            this.groupBox5.Location = new System.Drawing.Point(12, 275);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(739, 445);
            this.groupBox5.TabIndex = 4;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Data Grid View (Real Time/Second )";
            // 
            // dataGridView1
            // 
            this.dataGridView1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.A1,
            this.A2,
            this.A3,
            this.A4,
            this.A5,
            this.A6,
            this.A7,
            this.A8,
            this.A9,
            this.SensorArrayB,
            this.B2,
            this.B3,
            this.B4,
            this.B5,
            this.B6,
            this.B7,
            this.B8,
            this.B9});
            this.dataGridView1.Location = new System.Drawing.Point(6, 21);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(727, 418);
            this.dataGridView1.TabIndex = 0;
            // 
            // A1
            // 
            this.A1.HeaderText = "A1";
            this.A1.MinimumWidth = 6;
            this.A1.Name = "A1";
            // 
            // A2
            // 
            this.A2.HeaderText = "A2";
            this.A2.MinimumWidth = 6;
            this.A2.Name = "A2";
            // 
            // A3
            // 
            this.A3.HeaderText = "A3";
            this.A3.MinimumWidth = 6;
            this.A3.Name = "A3";
            // 
            // A4
            // 
            this.A4.HeaderText = "A4";
            this.A4.MinimumWidth = 6;
            this.A4.Name = "A4";
            // 
            // A5
            // 
            this.A5.HeaderText = "A5";
            this.A5.MinimumWidth = 6;
            this.A5.Name = "A5";
            // 
            // A6
            // 
            this.A6.HeaderText = "A6";
            this.A6.MinimumWidth = 6;
            this.A6.Name = "A6";
            // 
            // A7
            // 
            this.A7.HeaderText = "A7";
            this.A7.MinimumWidth = 6;
            this.A7.Name = "A7";
            // 
            // A8
            // 
            this.A8.HeaderText = "A8";
            this.A8.MinimumWidth = 6;
            this.A8.Name = "A8";
            // 
            // A9
            // 
            this.A9.HeaderText = "A9";
            this.A9.MinimumWidth = 6;
            this.A9.Name = "A9";
            // 
            // SensorArrayB
            // 
            this.SensorArrayB.HeaderText = "B1";
            this.SensorArrayB.MinimumWidth = 6;
            this.SensorArrayB.Name = "SensorArrayB";
            // 
            // B2
            // 
            this.B2.HeaderText = "B2";
            this.B2.MinimumWidth = 6;
            this.B2.Name = "B2";
            // 
            // B3
            // 
            this.B3.HeaderText = "B3";
            this.B3.MinimumWidth = 6;
            this.B3.Name = "B3";
            // 
            // B4
            // 
            this.B4.HeaderText = "B4";
            this.B4.MinimumWidth = 6;
            this.B4.Name = "B4";
            // 
            // B5
            // 
            this.B5.HeaderText = "B5";
            this.B5.MinimumWidth = 6;
            this.B5.Name = "B5";
            // 
            // B6
            // 
            this.B6.HeaderText = "B6";
            this.B6.MinimumWidth = 6;
            this.B6.Name = "B6";
            // 
            // B7
            // 
            this.B7.HeaderText = "B7";
            this.B7.MinimumWidth = 6;
            this.B7.Name = "B7";
            // 
            // B8
            // 
            this.B8.HeaderText = "B8";
            this.B8.MinimumWidth = 6;
            this.B8.Name = "B8";
            // 
            // B9
            // 
            this.B9.HeaderText = "B9";
            this.B9.MinimumWidth = 6;
            this.B9.Name = "B9";
            // 
            // groupBox6
            // 
            this.groupBox6.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox6.Controls.Add(this.checkBox2);
            this.groupBox6.Controls.Add(this.checkBox1);
            this.groupBox6.Controls.Add(this.chart1);
            this.groupBox6.Location = new System.Drawing.Point(757, 16);
            this.groupBox6.Name = "groupBox6";
            this.groupBox6.Size = new System.Drawing.Size(908, 704);
            this.groupBox6.TabIndex = 5;
            this.groupBox6.TabStop = false;
            this.groupBox6.Text = "Graph (Real-Time/Second)";
            // 
            // checkBox2
            // 
            this.checkBox2.AutoSize = true;
            this.checkBox2.Location = new System.Drawing.Point(638, 25);
            this.checkBox2.Name = "checkBox2";
            this.checkBox2.Size = new System.Drawing.Size(126, 21);
            this.checkBox2.TabIndex = 2;
            this.checkBox2.Text = "Sensor Array B";
            this.checkBox2.UseVisualStyleBackColor = true;
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(496, 25);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(126, 21);
            this.checkBox1.TabIndex = 1;
            this.checkBox1.Text = "Sensor Array A";
            this.checkBox1.UseVisualStyleBackColor = true;
            this.checkBox1.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
            // 
            // chart1
            // 
            this.chart1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            chartArea1.Name = "ChartArea1";
            this.chart1.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.chart1.Legends.Add(legend1);
            this.chart1.Location = new System.Drawing.Point(6, 56);
            this.chart1.Name = "chart1";
            series1.ChartArea = "ChartArea1";
            series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series1.Legend = "Legend1";
            series1.Name = "A1";
            series2.ChartArea = "ChartArea1";
            series2.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series2.Legend = "Legend1";
            series2.Name = "A2";
            series3.ChartArea = "ChartArea1";
            series3.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series3.Legend = "Legend1";
            series3.Name = "A3";
            series4.ChartArea = "ChartArea1";
            series4.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series4.Legend = "Legend1";
            series4.Name = "A4";
            series5.ChartArea = "ChartArea1";
            series5.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series5.Legend = "Legend1";
            series5.Name = "A5";
            series6.ChartArea = "ChartArea1";
            series6.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series6.Legend = "Legend1";
            series6.Name = "A6";
            series7.ChartArea = "ChartArea1";
            series7.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series7.Legend = "Legend1";
            series7.Name = "A7";
            series8.ChartArea = "ChartArea1";
            series8.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series8.Legend = "Legend1";
            series8.Name = "A8";
            series9.ChartArea = "ChartArea1";
            series9.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series9.Legend = "Legend1";
            series9.Name = "A9";
            series10.ChartArea = "ChartArea1";
            series10.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series10.Legend = "Legend1";
            series10.Name = "B1";
            series11.ChartArea = "ChartArea1";
            series11.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series11.Legend = "Legend1";
            series11.Name = "B2";
            series12.ChartArea = "ChartArea1";
            series12.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series12.Legend = "Legend1";
            series12.Name = "B3";
            series13.ChartArea = "ChartArea1";
            series13.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series13.Legend = "Legend1";
            series13.Name = "B4";
            series14.ChartArea = "ChartArea1";
            series14.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series14.Legend = "Legend1";
            series14.Name = "B5";
            series15.ChartArea = "ChartArea1";
            series15.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series15.Legend = "Legend1";
            series15.Name = "B6";
            series16.ChartArea = "ChartArea1";
            series16.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series16.Legend = "Legend1";
            series16.Name = "B7";
            series17.ChartArea = "ChartArea1";
            series17.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series17.Legend = "Legend1";
            series17.Name = "B8";
            series18.ChartArea = "ChartArea1";
            series18.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series18.Legend = "Legend1";
            series18.Name = "B9";
            this.chart1.Series.Add(series1);
            this.chart1.Series.Add(series2);
            this.chart1.Series.Add(series3);
            this.chart1.Series.Add(series4);
            this.chart1.Series.Add(series5);
            this.chart1.Series.Add(series6);
            this.chart1.Series.Add(series7);
            this.chart1.Series.Add(series8);
            this.chart1.Series.Add(series9);
            this.chart1.Series.Add(series10);
            this.chart1.Series.Add(series11);
            this.chart1.Series.Add(series12);
            this.chart1.Series.Add(series13);
            this.chart1.Series.Add(series14);
            this.chart1.Series.Add(series15);
            this.chart1.Series.Add(series16);
            this.chart1.Series.Add(series17);
            this.chart1.Series.Add(series18);
            this.chart1.Size = new System.Drawing.Size(896, 642);
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
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1677, 732);
            this.Controls.Add(this.groupBox6);
            this.Controls.Add(this.groupBox5);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form1";
            this.Text = "DataLogger";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
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
            this.groupBox6.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button ButtonDisconnect;
        private System.Windows.Forms.Button ButtonConnect;
        private System.Windows.Forms.ComboBox ComboBoxBaudRate;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox ComboBoxPort;
        private System.Windows.Forms.Label LabelStatus;
        private System.Windows.Forms.PictureBox PictureBoxConnectionInd;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label LabelSensorArrayB;
        private System.Windows.Forms.Label LabelSensorArrayA;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button ButtonClear;
        private System.Windows.Forms.Button ButtonStopRecording;
        private System.Windows.Forms.Button ButtonStartRecording;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.PictureBox PictureBoxRecordInd;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.ProgressBar ProgressBarProcess;
        private System.Windows.Forms.Button ButtonSaveToCSV;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.GroupBox groupBox6;
        private System.Windows.Forms.DataVisualization.Charting.Chart chart1;
        private System.Windows.Forms.CheckBox checkBox2;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.DataGridViewTextBoxColumn A1;
        private System.Windows.Forms.DataGridViewTextBoxColumn A2;
        private System.Windows.Forms.DataGridViewTextBoxColumn A3;
        private System.Windows.Forms.DataGridViewTextBoxColumn A4;
        private System.Windows.Forms.DataGridViewTextBoxColumn A5;
        private System.Windows.Forms.DataGridViewTextBoxColumn A6;
        private System.Windows.Forms.DataGridViewTextBoxColumn A7;
        private System.Windows.Forms.DataGridViewTextBoxColumn A8;
        private System.Windows.Forms.DataGridViewTextBoxColumn A9;
        private System.Windows.Forms.DataGridViewTextBoxColumn SensorArrayB;
        private System.Windows.Forms.DataGridViewTextBoxColumn B2;
        private System.Windows.Forms.DataGridViewTextBoxColumn B3;
        private System.Windows.Forms.DataGridViewTextBoxColumn B4;
        private System.Windows.Forms.DataGridViewTextBoxColumn B5;
        private System.Windows.Forms.DataGridViewTextBoxColumn B6;
        private System.Windows.Forms.DataGridViewTextBoxColumn B7;
        private System.Windows.Forms.DataGridViewTextBoxColumn B8;
        private System.Windows.Forms.DataGridViewTextBoxColumn B9;
        private System.IO.Ports.SerialPort SerialPort1;
        private System.Windows.Forms.Button ButtonScanPort;
        private System.Windows.Forms.Timer TimerSerial;
        private System.Windows.Forms.Timer TimerDataLogRecord;
    }
}

