using System;
using System.Threading;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using System.IO.Ports;
using System.Xml.XPath;
using System.Globalization;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Security;
using System.Xml;
using Microsoft.Office.Core;
using System.Reflection;
using Excel = Microsoft.Office.Interop.Excel;
using ExcelAutoFormat = Microsoft.Office.Interop.Excel.XlRangeAutoFormat;
using Microsoft.Office.Interop;
using Microsoft.Office.Interop.Excel;

namespace WindowsFormsTest
{
    public partial class Form1 : Form
    {
        private int Limit = 10;
        private string FilePathAndName;
        private string S1A_Val, S2A_Val, S3A_Val, S4A_Val, S5A_Val, S6A_Val, S7A_Val, S8A_Val, S9A_Val;
        private string S1B_Val, S2B_Val, S3B_Val, S4B_Val, S5B_Val, S6B_Val, S7B_Val, S8B_Val, S9B_Val;
        private string Sen_A, Sen_B;
        private string A_1, B_1, A_1_Val, B_1_Val;
        private string dataSend;
        
        public Form1()
        {
            InitializeComponent();
            CheckForIllegalCrossThreadCalls = false;
        }    
        private void Form1_Load(object sender, EventArgs e)
        {
            this.CenterToScreen();
            ButtonDisconnect.Enabled = false;
            ButtonConnect.Enabled = false;
            ButtonStartRecording.Enabled = false;
            ButtonStopRecording.Enabled = false;
            ComboBoxBaudRate.SelectedIndex = 3;

            for (var i = 0; i <= 30; i += 1)
            {
                chart1.Series["A1"].Points.AddXY(DateTime.Now.ToLongTimeString(), 0);
                if (chart1.Series[0].Points.Count == Limit)
                {
                    chart1.Series[0].Points.RemoveAt(0);
                }
                chart1.ChartAreas[0].AxisY.Maximum = 3.5;
                chart1.ChartAreas[0].AxisY.Interval = 0.1;


                chart1.Series["A2"].Points.AddY(0);
                if (chart1.Series[1].Points.Count == Limit)
                {
                    chart1.Series[1].Points.RemoveAt(0);
                }

                chart1.Series["A3"].Points.AddY(0);
                if (chart1.Series[2].Points.Count == Limit)
                {
                    chart1.Series[2].Points.RemoveAt(0);
                }
                chart1.Series["A4"].Points.AddY(0);
                if (chart1.Series[3].Points.Count == Limit)
                {
                    chart1.Series[3].Points.RemoveAt(0);
                }
                chart1.Series["A5"].Points.AddY(0);
                if (chart1.Series[4].Points.Count == Limit)
                {
                    chart1.Series[4].Points.RemoveAt(0);
                }
                chart1.Series["A6"].Points.AddY(0);
                if (chart1.Series[5].Points.Count == Limit)
                {
                    chart1.Series[5].Points.RemoveAt(0);
                }
                chart1.Series["A7"].Points.AddY(0);
                if (chart1.Series[6].Points.Count == Limit)
                {
                    chart1.Series[6].Points.RemoveAt(0);
                }
                chart1.Series["A8"].Points.AddY(0);
                if (chart1.Series[7].Points.Count == Limit)
                {
                    chart1.Series[7].Points.RemoveAt(0);
                }
                chart1.Series["A9"].Points.AddY(0);
                if (chart1.Series[8].Points.Count == Limit)
                {
                    chart1.Series[8].Points.RemoveAt(0);
                }
            }

            chart1.ChartAreas[0].AxisY.Maximum = 3.5;

            for (var i = 0; i <= 30; i += 1)
            {
                chart2.Series["B1"].Points.AddXY(DateTime.Now.ToLongTimeString(), 0);
                if (chart2.Series[0].Points.Count == Limit)
                {
                    chart2.Series[0].Points.RemoveAt(0);
                }
                chart2.ChartAreas[0].AxisY.Maximum = 3.5;
                chart2.ChartAreas[0].AxisY.Interval = 0.1;

                chart2.Series["B2"].Points.AddY(0);
                if (chart2.Series[1].Points.Count == Limit)
                {
                    chart2.Series[1].Points.RemoveAt(0);
                }

                chart2.Series["B3"].Points.AddY(0);
                if (chart2.Series[2].Points.Count == Limit)
                {
                    chart2.Series[2].Points.RemoveAt(0);
                }
                chart2.Series["B4"].Points.AddY(0);
                if (chart2.Series[3].Points.Count == Limit)
                {
                    chart2.Series[3].Points.RemoveAt(0);
                }
                chart2.Series["B5"].Points.AddY(0);
                if (chart2.Series[4].Points.Count == Limit)
                {
                    chart2.Series[4].Points.RemoveAt(0);
                }
                chart2.Series["B6"].Points.AddY(0);
                if (chart2.Series[5].Points.Count == Limit)
                {
                    chart2.Series[5].Points.RemoveAt(0);
                }
                chart2.Series["B7"].Points.AddY(0);
                if (chart2.Series[6].Points.Count == Limit)
                {
                    chart2.Series[6].Points.RemoveAt(0);
                }
                chart2.Series["B8"].Points.AddY(0);
                if (chart2.Series[7].Points.Count == Limit)
                {
                    chart2.Series[7].Points.RemoveAt(0);
                }
                chart2.Series["B9"].Points.AddY(0);
                if (chart2.Series[8].Points.Count == Limit)
                {
                    chart2.Series[8].Points.RemoveAt(0);
                }
            }

            chart2.ChartAreas[0].AxisY.Maximum = 3.5;

            for (var i = 0; i <= 30; i += 1)
            {
                chart3.Series["A1"].Points.AddXY(DateTime.Now.ToLongTimeString(), 0);
                if (chart3.Series[0].Points.Count == Limit)
                {
                    chart3.Series[0].Points.RemoveAt(0);
                }
                chart3.ChartAreas[0].AxisY.Maximum = 3.5;
                chart3.ChartAreas[0].AxisY.Interval = 0.1;

                chart3.Series["A2"].Points.AddY(0);
                if (chart3.Series[1].Points.Count == Limit)
                {
                    chart3.Series[1].Points.RemoveAt(0);
                }

                chart3.Series["A3"].Points.AddY(0);
                if (chart3.Series[2].Points.Count == Limit)
                {
                    chart3.Series[2].Points.RemoveAt(0);
                }
                chart3.Series["A4"].Points.AddY(0);
                if (chart3.Series[3].Points.Count == Limit)
                {
                    chart3.Series[3].Points.RemoveAt(0);
                }
                chart3.Series["A5"].Points.AddY(0);
                if (chart3.Series[4].Points.Count == Limit)
                {
                    chart3.Series[4].Points.RemoveAt(0);
                }
                chart3.Series["A6"].Points.AddY(0);
                if (chart3.Series[5].Points.Count == Limit)
                {
                    chart3.Series[5].Points.RemoveAt(0);
                }
                chart3.Series["A7"].Points.AddY(0);
                if (chart3.Series[6].Points.Count == Limit)
                {
                    chart3.Series[6].Points.RemoveAt(0);
                }
                chart3.Series["A8"].Points.AddY(0);
                if (chart3.Series[7].Points.Count == Limit)
                {
                    chart3.Series[7].Points.RemoveAt(0);
                }
                chart3.Series["A9"].Points.AddY(0);
                if (chart3.Series[8].Points.Count == Limit)
                {
                    chart3.Series[8].Points.RemoveAt(0);
                }
                chart3.Series["B1"].Points.AddY(0);
                if (chart3.Series[9].Points.Count == Limit)
                {
                    chart3.Series[9].Points.RemoveAt(0);
                }
                chart3.Series["B2"].Points.AddY(0);
                if (chart3.Series[10].Points.Count == Limit)
                {
                    chart3.Series[10].Points.RemoveAt(0);
                }

                chart3.Series["B3"].Points.AddY(0);
                if (chart3.Series[11].Points.Count == Limit)
                {
                    chart3.Series[11].Points.RemoveAt(0);
                }
                chart3.Series["B4"].Points.AddY(0);
                if (chart3.Series[12].Points.Count == Limit)
                {
                    chart3.Series[12].Points.RemoveAt(0);
                }
                chart3.Series["B5"].Points.AddY(0);
                if (chart3.Series[13].Points.Count == Limit)
                {
                    chart3.Series[13].Points.RemoveAt(0);
                }
                chart3.Series["B6"].Points.AddY(0);
                if (chart3.Series[14].Points.Count == Limit)
                {
                    chart3.Series[14].Points.RemoveAt(0);
                }
                chart3.Series["B7"].Points.AddY(0);
                if (chart3.Series[15].Points.Count == Limit)
                {
                    chart3.Series[15].Points.RemoveAt(0);
                }
                chart3.Series["B8"].Points.AddY(0);
                if (chart3.Series[16].Points.Count == Limit)
                {
                    chart3.Series[16].Points.RemoveAt(0);
                }
                chart3.Series["B9"].Points.AddY(0);
                if (chart3.Series[17].Points.Count == Limit)
                {
                    chart3.Series[17].Points.RemoveAt(0);
                }

            }
            chart3.ChartAreas[0].AxisY.Maximum = 3.5;

            for (var i = 0; i <= 30; i += 1)
            {
                chart4.Series["A1"].Points.AddXY(DateTime.Now.ToLongTimeString(), 0);
                if (chart4.Series[0].Points.Count == Limit)
                {
                    chart4.Series[0].Points.RemoveAt(0);
                }
                chart4.ChartAreas[0].AxisY.Maximum = 3.5;
                chart4.ChartAreas[0].AxisY.Interval = 0.1;

                chart4.Series["B1"].Points.AddY(0);
                if (chart4.Series[1].Points.Count == Limit)
                {
                    chart4.Series[1].Points.RemoveAt(0);
                }

            }
            chart4.ChartAreas[0].AxisY.Maximum = 3.5;
        }        

        private void ButtonScanPort_Click(object sender, EventArgs e)
        {
            ComboBoxPort.Items.Clear();
            Array myPort;
            int i;
            myPort = System.IO.Ports.SerialPort.GetPortNames();
            ComboBoxPort.Items.AddRange((object[])myPort);
            i = ComboBoxPort.Items.Count;
            i = i - 1;
            try
            {
                ComboBoxPort.SelectedIndex = i;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Com port not detected", "Warning !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                ComboBoxPort.Text = "";
                ComboBoxPort.Items.Clear();
                ButtonStartRecording.Enabled = false;
                return;
            }
            ComboBoxPort.DroppedDown = true;
        }
        private void ButtonConnect_Click(object sender, EventArgs e)
        {
            SerialPort1.BaudRate = Int32.Parse(ComboBoxBaudRate.SelectedItem.ToString());
            SerialPort1.PortName = (string)ComboBoxPort.SelectedItem;
            SerialPort1.Parity = Parity.None;
            SerialPort1.DataBits = 8;
            SerialPort1.StopBits = StopBits.One;
            SerialPort1.ReadBufferSize = 20000000;
            SerialPort1.NewLine = Environment.NewLine;
            SerialPort1.DtrEnable = true;
            SerialPort1.ReceivedBytesThreshold = 20000000;
            try
            {
                SerialPort1.Open();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error!");
            }
            //ReadEvent();
            //serThread = new Thread(new ThreadStart(ReadEvent));
            //serThread.Priority = ThreadPriority.Normal;
            //serThread.Name = "SerialHandle" + serThread.ManagedThreadId;
            TimerSerial.Start();
            TimerLoadLabels.Start();
            ComboBoxPort.Enabled = false;
            label1.Enabled = false;
            ComboBoxBaudRate.Enabled = false;
            ButtonScanPort.Enabled = false;
            ButtonConnect.Enabled = false;
            ButtonDisconnect.Enabled = true;
            ButtonStartRecording.Enabled = true;
            PictureBoxConnectionInd.Image = global::WindowsFormsTest.Properties.Resources.Green;
            LabelStatus.Text = "Status : Connected";
            
        }
        //private void SerPort_DataReceived(object sender, SerialDataReceivedEventArgs e)
        //{
        //    //ReceivedData = SerialPort1.ReadLine();
        //    this.Invoke(new Action(ProcessingData));
        //}

        //private void ProcessingData()
        //{
        //    try
        //    {

        //        if (RadioButtonA.Checked || RadioButtonB.Checked || RadioButtonAB.Checked)
        //        {

        //            string StrSerialIn = SerialPort1.ReadLine();
        //            string StrSerialInRam;

        //            System.Windows.Forms.RichTextBox TB = new System.Windows.Forms.RichTextBox();
        //            TB.Multiline = true;
        //            TB.Text = StrSerialIn;

        //            StrSerialInRam = TB.Lines[0];
        //            if (StrSerialInRam.Contains("Poti"))
        //            {
        //                textBox2.Text = StrSerialInRam;
        //            }
        //            StrSerialInRam = TB.Lines[0].Substring(0, 8);
        //            if (StrSerialInRam == "Array_A ")
        //            {
        //                Sen_A = TB.Lines[0];
        //                string[] valA = Sen_A.Split(',');
        //                S1A_Val = valA[0].Substring(8);
        //                S2A_Val = valA[1];
        //                S3A_Val = valA[2];
        //                S4A_Val = valA[3];
        //                S5A_Val = valA[4];
        //                S6A_Val = valA[5];
        //                S7A_Val = valA[6];
        //                S8A_Val = valA[7];
        //                S9A_Val = valA[8];
        //            }
        //            Sen_A = "";
        //            StrSerialInRam = TB.Lines[1];
        //            if (StrSerialInRam.Contains("Poti"))
        //            {
        //                textBox2.Text = StrSerialInRam;
        //            }
        //            StrSerialInRam = TB.Lines[1].Substring(0, 8);
        //            if (StrSerialInRam == "Array_B ")
        //            {
        //                Sen_B = TB.Lines[1];
        //                string[] valB = Sen_B.Split(',');
        //                S1B_Val = valB[0].Substring(8);
        //                S2B_Val = valB[1];
        //                S3B_Val = valB[2];
        //                S4B_Val = valB[3];
        //                S5B_Val = valB[4];
        //                S6B_Val = valB[5];
        //                S7B_Val = valB[6];
        //                S8B_Val = valB[7];
        //                S9B_Val = valB[8];
        //            }
        //            Sen_B = "";
        //            StrSerialInRam = TB.Lines[2];
        //            if (StrSerialInRam.Contains("Poti"))
        //            {
        //                textBox2.Text = StrSerialInRam;
        //            }
        //        }
        //        else
        //        {
        //            string StrSerialIn = SerialPort1.ReadExisting();
        //            string StrSerialInRam;

        //            System.Windows.Forms.TextBox TB = new System.Windows.Forms.TextBox();
        //            TB.Multiline = true;
        //            TB.Text = StrSerialIn;

        //            StrSerialInRam = TB.Lines[0].Substring(0, 2);
        //            if (StrSerialInRam == "SA")
        //            {
        //                A_1 = TB.Lines[0];
        //                A_1_Val = A_1.Substring(2);
        //            }
        //            A_1 = "";
        //            StrSerialInRam = TB.Lines[1].Substring(0, 2);
        //            if (StrSerialInRam == "SB")
        //            {
        //                B_1 = TB.Lines[1];
        //                B_1_Val = B_1.Substring(2);
        //            }
        //            B_1 = "";
        //        }

        //        if (PictureBoxConnectionInd.Visible == true)
        //        {
        //            PictureBoxConnectionInd.Visible = false;
        //        }
        //        else if (PictureBoxConnectionInd.Visible == false)
        //        {
        //            PictureBoxConnectionInd.Visible = true;
        //        }

        //    }
        //    catch (Exception ex)
        //    {

        //    }

        //}


        private void groupBox4_Enter(object sender, EventArgs e)
        {

        }

        private void RadioButtonA_CheckedChanged(object sender, EventArgs e)
        {
            RadioButtonA1B1.Enabled = false;
            ButtonConnect.Enabled = true;
            dataGridView2.Visible = false;
            dataGridView3.Visible = false;
            dataGridView4.Visible = false;
            dataGridView1.Visible = true;
            chart1.Visible = true;
            chart2.Visible = false;
            chart3.Visible = false;
            chart4.Visible = false;
            GroupBoxComAB.Visible = false;
            GroupBoxAandB.Visible = true;
            GroupBoxAandB.Text = "Data A";
            LabelSensor1.Text = "A1";
            LabelSensor2.Text = "A2";
            LabelSensor3.Text = "A3";
            LabelSensor4.Text = "A4";
            LabelSensor5.Text = "A4";
            LabelSensor6.Text = "A6";
            LabelSensor7.Text = "A7";
            LabelSensor8.Text = "A8";
            LabelSensor9.Text = "A9";
        }
        private void RadioButtonB_CheckedChanged(object sender, EventArgs e)
        {
            RadioButtonA1B1.Enabled = false;
            ButtonConnect.Enabled = true;
            dataGridView1.Visible = false;
            dataGridView3.Visible = false;
            dataGridView4.Visible = false;
            dataGridView2.Visible = true;
            chart2.Visible = true;
            chart1.Visible = false;
            chart3.Visible = false;
            chart4.Visible = false;
            GroupBoxComAB.Visible = false;
            GroupBoxAandB.Visible = true;
            GroupBoxAandB.Text = "Data B";
            LabelSensor1.Text = "B1";
            LabelSensor2.Text = "B2";
            LabelSensor3.Text = "B3";
            LabelSensor4.Text = "B4";
            LabelSensor5.Text = "B5";
            LabelSensor6.Text = "B6";
            LabelSensor7.Text = "B7";
            LabelSensor8.Text = "B8";
            LabelSensor9.Text = "B9";

        }

        private void RadioButtonAB_CheckedChanged(object sender, EventArgs e)
        {
            RadioButtonA1B1.Enabled = false;
            ButtonConnect.Enabled = true;
            dataGridView1.Visible = false;
            dataGridView2.Visible = false;
            dataGridView4.Visible = false;
            dataGridView3.Visible = true;
            chart3.Visible = true;
            chart2.Visible = false;
            chart1.Visible = false;
            chart4.Visible = false;
            GroupBoxAandB.Visible = false;
            GroupBoxComAB.Visible = true;
            LabelSensor10.Visible = true;
            LabelSensor10.Text = "A1";
            LabelSensor11.Visible = true;
            LabelSensor11.Text = "A2";
            LabelSensor12.Visible = true;
            LabelSensor12.Text = "A3";
            LabelSensor13.Visible = true;
            LabelSensor13.Text = "A4";
            LabelSensor14.Visible = true;
            LabelSensor14.Text = "A5";
            LabelSensor15.Visible = true;
            LabelSensor15.Text = "A6";
            LabelSensor16.Visible = true;
            LabelSensor16.Text = "A7";
            LabelSensor17.Visible = true;
            LabelSensor17.Text = "A8";
            LabelSensor18.Visible = true;
            LabelSensor18.Text = "A9";
            LabelSensor19.Visible = true;
            LabelSensor19.Text = "B1";
            LabelSensor20.Visible = true;
            LabelSensor20.Text = "B2";
            LabelSensor21.Visible = true;
            LabelSensor21.Text = "B3";
            LabelSensor22.Visible = true;
            LabelSensor22.Text = "B4";
            LabelSensor23.Visible = true;
            LabelSensor23.Text = "B5";
            LabelSensor24.Visible = true;
            LabelSensor24.Text = "B6";
            LabelSensor25.Visible = true;
            LabelSensor25.Text = "B7";
            LabelSensor26.Visible = true;
            LabelSensor26.Text = "B8";
            LabelSensor27.Visible = true;
            LabelSensor27.Text = "B9";
        }

        private void RadioButtonA1B1_CheckedChanged(object sender, EventArgs e)
        {
            SendData.Enabled = false;
            ClearDataSend.Enabled = false;
            RadioButtonA.Enabled = false;
            RadioButtonB.Enabled = false;
            RadioButtonAB.Enabled = false;
            ButtonConnect.Enabled = true;
            dataGridView2.Visible = false;
            dataGridView3.Visible = false;
            dataGridView1.Visible = false;
            dataGridView4.Visible = true;
            chart4.Visible = true;
            chart1.Visible = false;
            chart2.Visible = false;
            chart3.Visible = false;
            GroupBoxComAB.Visible = false;
            GroupBoxAandB.Visible = true;
            GroupBoxAandB.Text = "Data A1B1";
            LabelSensor1.Text = "A1";
            LabelSensor2.Text = "B1";
            LabelSensor3.Visible = false;
            LabelSensor4.Visible = false;
            LabelSensor5.Visible = false;
            LabelSensor6.Visible = false;
            LabelSensor7.Visible = false;
            LabelSensor8.Visible = false;
            LabelSensor9.Visible = false;
        }

        private void ButtonDisconnect_Click(object sender, EventArgs e)
        {
            PictureBoxConnectionInd.Image = global::WindowsFormsTest.Properties.Resources.Red;
            PictureBoxConnectionInd.Visible = true;
            LabelStatus.Text = "Status : Disconnect";
            ComboBoxPort.Enabled = true;
            label2.Enabled = true;
            ComboBoxBaudRate.Enabled = true;
            ButtonScanPort.Enabled = true;
            ButtonConnect.Enabled = true;
            ButtonDisconnect.Enabled = false;
            TimerSerial.Stop();
            TimerDataLogRecord.Stop();
            TimerLoadGraph.Stop();
            TimerLoadLabels.Stop();
            ButtonSaveToExcel.Enabled = true;
            ButtonSaveCSV.Enabled = true;
            ButtonStartRecording.Enabled = false;
            ButtonStopRecording.Enabled = false;
            SerialPort1.Close();
            if (RadioButtonA.Checked || RadioButtonB.Checked || RadioButtonAB.Checked)
            {
                RadioButtonA1B1.Enabled = true;
            }
            else
            {
                RadioButtonA.Enabled = true;
                RadioButtonAB.Enabled = true;
                RadioButtonB.Enabled = true;
            }
        }

        private void ButtonStartRecording_Click(object sender, EventArgs e)
        {
            ButtonStartRecording.Enabled = false;
            ButtonStopRecording.Enabled = true;
            ButtonSaveToExcel.Enabled = false;
            ButtonSaveCSV.Enabled = false;
            //DataLog = new Thread(TimerDataLogRecord);
            TimerDataLogRecord.Start();
            TimerLoadGraph.Start();

        }

        private void ButtonStopRecording_Click(object sender, EventArgs e)
        {
            ButtonStartRecording.Enabled = true;
            ButtonStopRecording.Enabled = false;
            ButtonSaveToExcel.Enabled = true;
            ButtonSaveCSV.Enabled = true;
            TimerDataLogRecord.Stop();
            TimerLoadGraph.Stop();
            PictureBoxRecordInd.Visible = true;
        }

        private void ButtonClear_Click(object sender, EventArgs e)
        {
            if (RadioButtonA.Checked)
            {
                for (var i = 0; i <= 30; i += 1)
                {
                    chart1.Series["A1"].Points.AddXY(DateTime.Now.ToLongTimeString(), 0);
                    if (chart1.Series[0].Points.Count == Limit)
                    {
                        chart1.Series[0].Points.RemoveAt(0);
                    }
                    chart1.ChartAreas[0].AxisY.Maximum = 3.5;
                    chart1.ChartAreas[0].AxisY.Interval = 0.1;

                    chart1.Series["A2"].Points.AddY(0);
                    if (chart1.Series[1].Points.Count == Limit)
                    {
                        chart1.Series[1].Points.RemoveAt(0);
                    }

                    chart1.Series["A3"].Points.AddY(0);
                    if (chart1.Series[2].Points.Count == Limit)
                    {
                        chart1.Series[2].Points.RemoveAt(0);
                    }
                    chart1.Series["A4"].Points.AddY(0);
                    if (chart1.Series[3].Points.Count == Limit)
                    {
                        chart1.Series[3].Points.RemoveAt(0);
                    }
                    chart1.Series["A5"].Points.AddY(0);
                    if (chart1.Series[4].Points.Count == Limit)
                    {
                        chart1.Series[4].Points.RemoveAt(0);
                    }
                    chart1.Series["A6"].Points.AddY(0);
                    if (chart1.Series[5].Points.Count == Limit)
                    {
                        chart1.Series[5].Points.RemoveAt(0);
                    }
                    chart1.Series["A7"].Points.AddY(0);
                    if (chart1.Series[6].Points.Count == Limit)
                    {
                        chart1.Series[6].Points.RemoveAt(0);
                    }
                    chart1.Series["A8"].Points.AddY(0);
                    if (chart1.Series[7].Points.Count == Limit)
                    {
                        chart1.Series[7].Points.RemoveAt(0);
                    }
                    chart1.Series["A9"].Points.AddY(0);
                    if (chart1.Series[8].Points.Count == Limit)
                    {
                        chart1.Series[8].Points.RemoveAt(0);
                    }
                }
                dataGridView1.Rows.Clear();

                if (RadioButtonA.Checked && ButtonDisconnect.Enabled == false)
                {
                    LabelSensor1.Text = "A1";
                    LabelSensor2.Text = "A2";
                    LabelSensor3.Text = "A3";
                    LabelSensor4.Text = "A4";
                    LabelSensor5.Text = "A4";
                    LabelSensor6.Text = "A6";
                    LabelSensor7.Text = "A7";
                    LabelSensor8.Text = "A8";
                    LabelSensor9.Text = "A9";
                }

            }

            else if (RadioButtonB.Checked)
            {
                for (var i = 0; i <= 30; i += 1)
                {
                    chart2.Series["B1"].Points.AddXY(DateTime.Now.ToLongTimeString(), 0);
                    if (chart2.Series[0].Points.Count == Limit)
                    {
                        chart2.Series[0].Points.RemoveAt(0);
                    }
                    chart2.ChartAreas[0].AxisY.Maximum = 3.5;
                    chart2.ChartAreas[0].AxisY.Interval = 0.1;

                    chart2.Series["B2"].Points.AddY(0);
                    if (chart2.Series[1].Points.Count == Limit)
                    {
                        chart2.Series[1].Points.RemoveAt(0);
                    }

                    chart2.Series["B3"].Points.AddY(0);
                    if (chart2.Series[2].Points.Count == Limit)
                    {
                        chart2.Series[2].Points.RemoveAt(0);
                    }
                    chart2.Series["B4"].Points.AddY(0);
                    if (chart2.Series[3].Points.Count == Limit)
                    {
                        chart2.Series[3].Points.RemoveAt(0);
                    }
                    chart2.Series["B5"].Points.AddY(0);
                    if (chart2.Series[4].Points.Count == Limit)
                    {
                        chart2.Series[4].Points.RemoveAt(0);
                    }
                    chart2.Series["B6"].Points.AddY(0);
                    if (chart2.Series[5].Points.Count == Limit)
                    {
                        chart2.Series[5].Points.RemoveAt(0);
                    }
                    chart2.Series["B7"].Points.AddY(0);
                    if (chart2.Series[6].Points.Count == Limit)
                    {
                        chart2.Series[6].Points.RemoveAt(0);
                    }
                    chart2.Series["B8"].Points.AddY(0);
                    if (chart2.Series[7].Points.Count == Limit)
                    {
                        chart2.Series[7].Points.RemoveAt(0);
                    }
                    chart2.Series["B9"].Points.AddY(0);
                    if (chart2.Series[8].Points.Count == Limit)
                    {
                        chart2.Series[8].Points.RemoveAt(0);
                    }
                }
                dataGridView2.Rows.Clear();
                if (RadioButtonB.Checked && ButtonDisconnect.Enabled == false)
                {
                    LabelSensor1.Text = "B1";
                    LabelSensor2.Text = "B2";
                    LabelSensor3.Text = "B3";
                    LabelSensor4.Text = "B4";
                    LabelSensor5.Text = "B5";
                    LabelSensor6.Text = "B6";
                    LabelSensor7.Text = "B7";
                    LabelSensor8.Text = "B8";
                    LabelSensor9.Text = "B9";
                }
            }
            else if (RadioButtonAB.Checked)
            {
                for (var i = 0; i <= 30; i += 1)
                {
                    chart3.Series["A1"].Points.AddXY(DateTime.Now.ToLongTimeString(), 0);
                    if (chart3.Series[0].Points.Count == Limit)
                    {
                        chart3.Series[0].Points.RemoveAt(0);
                    }
                    chart3.ChartAreas[0].AxisY.Maximum = 3.5;
                    chart3.ChartAreas[0].AxisY.Interval = 0.1;

                    chart3.Series["A2"].Points.AddY(0);
                    if (chart3.Series[1].Points.Count == Limit)
                    {
                        chart3.Series[1].Points.RemoveAt(0);
                    }

                    chart3.Series["A3"].Points.AddY(0);
                    if (chart3.Series[2].Points.Count == Limit)
                    {
                        chart3.Series[2].Points.RemoveAt(0);
                    }
                    chart3.Series["A4"].Points.AddY(0);
                    if (chart3.Series[3].Points.Count == Limit)
                    {
                        chart3.Series[3].Points.RemoveAt(0);
                    }
                    chart3.Series["A5"].Points.AddY(0);
                    if (chart3.Series[4].Points.Count == Limit)
                    {
                        chart3.Series[4].Points.RemoveAt(0);
                    }
                    chart3.Series["A6"].Points.AddY(0);
                    if (chart3.Series[5].Points.Count == Limit)
                    {
                        chart3.Series[5].Points.RemoveAt(0);
                    }
                    chart3.Series["A7"].Points.AddY(0);
                    if (chart3.Series[6].Points.Count == Limit)
                    {
                        chart3.Series[6].Points.RemoveAt(0);
                    }
                    chart3.Series["A8"].Points.AddY(0);
                    if (chart3.Series[7].Points.Count == Limit)
                    {
                        chart3.Series[7].Points.RemoveAt(0);
                    }
                    chart3.Series["A9"].Points.AddY(0);
                    if (chart3.Series[8].Points.Count == Limit)
                    {
                        chart3.Series[8].Points.RemoveAt(0);
                    }
                    chart3.Series["B1"].Points.AddY(0);
                    if (chart3.Series[9].Points.Count == Limit)
                    {
                        chart3.Series[9].Points.RemoveAt(0);
                    }
                    chart3.Series["B2"].Points.AddY(0);
                    if (chart3.Series[10].Points.Count == Limit)
                    {
                        chart3.Series[10].Points.RemoveAt(0);
                    }

                    chart3.Series["B3"].Points.AddY(0);
                    if (chart3.Series[11].Points.Count == Limit)
                    {
                        chart3.Series[11].Points.RemoveAt(0);
                    }
                    chart3.Series["B4"].Points.AddY(0);
                    if (chart3.Series[12].Points.Count == Limit)
                    {
                        chart3.Series[12].Points.RemoveAt(0);
                    }
                    chart3.Series["B5"].Points.AddY(0);
                    if (chart3.Series[13].Points.Count == Limit)
                    {
                        chart3.Series[13].Points.RemoveAt(0);
                    }
                    chart3.Series["B6"].Points.AddY(0);
                    if (chart3.Series[14].Points.Count == Limit)
                    {
                        chart3.Series[14].Points.RemoveAt(0);
                    }
                    chart3.Series["B7"].Points.AddY(0);
                    if (chart3.Series[15].Points.Count == Limit)
                    {
                        chart3.Series[15].Points.RemoveAt(0);
                    }
                    chart3.Series["B8"].Points.AddY(0);
                    if (chart3.Series[16].Points.Count == Limit)
                    {
                        chart3.Series[16].Points.RemoveAt(0);
                    }
                    chart3.Series["B9"].Points.AddY(0);
                    if (chart3.Series[17].Points.Count == Limit)
                    {
                        chart3.Series[17].Points.RemoveAt(0);
                    }

                }
                dataGridView3.Rows.Clear();
                if (RadioButtonAB.Checked && ButtonDisconnect.Enabled == false)
                {
                    LabelSensor10.Visible = true;
                    LabelSensor10.Text = "A1";
                    LabelSensor11.Visible = true;
                    LabelSensor11.Text = "A2";
                    LabelSensor12.Visible = true;
                    LabelSensor12.Text = "A3";
                    LabelSensor13.Visible = true;
                    LabelSensor13.Text = "A4";
                    LabelSensor14.Visible = true;
                    LabelSensor14.Text = "A5";
                    LabelSensor15.Visible = true;
                    LabelSensor15.Text = "A6";
                    LabelSensor16.Visible = true;
                    LabelSensor16.Text = "A7";
                    LabelSensor17.Visible = true;
                    LabelSensor17.Text = "A8";
                    LabelSensor18.Visible = true;
                    LabelSensor18.Text = "A9";
                    LabelSensor19.Visible = true;
                    LabelSensor19.Text = "B1";
                    LabelSensor20.Visible = true;
                    LabelSensor20.Text = "B2";
                    LabelSensor21.Visible = true;
                    LabelSensor21.Text = "B3";
                    LabelSensor22.Visible = true;
                    LabelSensor22.Text = "B4";
                    LabelSensor23.Visible = true;
                    LabelSensor23.Text = "B5";
                    LabelSensor24.Visible = true;
                    LabelSensor24.Text = "B6";
                    LabelSensor25.Visible = true;
                    LabelSensor25.Text = "B7";
                    LabelSensor26.Visible = true;
                    LabelSensor26.Text = "B8";
                    LabelSensor27.Visible = true;
                    LabelSensor27.Text = "B9";
                }
            }
            else
            {
                for (var i = 0; i <= 30; i += 1)
                {
                    chart4.Series["A1"].Points.AddXY(DateTime.Now.ToLongTimeString(), 0);
                    if (chart4.Series[0].Points.Count == Limit)
                    {
                        chart4.Series[0].Points.RemoveAt(0);
                    }
                    chart4.ChartAreas[0].AxisY.Maximum = 3.5;
                    chart4.ChartAreas[0].AxisY.Interval = 0.1;

                    chart4.Series["B1"].Points.AddY(0);
                    if (chart4.Series[1].Points.Count == Limit)
                    {
                        chart4.Series[1].Points.RemoveAt(0);
                    }
                }
                dataGridView4.Rows.Clear();
                if (RadioButtonA1B1.Checked && ButtonDisconnect.Enabled == false)
                {
                    LabelSensor1.Text = "A1";
                    LabelSensor2.Text = "B1";
                    LabelSensor3.Visible = false;
                    LabelSensor4.Visible = false;
                    LabelSensor5.Visible = false;
                    LabelSensor6.Visible = false;
                    LabelSensor7.Visible = false;
                    LabelSensor8.Visible = false;
                    LabelSensor9.Visible = false;
                }
            }
        }
        private void ButtonSaveToExcel_Click(object sender, EventArgs e)
        {
            ButtonSaveToExcel.Height = 37;
            ButtonSaveToExcel.Text = "Please Wait...";
            ButtonSaveToExcel.Enabled = false;
            ButtonStartRecording.Enabled = false;
            ProgressBarProcess.Visible = true;
            ProgressBarProcess.Value = 1;

            Microsoft.Office.Interop.Excel.Application xlApp;
            Microsoft.Office.Interop.Excel.Workbook xlWorkBook;
            Microsoft.Office.Interop.Excel.Worksheet xlWorkSheet;
            object misValue = System.Reflection.Missing.Value;
            int i;
            int j;
            string path;

            path = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase);

            ProgressBarProcess.Value = 3;

            xlApp = new Microsoft.Office.Interop.Excel.Application();
            xlWorkBook = xlApp.Workbooks.Add(misValue);
            xlWorkSheet = xlWorkBook.Worksheets["sheet1"];

            ProgressBarProcess.Value = 5;

            if (RadioButtonA.Checked)
            {
                if (dataGridView1.Rows.Count > 0)
                {
                    for (i = 0; i <= dataGridView1.Columns.Count - 1; i++)
                    {
                        xlWorkSheet.Cells[1, i + 1] = dataGridView1.Columns[i].HeaderText;
                    }
                    for (i = 0; i <= dataGridView1.RowCount - 1; i++)
                    {
                        for (j = 0; j <= dataGridView1.ColumnCount - 1; j++)
                        {
                            DataGridViewCell cell = dataGridView1[j, i];
                            xlWorkSheet.Cells[i + 2, j + 1] = cell.Value;
                        }
                    }
                    xlWorkSheet.Columns.AutoFit();
                    FilePathAndName = path + @"\" + "Sensor-A" + "-" + DateTime.Now.ToString("HH mm") + "-" + DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + ".xlsx";
                }
                else
                {
                    MessageBox.Show("No Record To Export !!!", "Info");
                }
            }
            else if (RadioButtonB.Checked)
            {
                if (dataGridView2.Rows.Count > 0)
                {
                    for (i = 0; i <= dataGridView2.Columns.Count - 1; i++)
                    {
                        xlWorkSheet.Cells[1, i + 1] = dataGridView2.Columns[i].HeaderText;
                    }
                    for (i = 0; i <= dataGridView2.RowCount - 1; i++)
                    {
                        for (j = 0; j <= dataGridView2.ColumnCount - 1; j++)
                        {
                            DataGridViewCell cell = dataGridView2[j, i];
                            xlWorkSheet.Cells[i + 2, j + 1] = cell.Value;
                        }
                    }
                    xlWorkSheet.Columns.AutoFit();
                    FilePathAndName = path + @"\" + "Sensor-B" + "-" + DateTime.Now.ToString("HH mm") + "-" + DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + ".xlsx";
                }
                else
                {
                    MessageBox.Show("No Record To Export !!!", "Info");
                }

            }

            else if (RadioButtonAB.Checked)
            {
                if (dataGridView3.Rows.Count > 0)
                {
                    for (i = 0; i <= dataGridView3.Columns.Count - 1; i++)
                    {
                        xlWorkSheet.Cells[1, i + 1] = dataGridView3.Columns[i].HeaderText;
                    }
                    for (i = 0; i <= dataGridView3.RowCount - 1; i++)
                    {
                        for (j = 0; j <= dataGridView3.ColumnCount - 1; j++)
                        {
                            DataGridViewCell cell = dataGridView3[j, i];
                            xlWorkSheet.Cells[i + 2, j + 1] = cell.Value;
                        }
                    }
                    xlWorkSheet.Columns.AutoFit();
                    FilePathAndName = path + @"\" + "Sensor-AB" + "-" + DateTime.Now.ToString("HH mm") + "-" + DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + ".xlsx";
                }
                else
                {
                    MessageBox.Show("No Record To Export !!!", "Info");
                }
            }

            else
            {
                if (dataGridView4.Rows.Count > 0)
                {
                    for (i = 0; i <= dataGridView4.Columns.Count - 1; i++)
                    {
                        xlWorkSheet.Cells[1, i + 1] = dataGridView4.Columns[i].HeaderText;
                    }
                    for (i = 0; i <= dataGridView4.RowCount - 1; i++)
                    {
                        for (j = 0; j <= dataGridView4.ColumnCount - 1; j++)
                        {
                            DataGridViewCell cell = dataGridView4[j, i];
                            xlWorkSheet.Cells[i + 2, j + 1] = cell.Value;
                        }
                    }
                    xlWorkSheet.Columns.AutoFit();
                    FilePathAndName = path + @"\" + "Sensor-A1B1" + "-" + DateTime.Now.ToString("HH mm") + "-" + DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + ".xlsx";
                }
                else
                {
                    MessageBox.Show("No Record To Export !!!", "Info");
                }
            }

            ProgressBarProcess.Value = 8;

            if (File.Exists(FilePathAndName))
            {
                File.Delete(FilePathAndName);
            }

            xlWorkSheet.SaveAs(FilePathAndName);
            xlWorkBook.Close();
            xlApp.Quit();

            releaseObject(xlApp);
            releaseObject(xlWorkBook);
            releaseObject(xlWorkSheet);

            ProgressBarProcess.Value = 10;

            MessageBox.Show("Successfully saved" + "\r\n" + "File are saved at : " + FilePathAndName, "Info");

            ProgressBarProcess.Visible = false;

            Process.Start(FilePathAndName);

            ButtonSaveToExcel.Height = 67;
            ButtonSaveToExcel.Text = "Save To MS Excel";
            ButtonSaveToExcel.Enabled = true;
            ButtonStartRecording.Enabled = true;
        }

        private void ButtonSaveCSV_Click(object sender, EventArgs e)
        {
            ButtonSaveCSV.Height = 37;
            ButtonSaveCSV.Text = "Please Wait...";
            ButtonSaveCSV.Enabled = false;
            ButtonStartRecording.Enabled = false;
            ProgressBarProcess.Visible = true;
            ProgressBarProcess.Value = 1;

            if (RadioButtonA.Checked)
            {
                if (dataGridView1.Rows.Count > 0)
                {
                    SaveFileDialog sfd_A = new SaveFileDialog();
                    sfd_A.Filter = "CSV file (*.csv)|*.csv| All Files (*.*)|*.*";
                    sfd_A.FileName = "Sensor-A" + "-" + DateTime.Now.ToString("HH mm") + "-" + DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + ".csv";
                    bool fileError = false;
                    if (sfd_A.ShowDialog() == DialogResult.OK)
                    {
                        if (File.Exists(sfd_A.FileName))
                        {
                            try
                            {
                                File.Delete(sfd_A.FileName);
                            }
                            catch (IOException ex)
                            {
                                fileError = true;
                                MessageBox.Show("Error in Writing Data." + ex.Message);
                            }
                        }
                        if (!fileError)
                        {
                            try
                            {
                                int columnCount = dataGridView1.Columns.Count;
                                string columnNames = "";
                                string[] outputCsv = new string[dataGridView1.Rows.Count + 1];
                                for (int i = 0; i < columnCount; i++)
                                {
                                    columnNames += dataGridView1.Columns[i].HeaderText.ToString() + ",";
                                }
                                outputCsv[0] += columnNames.Substring(0,columnNames.Length - 1);
                                ProgressBarProcess.Value = 5;
                                for (int i = 1; i < dataGridView1.Rows.Count; i++)
                                {
                                    for (int j = 0; j < columnCount; j++)
                                    {
                                        outputCsv[i] += dataGridView1.Rows[i - 1].Cells[j].Value.ToString() + ",";
                                    }
                                    outputCsv[i] = outputCsv[i].Substring(0, outputCsv[i].Length - 1);
                                }
                                
                                File.WriteAllLines(sfd_A.FileName, outputCsv, Encoding.UTF8);
                                ProgressBarProcess.Value = 10;
                                MessageBox.Show("Successfully saved" + "\r\n" + "File are saved at : " + sfd_A.FileName, "Info");
                            }
                            catch (Exception ex)
                            {
                                
                            }
                        }
                    }
                    Process.Start(sfd_A.FileName); 
                }
                else
                {
                    MessageBox.Show("No Record To Export !!!", "Info");
                }
                
            }
            else if (RadioButtonB.Checked)
            {
                if (dataGridView2.Rows.Count > 0)
                {
                    SaveFileDialog sfd_B = new SaveFileDialog();
                    sfd_B.Filter = "CSV file (*.csv)|*.csv| All Files (*.*)|*.*";
                    sfd_B.FileName = "Sensor-B" + "-" + DateTime.Now.ToString("HH mm") + "-" + DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + ".csv";
                    bool fileError = false;
                    if (sfd_B.ShowDialog() == DialogResult.OK)
                    {
                        if (File.Exists(sfd_B.FileName))
                        {
                            try
                            {
                                File.Delete(sfd_B.FileName);
                            }
                            catch (IOException ex)
                            {
                                fileError = true;
                                MessageBox.Show("Error in Writing Data." + ex.Message);
                            }
                        }
                        if (!fileError)
                        {
                            try
                            {
                                int columnCount = dataGridView2.Columns.Count;
                                string columnNames = "";
                                string[] outputCsv = new string[dataGridView2.Rows.Count + 1];
                                for (int i = 0; i < columnCount; i++)
                                {
                                    columnNames += dataGridView2.Columns[i].HeaderText.ToString() + ",";
                                }
                                outputCsv[0] += columnNames.Substring(0, columnNames.Length - 1);
                                ProgressBarProcess.Value = 5;
                                for (int i = 1; i < dataGridView2.Rows.Count; i++)
                                {
                                    for (int j = 0; j < columnCount; j++)
                                    {
                                        outputCsv[i] += dataGridView2.Rows[i - 1].Cells[j].Value.ToString() + ",";
                                    }
                                    outputCsv[i] = outputCsv[i].Substring(0, outputCsv[i].Length - 1);
                                }
                                
                                File.WriteAllLines(sfd_B.FileName, outputCsv, Encoding.UTF8);
                                ProgressBarProcess.Value = 10;
                                MessageBox.Show("Successfully saved" + "\r\n" + "File are saved at : " + sfd_B.FileName, "Info");
                            }
                            catch (Exception ex)
                            {
                                
                            }
                        }
                    }                   
                    Process.Start(sfd_B.FileName);
                }
                else
                {
                    MessageBox.Show("No Record To Export !!!", "Info");
                }

            }
            else if (RadioButtonAB.Checked)
            {
                if (dataGridView3.Rows.Count > 0)
                {
                    SaveFileDialog sfd_AB = new SaveFileDialog();
                    sfd_AB.Filter = "CSV file (*.csv)|*.csv| All Files (*.*)|*.*";
                    sfd_AB.FileName = "Sensor-AB" + "-" + DateTime.Now.ToString("HH mm") + "-" + DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + ".csv";
                    bool fileError = false;
                    if (sfd_AB.ShowDialog() == DialogResult.OK)
                    {
                        if (File.Exists(sfd_AB.FileName))
                        {
                            try
                            {
                                File.Delete(sfd_AB.FileName);
                            }
                            catch (IOException ex)
                            {
                                fileError = true;
                                MessageBox.Show("Error in Writing Data." + ex.Message);
                            }
                        }
                        if (!fileError)
                        {
                            try
                            {
                                int columnCount = dataGridView3.Columns.Count;
                                string columnNames = "";
                                string[] outputCsv = new string[dataGridView3.Rows.Count + 1];
                                for (int i = 0; i < columnCount; i++)
                                {
                                    columnNames += dataGridView3.Columns[i].HeaderText.ToString() + ",";
                                }
                                outputCsv[0] += columnNames.Substring(0, columnNames.Length - 1);
                                ProgressBarProcess.Value = 5;
                                for (int i = 1; i < dataGridView3.Rows.Count; i++)
                                {
                                    for (int j = 0; j < columnCount; j++)
                                    {
                                        outputCsv[i] += dataGridView3.Rows[i - 1].Cells[j].Value.ToString() + ",";
                                    }
                                    outputCsv[i] = outputCsv[i].Substring(0, outputCsv[i].Length - 1);
                                }
                                
                                File.WriteAllLines(sfd_AB.FileName, outputCsv, Encoding.UTF8);
                                ProgressBarProcess.Value = 10;
                                MessageBox.Show("Successfully saved" + "\r\n" + "File are saved at : " + sfd_AB.FileName, "Info");
                            }
                            catch (Exception ex)
                            {
                               
                            }
                        }
                    }                    
                    Process.Start(sfd_AB.FileName);                   
                }
                else
                {
                    MessageBox.Show("No Record To Export !!!", "Info");
                }

            }
            else 
            {
                if (dataGridView4.Rows.Count > 0)
                {
                    SaveFileDialog sfd_A1B1 = new SaveFileDialog();
                    sfd_A1B1.Filter = "CSV file (*.csv)|*.csv| All Files (*.*)|*.*";
                    sfd_A1B1.FileName = "Sensor-A1B1" + "-" + DateTime.Now.ToString("HH mm") + "-" + DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + ".csv";
                    bool fileError = false;
                    if (sfd_A1B1.ShowDialog() == DialogResult.OK)
                    {
                        if (File.Exists(sfd_A1B1.FileName))
                        {
                            try
                            {
                                File.Delete(sfd_A1B1.FileName);
                            }
                            catch (IOException ex)
                            {
                                fileError = true;
                                MessageBox.Show("Error in Writing Data." + ex.Message);
                            }
                        }
                        if (!fileError)
                        {
                            try
                            {
                                int columnCount = dataGridView4.Columns.Count;
                                string columnNames = "";
                                string[] outputCsv = new string[dataGridView4.Rows.Count + 1];
                                for (int i = 0; i < columnCount; i++)
                                {
                                    columnNames += dataGridView4.Columns[i].HeaderText.ToString() + ",";
                                }
                                outputCsv[0] += columnNames.Substring(0, columnNames.Length - 1);
                                ProgressBarProcess.Value = 5;
                                for (int i = 1; i < dataGridView4.Rows.Count; i++)
                                {
                                    for (int j = 0; j < columnCount; j++)
                                    {
                                        outputCsv[i] += dataGridView4.Rows[i - 1].Cells[j].Value.ToString() + ",";
                                    }
                                    outputCsv[i] = outputCsv[i].Substring(0, outputCsv[i].Length - 1);
                                }
                                
                                File.WriteAllLines(sfd_A1B1.FileName, outputCsv, Encoding.UTF8);
                                ProgressBarProcess.Value = 10;
                                MessageBox.Show("Successfully saved" + "\r\n" + "File are saved at : " + sfd_A1B1.FileName, "Info");
                            }
                            catch (Exception ex)
                            {
                                
                            }
                        }
                    }
                    Process.Start(sfd_A1B1.FileName);
                }
                else
                {
                    MessageBox.Show("No Record To Export !!!", "Info");
                }

            }
            ProgressBarProcess.Visible = false;
            ButtonSaveCSV.Height = 67;
            ButtonSaveCSV.Text = "Save To CSV";
            ButtonSaveCSV.Enabled = true;
            ButtonStartRecording.Enabled = true;
        }

        private void SendData_Click(object sender, EventArgs e)
        {
            if (SerialPort1.IsOpen)
            {
                dataSend = textBox1.Text;
                SerialPort1.Write(dataSend);
            }
        }

        private void ClearDataSend_Click(object sender, EventArgs e)
        {
            textBox2.Clear();
            textBox1.Clear();
        }

        private void releaseObject(object obj)
        {
            try
            {
                System.Runtime.InteropServices.Marshal.ReleaseComObject(obj);
                obj = null;
            }
            catch (Exception ex)
            {
                obj = null;
            }
            finally
            {
                GC.Collect();
            }
        }

        private void TimerDataLogRecord_Tick(object sender, EventArgs e)
        {  
            DateTime DT = DateTime.Now;
            if (RadioButtonA.Checked)
            {
                typeof(DataGridView).InvokeMember("DoubleBuffered", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.SetProperty, null, dataGridView1, new object[] { true });
                dataGridView1.Rows.Add(new string[] { dataGridView1.RowCount.ToString(), S1A_Val, S2A_Val, S3A_Val, S4A_Val, S5A_Val, S6A_Val, S7A_Val, S8A_Val, S9A_Val, DT.ToString("hh.mm.ss.ffffff"), DT.ToString("dd-MM-yyyy") });
                this.dataGridView1.FirstDisplayedScrollingRowIndex = this.dataGridView1.RowCount - 1;
            }

            else if (RadioButtonB.Checked)
            {
                typeof(DataGridView).InvokeMember("DoubleBuffered", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.SetProperty, null, dataGridView2, new object[] { true });
                dataGridView2.Rows.Add(new string[] { dataGridView2.RowCount.ToString(), S1B_Val, S2B_Val, S3B_Val, S4B_Val, S5B_Val, S6B_Val, S7B_Val, S8B_Val, S9B_Val, DT.ToString("hh.mm.ss.ffffff"), DT.ToString("dd-MM-yyyy") });
                this.dataGridView2.FirstDisplayedScrollingRowIndex = this.dataGridView2.RowCount - 1;
            }

            else if (RadioButtonAB.Checked)
            {
                typeof(DataGridView).InvokeMember("DoubleBuffered", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.SetProperty, null, dataGridView3, new object[] { true });
                dataGridView3.Rows.Add(new string[] { dataGridView3.RowCount.ToString(), S1A_Val, S2A_Val, S3A_Val, S4A_Val, S5A_Val, S6A_Val, S7A_Val, S8A_Val, S9A_Val, S1B_Val, S2B_Val, S3B_Val, S4B_Val, S5B_Val, S6B_Val, S7B_Val, S8B_Val, S9B_Val, DT.ToString("hh.mm.ss.ffffff") });
                this.dataGridView3.FirstDisplayedScrollingRowIndex = this.dataGridView3.RowCount - 1;
            }

            else
            {
                typeof(DataGridView).InvokeMember("DoubleBuffered", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.SetProperty, null, dataGridView4, new object[] { true });
                dataGridView4.Rows.Add(new string[] { dataGridView4.RowCount.ToString(), A_1_Val, B_1_Val, DT.ToString("hh.mm.ss.ffffff"), DT.ToString("dd-MM-yyyy") });
                this.dataGridView4.FirstDisplayedScrollingRowIndex = this.dataGridView4.RowCount - 1;
            }


            if (PictureBoxRecordInd.Visible == true)
            {
                PictureBoxRecordInd.Visible = false;
            }
            else if (PictureBoxRecordInd.Visible == false)
            {
                PictureBoxRecordInd.Visible = true;
            }
        }

        private void TimerLoadGraph_Tick(object sender, EventArgs e)
        {
            DateTime DT = DateTime.Now;
            if (RadioButtonA.Checked)
            {
                chart1.Series["A1"].Points.AddXY(DateTime.Now.ToString("hh.mm.ss.fff"), S1A_Val);
                if (chart1.Series[0].Points.Count == Limit)
                {
                    chart1.Series[0].Points.RemoveAt(0);
                }

                chart1.Series["A2"].Points.AddY(S2A_Val);
                if (chart1.Series[1].Points.Count == Limit)
                {
                    chart1.Series[1].Points.RemoveAt(0);
                }

                chart1.Series["A3"].Points.AddY(S3A_Val);
                if (chart1.Series[2].Points.Count == Limit)
                {
                    chart1.Series[2].Points.RemoveAt(0);
                }
                chart1.Series["A4"].Points.AddY(S4A_Val);
                if (chart1.Series[3].Points.Count == Limit)
                {
                    chart1.Series[3].Points.RemoveAt(0);
                }
                chart1.Series["A5"].Points.AddY(S5A_Val);
                if (chart1.Series[4].Points.Count == Limit)
                {
                    chart1.Series[4].Points.RemoveAt(0);
                }
                chart1.Series["A6"].Points.AddY(S6A_Val);
                if (chart1.Series[5].Points.Count == Limit)
                {
                    chart1.Series[5].Points.RemoveAt(0);
                }
                chart1.Series["A7"].Points.AddY(S7A_Val);
                if (chart1.Series[6].Points.Count == Limit)
                {
                    chart1.Series[6].Points.RemoveAt(0);
                }
                chart1.Series["A8"].Points.AddY(S8A_Val);
                if (chart1.Series[7].Points.Count == Limit)
                {
                    chart1.Series[7].Points.RemoveAt(0);
                }
                chart1.Series["A9"].Points.AddY(S9A_Val);
                if (chart1.Series[8].Points.Count == Limit)
                {
                    chart1.Series[8].Points.RemoveAt(0);
                }
            }

            else if (RadioButtonB.Checked)
            {
                chart2.Series["B1"].Points.AddXY(DateTime.Now.ToString("hh.mm.ss.fff"), S1B_Val);
                if (chart2.Series[0].Points.Count == Limit)
                {
                    chart2.Series[0].Points.RemoveAt(0);
                }

                chart2.Series["B2"].Points.AddY(S2B_Val);
                if (chart2.Series[1].Points.Count == Limit)
                {
                    chart2.Series[1].Points.RemoveAt(0);
                }

                chart2.Series["B3"].Points.AddY(S3B_Val);
                if (chart2.Series[2].Points.Count == Limit)
                {
                    chart2.Series[2].Points.RemoveAt(0);
                }
                chart2.Series["B4"].Points.AddY(S4B_Val);
                if (chart2.Series[3].Points.Count == Limit)
                {
                    chart2.Series[3].Points.RemoveAt(0);
                }
                chart2.Series["B5"].Points.AddY(S5B_Val);
                if (chart2.Series[4].Points.Count == Limit)
                {
                    chart2.Series[4].Points.RemoveAt(0);
                }
                chart2.Series["B6"].Points.AddY(S6B_Val);
                if (chart2.Series[5].Points.Count == Limit)
                {
                    chart2.Series[5].Points.RemoveAt(0);
                }
                chart2.Series["B7"].Points.AddY(S7B_Val);
                if (chart2.Series[6].Points.Count == Limit)
                {
                    chart2.Series[6].Points.RemoveAt(0);
                }
                chart2.Series["B8"].Points.AddY(S8B_Val);
                if (chart2.Series[7].Points.Count == Limit)
                {
                    chart2.Series[7].Points.RemoveAt(0);
                }
                chart2.Series["B9"].Points.AddY(S9B_Val);
                if (chart2.Series[8].Points.Count == Limit)
                {
                    chart2.Series[8].Points.RemoveAt(0);
                }
            }

            else if (RadioButtonAB.Checked)
            {
                chart3.Series["A1"].Points.AddXY(DateTime.Now.ToString("hh.mm.ss.fff"), S1A_Val);
                if (chart3.Series[0].Points.Count == Limit)
                {
                    chart3.Series[0].Points.RemoveAt(0);
                }

                chart3.Series["A2"].Points.AddY(S2A_Val);
                if (chart3.Series[1].Points.Count == Limit)
                {
                    chart3.Series[1].Points.RemoveAt(0);
                }

                chart3.Series["A3"].Points.AddY(S3A_Val);
                if (chart3.Series[2].Points.Count == Limit)
                {
                    chart3.Series[2].Points.RemoveAt(0);
                }
                chart3.Series["A4"].Points.AddY(S4A_Val);
                if (chart3.Series[3].Points.Count == Limit)
                {
                    chart3.Series[3].Points.RemoveAt(0);
                }
                chart3.Series["A5"].Points.AddY(S5A_Val);
                if (chart3.Series[4].Points.Count == Limit)
                {
                    chart3.Series[4].Points.RemoveAt(0);
                }
                chart3.Series["A6"].Points.AddY(S6A_Val);
                if (chart3.Series[5].Points.Count == Limit)
                {
                    chart3.Series[5].Points.RemoveAt(0);
                }
                chart3.Series["A7"].Points.AddY(S7A_Val);
                if (chart3.Series[6].Points.Count == Limit)
                {
                    chart3.Series[6].Points.RemoveAt(0);
                }
                chart3.Series["A8"].Points.AddY(S8A_Val);
                if (chart3.Series[7].Points.Count == Limit)
                {
                    chart3.Series[7].Points.RemoveAt(0);
                }
                chart3.Series["A9"].Points.AddY(S9A_Val);
                if (chart3.Series[8].Points.Count == Limit)
                {
                    chart3.Series[8].Points.RemoveAt(0);
                }
                chart3.Series["B1"].Points.AddY(S1B_Val);
                if (chart3.Series[9].Points.Count == Limit)
                {
                    chart3.Series[9].Points.RemoveAt(0);
                }
                chart3.Series["B2"].Points.AddY(S2B_Val);
                if (chart3.Series[10].Points.Count == Limit)
                {
                    chart3.Series[10].Points.RemoveAt(0);
                }

                chart3.Series["B3"].Points.AddY(S3B_Val);
                if (chart3.Series[11].Points.Count == Limit)
                {
                    chart3.Series[11].Points.RemoveAt(0);
                }
                chart3.Series["B4"].Points.AddY(S4B_Val);
                if (chart3.Series[12].Points.Count == Limit)
                {
                    chart3.Series[12].Points.RemoveAt(0);
                }
                chart3.Series["B5"].Points.AddY(S5B_Val);
                if (chart3.Series[13].Points.Count == Limit)
                {
                    chart3.Series[13].Points.RemoveAt(0);
                }
                chart3.Series["B6"].Points.AddY(S6B_Val);
                if (chart3.Series[14].Points.Count == Limit)
                {
                    chart3.Series[14].Points.RemoveAt(0);
                }
                chart3.Series["B7"].Points.AddY(S7B_Val);
                if (chart3.Series[15].Points.Count == Limit)
                {
                    chart3.Series[15].Points.RemoveAt(0);
                }
                chart3.Series["B8"].Points.AddY(S8B_Val);
                if (chart3.Series[16].Points.Count == Limit)
                {
                    chart3.Series[16].Points.RemoveAt(0);
                }
                chart3.Series["B9"].Points.AddY(S9B_Val);
                if (chart3.Series[17].Points.Count == Limit)
                {
                    chart3.Series[17].Points.RemoveAt(0);
                }

            }
            else
            {
                chart4.Series["A1"].Points.AddXY(DateTime.Now.ToString("hh.mm.ss.fff"), A_1_Val);
                if (chart4.Series[0].Points.Count == Limit)
                {
                    chart4.Series[0].Points.RemoveAt(0);
                }
                chart4.Series["B1"].Points.AddY(B_1_Val);
                if (chart4.Series[1].Points.Count == Limit)
                {
                    chart4.Series[1].Points.RemoveAt(0);
                }
            }

        }
        private void TimerSerial_Tick(object sender, EventArgs e)
        {
            try {

                if (RadioButtonA.Checked || RadioButtonB.Checked || RadioButtonAB.Checked)
                {
                    
                    string StrSerialIn = SerialPort1.ReadExisting();
                    string StrSerialInRam;

                    System.Windows.Forms.RichTextBox TB = new System.Windows.Forms.RichTextBox();
                    TB.Multiline = true;
                    TB.Text = StrSerialIn;

                    StrSerialInRam = TB.Lines[0];
                    if (StrSerialInRam.Contains("Poti"))
                    {
                        textBox2.Text = StrSerialInRam;
                    }
                    StrSerialInRam = TB.Lines[0].Substring(0, 8);
                    if (StrSerialInRam == "Array_A ")
                    {
                        Sen_A = TB.Lines[0];
                        string[] valA = Sen_A.Split(',');
                        S1A_Val = valA[0].Substring(8);
                        S2A_Val = valA[1];
                        S3A_Val = valA[2];
                        S4A_Val = valA[3];
                        S5A_Val = valA[4];
                        S6A_Val = valA[5];
                        S7A_Val = valA[6];
                        S8A_Val = valA[7];
                        S9A_Val = valA[8];
                    }
                    Sen_A = "";
                    StrSerialInRam = TB.Lines[1];
                    if (StrSerialInRam.Contains("Poti"))
                    {
                        textBox2.Text = StrSerialInRam;
                    }
                    StrSerialInRam = TB.Lines[1].Substring(0, 8);
                    if (StrSerialInRam == "Array_B ")
                    {
                        Sen_B = TB.Lines[1];
                        string[] valB = Sen_B.Split(',');
                        S1B_Val = valB[0].Substring(8);
                        S2B_Val = valB[1];
                        S3B_Val = valB[2];
                        S4B_Val = valB[3];
                        S5B_Val = valB[4];
                        S6B_Val = valB[5];
                        S7B_Val = valB[6];
                        S8B_Val = valB[7];
                        S9B_Val = valB[8];                        
                    }
                    Sen_B = "";
                    StrSerialInRam = TB.Lines[2];
                    if (StrSerialInRam.Contains("Poti"))
                    {
                        textBox2.Text = StrSerialInRam;
                    }
                }
                else
                {  
                    string StrSerialIn = SerialPort1.ReadExisting();
                    string StrSerialInRam;

                    System.Windows.Forms.TextBox TB = new System.Windows.Forms.TextBox();
                    TB.Multiline = true;
                    TB.Text = StrSerialIn;

                    StrSerialInRam = TB.Lines[0].Substring(0, 2);
                    if (StrSerialInRam == "SA")
                    {
                        A_1 = TB.Lines[0];
                        A_1_Val = A_1.Substring(2);                       
                    }
                    A_1 = "";
                    StrSerialInRam = TB.Lines[1].Substring(0, 2);
                    if (StrSerialInRam == "SB")
                    {
                        B_1 = TB.Lines[1];
                        B_1_Val = B_1.Substring(2);
                    }
                    B_1 = "";
                }        
            }
            catch (Exception ex)
            {
                
            }
        }
        private void TimerLoadLabels_Tick(object sender, EventArgs e)
        {
            if (RadioButtonA.Checked)
            {
                LabelSensor1.Text = "A1 = " + S1A_Val;
                LabelSensor2.Text = "A2 = " + S2A_Val;
                LabelSensor3.Text = "A3 = " + S3A_Val;
                LabelSensor4.Text = "A4 = " + S4A_Val;
                LabelSensor5.Text = "A4 = " + S5A_Val;
                LabelSensor6.Text = "A6 = " + S6A_Val;
                LabelSensor7.Text = "A7 = " + S7A_Val;
                LabelSensor8.Text = "A8 = " + S8A_Val;
                LabelSensor9.Text = "A9 = " + S9A_Val;

            }
            else if (RadioButtonB.Checked)
            {
                LabelSensor1.Text = "B1 = " + S1B_Val;
                LabelSensor2.Text = "B2 = " + S2B_Val;
                LabelSensor3.Text = "B3 = " + S3B_Val;
                LabelSensor4.Text = "B4 = " + S4B_Val;
                LabelSensor5.Text = "B5 = " + S5B_Val;
                LabelSensor6.Text = "B6 = " + S6B_Val;
                LabelSensor7.Text = "B7 = " + S7B_Val;
                LabelSensor8.Text = "B8 = " + S8B_Val;
                LabelSensor9.Text = "B9 = " + S9B_Val;
            }
            else if (RadioButtonAB.Checked)
            {
                LabelSensor10.Text = "A1 = " + S1A_Val;
                LabelSensor11.Text = "A2 = " + S2A_Val;
                LabelSensor12.Text = "A3 = " + S3A_Val;
                LabelSensor13.Text = "A4 = " + S4A_Val;
                LabelSensor14.Text = "A4 = " + S5A_Val;
                LabelSensor15.Text = "A6 = " + S6A_Val;
                LabelSensor16.Text = "A7 = " + S7A_Val;
                LabelSensor17.Text = "A8 = " + S8A_Val;
                LabelSensor18.Text = "A9 = " + S9A_Val;
                LabelSensor19.Text = "B1 = " + S1B_Val;
                LabelSensor20.Text = "B2 = " + S2B_Val;
                LabelSensor21.Text = "B3 = " + S3B_Val;
                LabelSensor22.Text = "B4 = " + S4B_Val;
                LabelSensor23.Text = "B5 = " + S5B_Val;
                LabelSensor24.Text = "B6 = " + S6B_Val;
                LabelSensor25.Text = "B7 = " + S7B_Val;
                LabelSensor26.Text = "B8 = " + S8B_Val;
                LabelSensor27.Text = "B9 = " + S9B_Val;
            }
            else
            {
                LabelSensor1.Text = "A1 = " + A_1_Val;
                LabelSensor2.Text = "B1 = " + B_1_Val;
            }
            if (PictureBoxConnectionInd.Visible == true)
            {
                PictureBoxConnectionInd.Visible = false;
            }
            else if (PictureBoxConnectionInd.Visible == false)
            {
                PictureBoxConnectionInd.Visible = true;
            }
        }



        //private void ReadEvent()
        //{
        //    byte[] buffer = new byte[2000];
        //    Action kickoffRead = null;

        //    kickoffRead = (Action)(() => SerialPort1.BaseStream.BeginRead(buffer, 0, buffer.Length, delegate (IAsyncResult ar)
        //    {
        //        try
        //        {
        //            int count = SerialPort1.BaseStream.EndRead(ar);
        //            byte[] dst = new byte[count];
        //            Buffer.BlockCopy(buffer, 0, dst, 0, count);
        //            RaiseAppSerialDataEvent(dst);
        //        }
        //        catch (Exception ex)
        //        {
                    
        //        }
        //        kickoffRead();
        //    }, null)); kickoffRead();
        //}

        //private void RaiseAppSerialDataEvent(byte[] Data)
        //{
        //    //string Result = Encoding.Default.GetString(Data);
        //    try
        //    {
        //        if (RadioButtonA.Checked || RadioButtonB.Checked || RadioButtonAB.Checked)
        //        {
        //            string StrSerialIn = Encoding.Default.GetString(Data);
        //            string StrSerialInRam;
        //            System.Windows.Forms.RichTextBox TB = new System.Windows.Forms.RichTextBox();
        //            TB.Multiline = true;
        //            TB.Text = StrSerialIn;

        //            StrSerialInRam = TB.Lines[0];
        //            if (StrSerialInRam.Contains("Poti"))
        //            {
        //                textBox2.Text = StrSerialInRam;
        //            }
        //            StrSerialInRam = TB.Lines[0].Substring(0, 8);
        //            if (StrSerialInRam == "Array_A ")
        //            {
        //                Sen_A = TB.Lines[0];
        //                string[] valA = Sen_A.Split(',');
        //                S1A_Val = valA[0].Substring(8);
        //                S2A_Val = valA[1];
        //                S3A_Val = valA[2];
        //                S4A_Val = valA[3];
        //                S5A_Val = valA[4];
        //                S6A_Val = valA[5];
        //                S7A_Val = valA[6];
        //                S8A_Val = valA[7];
        //                S9A_Val = valA[8];
        //            }
        //            Sen_A = "";
        //            StrSerialInRam = TB.Lines[1];
        //            if (StrSerialInRam.Contains("Poti"))
        //            {
        //                textBox2.Text = StrSerialInRam;
        //            }
        //            StrSerialInRam = TB.Lines[1].Substring(0, 8);
        //            if (StrSerialInRam == "Array_B ")
        //            {
        //                Sen_B = TB.Lines[1];
        //                string[] valB = Sen_B.Split(',');
        //                S1B_Val = valB[0].Substring(8);
        //                S2B_Val = valB[1];
        //                S3B_Val = valB[2];
        //                S4B_Val = valB[3];
        //                S5B_Val = valB[4];
        //                S6B_Val = valB[5];
        //                S7B_Val = valB[6];
        //                S8B_Val = valB[7];
        //                S9B_Val = valB[8];
        //            }
        //            Sen_B = "";
        //            StrSerialInRam = TB.Lines[2];
        //            if (StrSerialInRam.Contains("Poti"))
        //            {
        //                textBox2.Text = StrSerialInRam;
        //            }
        //        }
        //        else
        //        {
        //            string StrSerialIn = SerialPort1.ReadExisting();
        //            string StrSerialInRam;

        //            System.Windows.Forms.TextBox TB = new System.Windows.Forms.TextBox();
        //            TB.Multiline = true;
        //            TB.Text = StrSerialIn;

        //            StrSerialInRam = TB.Lines[0].Substring(0, 2);
        //            if (StrSerialInRam == "SA")
        //            {
        //                A_1 = TB.Lines[0];
        //                A_1_Val = A_1.Substring(2);
        //            }
        //            A_1 = "";
        //            StrSerialInRam = TB.Lines[1].Substring(0, 2);
        //            if (StrSerialInRam == "SB")
        //            {
        //                B_1 = TB.Lines[1];
        //                B_1_Val = B_1.Substring(2);
        //            }
        //            B_1 = "";
        //        }

        //        if (PictureBoxConnectionInd.Visible == true)
        //        {
        //            PictureBoxConnectionInd.Visible = false;
        //        }
        //        else if (PictureBoxConnectionInd.Visible == false)
        //        {
        //            PictureBoxConnectionInd.Visible = true;
        //        }

        //    }
        //    catch (Exception ex)
        //    {

        //    }

        //}

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            this.Hide();
            this.Parent = null;
            e.Cancel = true;
        }


    }
}
