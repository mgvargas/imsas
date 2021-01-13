using System;
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
using Excel = Microsoft.Office.Interop.Excel;
using ExcelAutoFormat = Microsoft.Office.Interop.Excel.XlRangeAutoFormat;
using Microsoft.Office.Interop;


namespace ConsoleAppGUI
{
    public partial class Form1 : Form
    {
        private int Limit = 10;
        private string FilePathAndName;
        private string A1_Val, A2_Val, A3_Val, A4_Val, A5_Val, A6_Val, A7_Val, A8_Val, A9_Val, B1_Val, B2_Val, B3_Val, B4_Val, B5_Val, B6_Val, B7_Val, B8_Val, B9_Val;
        private int A1_L, A2_L, A3_L, A4_L, A5_L, A6_L, A7_L, A8_L, A9_L, B1_L, B2_L, B3_L, B4_L, B5_L, B6_L, B7_L, B8_L, B9_L;
        // public object My { get; private set; }

        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void LabelSensorArrayA_Click(object sender, EventArgs e)
        {

        }

        private void ButtonClear_Click(object sender, EventArgs e)
        {
            for (var i = 0; i <= 30; i += 1)
            {
                chart1.Series.Add("A1").Points.AddXY(DateTime.Now.ToLongTimeString(), 0);
                if (chart1.Series["A1"].Points.Count == Limit)
                    chart1.Series["A1"].Points.RemoveAt(0);
                chart1.ChartAreas[0].AxisY.Maximum = 1100;

                chart1.Series["A2"].Points.AddY(0);
                if (chart1.Series["A2"].Points.Count == Limit)
                    chart1.Series["A2"].Points.RemoveAt(0);

                chart1.Series["A3"].Points.AddY(0);
                if (chart1.Series["A3"].Points.Count == Limit)
                    chart1.Series["A3"].Points.RemoveAt(0);

                chart1.Series["A4"].Points.AddY(0);
                if (chart1.Series["A4"].Points.Count == Limit)
                    chart1.Series["A4"].Points.RemoveAt(0);

                chart1.Series["A5"].Points.AddY(0);
                if (chart1.Series["A5"].Points.Count == Limit)
                    chart1.Series["A5"].Points.RemoveAt(0);

                chart1.Series["A6"].Points.AddY(0);
                if (chart1.Series["A6"].Points.Count == Limit)
                    chart1.Series["A6"].Points.RemoveAt(0);

                chart1.Series["A7"].Points.AddY(0);
                if (chart1.Series["A7"].Points.Count == Limit)
                    chart1.Series["A7"].Points.RemoveAt(0);

                chart1.Series["A8"].Points.AddY(0);
                if (chart1.Series["A8"].Points.Count == Limit)
                    chart1.Series["A8"].Points.RemoveAt(0);

                chart1.Series["A9"].Points.AddY(0);
                if (chart1.Series["A9"].Points.Count == Limit)
                    chart1.Series["A9"].Points.RemoveAt(0);

                chart1.Series["B1"].Points.AddY(0);
                if (chart1.Series["B1"].Points.Count == Limit)
                    chart1.Series["B1"].Points.RemoveAt(0);

                chart1.Series["B2"].Points.AddY(0);
                if (chart1.Series["B2"].Points.Count == Limit)
                    chart1.Series["B2"].Points.RemoveAt(0);

                chart1.Series["B3"].Points.AddY(0);
                if (chart1.Series["B3"].Points.Count == Limit)
                    chart1.Series["B3"].Points.RemoveAt(0);

                chart1.Series["B4"].Points.AddY(0);
                if (chart1.Series["B4"].Points.Count == Limit)
                    chart1.Series["B4"].Points.RemoveAt(0);

                chart1.Series["B5"].Points.AddY(0);
                if (chart1.Series["B5"].Points.Count == Limit)
                    chart1.Series["B5"].Points.RemoveAt(0);

                chart1.Series["B6"].Points.AddY(0);
                if (chart1.Series["B6"].Points.Count == Limit)
                    chart1.Series["B6"].Points.RemoveAt(0);

                chart1.Series["B7"].Points.AddY(0);
                if (chart1.Series["B7"].Points.Count == Limit)
                    chart1.Series["B7"].Points.RemoveAt(0);

                chart1.Series["B8"].Points.AddY(0);
                if (chart1.Series["B8"].Points.Count == Limit)
                    chart1.Series["B8"].Points.RemoveAt(0);

                chart1.Series["B9"].Points.AddY(0);
                if (chart1.Series["B9"].Points.Count == Limit)
                    chart1.Series["B9"].Points.RemoveAt(0);
            }
            dataGridView1.Rows.Clear();
        }

        private void label2_Click(object sender, EventArgs e)
        {

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
                chart1.Series.Add("A1").Points.AddXY(DateTime.Now.ToLongTimeString(), 0);
                if (chart1.Series["A1"].Points.Count == Limit)
                    chart1.Series["A1"].Points.RemoveAt(0);
                chart1.ChartAreas[0].AxisY.Maximum = 1100;

                chart1.Series["A2"].Points.AddY(0);
                if (chart1.Series["A2"].Points.Count == Limit)
                    chart1.Series["A2"].Points.RemoveAt(0);

                chart1.Series["A3"].Points.AddY(0);
                if (chart1.Series["A3"].Points.Count == Limit)
                    chart1.Series["A3"].Points.RemoveAt(0);

                chart1.Series["A4"].Points.AddY(0);
                if (chart1.Series["A4"].Points.Count == Limit)
                    chart1.Series["A4"].Points.RemoveAt(0);

                chart1.Series["A5"].Points.AddY(0);
                if (chart1.Series["A5"].Points.Count == Limit)
                    chart1.Series["A5"].Points.RemoveAt(0);

                chart1.Series["A6"].Points.AddY(0);
                if (chart1.Series["A6"].Points.Count == Limit)
                    chart1.Series["A6"].Points.RemoveAt(0);

                chart1.Series["A7"].Points.AddY(0);
                if (chart1.Series["A7"].Points.Count == Limit)
                    chart1.Series["A7"].Points.RemoveAt(0);

                chart1.Series["A8"].Points.AddY(0);
                if (chart1.Series["A8"].Points.Count == Limit)
                    chart1.Series["A8"].Points.RemoveAt(0);

                chart1.Series["A9"].Points.AddY(0);
                if (chart1.Series["A9"].Points.Count == Limit)
                    chart1.Series["A9"].Points.RemoveAt(0);

                chart1.Series["B1"].Points.AddY(0);
                if (chart1.Series["B1"].Points.Count == Limit)
                    chart1.Series["B1"].Points.RemoveAt(0);

                chart1.Series["B2"].Points.AddY(0);
                if (chart1.Series["B2"].Points.Count == Limit)
                    chart1.Series["B2"].Points.RemoveAt(0);

                chart1.Series["B3"].Points.AddY(0);
                if (chart1.Series["B3"].Points.Count == Limit)
                    chart1.Series["B3"].Points.RemoveAt(0);

                chart1.Series["B4"].Points.AddY(0);
                if (chart1.Series["B4"].Points.Count == Limit)
                    chart1.Series["B4"].Points.RemoveAt(0);

                chart1.Series["B5"].Points.AddY(0);
                if (chart1.Series["B5"].Points.Count == Limit)
                    chart1.Series["B5"].Points.RemoveAt(0);

                chart1.Series["B6"].Points.AddY(0);
                if (chart1.Series["B6"].Points.Count == Limit)
                    chart1.Series["B6"].Points.RemoveAt(0);

                chart1.Series["B7"].Points.AddY(0);
                if (chart1.Series["B7"].Points.Count == Limit)
                    chart1.Series["B7"].Points.RemoveAt(0);

                chart1.Series["B8"].Points.AddY(0);
                if (chart1.Series["B8"].Points.Count == Limit)
                    chart1.Series["B8"].Points.RemoveAt(0);

                chart1.Series["B9"].Points.AddY(0);
                if (chart1.Series["B9"].Points.Count == Limit)
                    chart1.Series["B9"].Points.RemoveAt(0);
            }
            chart1.ChartAreas[0].AxisY.Maximum = 1200;

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void ComboBoxPort_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
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
                ButtonConnect.Enabled = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Com port not detected", "Warning !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                ComboBoxPort.Text = "";
                ComboBoxPort.Items.Clear();
                ButtonConnect.Enabled = false;
                ButtonStartRecording.Enabled = false;
                return;
            }

            ComboBoxPort.DroppedDown = true;
        }

        private void ButtonConnect_Click(object sender, EventArgs e)
        {
            SerialPort1.BaudRate = (int)ComboBoxBaudRate.SelectedItem;
            SerialPort1.PortName = (string)ComboBoxPort.SelectedItem;
            SerialPort1.Open();
            TimerSerial.Start();

            ComboBoxPort.Enabled = false;
            label1.Enabled = false;
            ComboBoxBaudRate.Enabled = false;
            ButtonScanPort.Enabled = false;
            ButtonConnect.Enabled = false;
            ButtonDisconnect.Enabled = true;
            ButtonStartRecording.Enabled = true;

            PictureBoxConnectionInd.Image = global::ConsoleAppGUI.Properties.Resources.Green;
            LabelStatus.Text = "Status : Connected";
        }

        private void ButtonDisconnect_Click(object sender, EventArgs e)
        {
            PictureBoxConnectionInd.Image = global::ConsoleAppGUI.Properties.Resources.Red;
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

            ButtonSaveToCSV.Enabled = true;
            ButtonStopRecording.Enabled = false;

            SerialPort1.Close();
        }

        private void TimerSerial_Tick(object sender, EventArgs e)
        {
            try
            {
                string StrSerialIn = SerialPort1.ReadExisting();
                string StrSerialInRam;

                TextBox TB = new TextBox();
                TB.Multiline = true;
                TB.Text = StrSerialIn;

                StrSerialInRam = TB.Lines[0].Substring(0, 17);
                if (StrSerialInRam == "SA1")
                {
                    A1_Val = TB.Lines[0];
                    A1_L = A1_Val.Length;
                }
                else
#pragma warning disable CS1717 // Assignment made to same variable
                    A1_Val = A1_Val;
#pragma warning restore CS1717 // Assignment made to same variable

                StrSerialInRam = TB.Lines[1].Substring(0, 17);
                if (StrSerialInRam == "SA2")
                {
                    A2_Val = TB.Lines[1];
                    A2_L = A2_Val.Length;
                }
                else
#pragma warning disable CS1717 // Assignment made to same variable
                    A2_Val = A2_Val;
#pragma warning restore CS1717 // Assignment made to same variable

                StrSerialInRam = TB.Lines[2].Substring(0, 17);
                if (StrSerialInRam == "SA3")
                {
                    A3_Val = TB.Lines[2];
                    A3_L = A3_Val.Length;
                }
                else
#pragma warning disable CS1717 // Assignment made to same variable
                    A3_Val = A3_Val;
#pragma warning restore CS1717 // Assignment made to same variable

                if (PictureBoxConnectionInd.Visible == true)
                    PictureBoxConnectionInd.Visible = false;
                else if (PictureBoxConnectionInd.Visible == false)
                    PictureBoxConnectionInd.Visible = true;

                //LabelLDR1.Text = "SA1 = " + Strings.Mid(LDR_1, 3, LDR_1L);
                //LabelLDR2.Text = "LDR2 = " + Strings.Mid(LDR_2, 3, LDR_2L);
                //LabelPOT.Text = "POTENTIO = " + Strings.Mid(Pot, 3, PotL);
            }
            catch (Exception ex)
            {
            }
        }
    }

        private void TimerDataLogRecord_Tick(object sender, EventArgs e)
        {
            string SA_1Log, SA_2Log, SA_3Log;
            DateTime DT = DateTime.Now;

            SA_1Log = SA_1Log.Substring(A1_Val, 3, A1_L);
            LDR_2Log = Strings.Mid(LDR_2, 3, LDR_2L);
            PotLog = Strings.Mid(Pot, 3, PotL);
            dataGridView1.Rows.Add(new string[] { dataGridView1.RowCount, LDR_1Log, LDR_2Log, PotLog, DT.ToLongTimeString(), DT.ToString("dd-MM-yyyy") });
            this.dataGridView1.FirstDisplayedScrollingRowIndex = this.dataGridView1.RowCount - 1;

            Chart1.Series("LDR1").Points.AddXY(DateTime.Now.ToLongTimeString(), LDR_1Log);
            if (Chart1.Series(0).Points.Count == Limit)
                Chart1.Series(0).Points.RemoveAt(0);

            Chart1.Series("LDR2").Points.AddY(LDR_2Log);
            if (Chart1.Series(1).Points.Count == Limit)
                Chart1.Series(1).Points.RemoveAt(0);

            Chart1.Series("POTENTIO").Points.AddY(PotLog);
            if (Chart1.Series(2).Points.Count == Limit)
                Chart1.Series(2).Points.RemoveAt(0);

            if (PictureBoxRecordInd.Visible == true)
                PictureBoxRecordInd.Visible = false;
            else if (PictureBoxRecordInd.Visible == false)
                PictureBoxRecordInd.Visible = true;
        }

        private void ButtonStartRecording_Click(object sender, EventArgs e)
        {
            ButtonStartRecording.Enabled = false;
            ButtonStopRecording.Enabled = true;
            ButtonSaveToCSV.Enabled = false;
            TimerDataLogRecord.Start();
        }

        private void ButtonSaveToCSV_Click(object sender, EventArgs e, object ProgressBarProcess)
        {
        object ButtonSaveToCSV = null;
        ButtonSaveToCSV.Height = 37;
            ButtonSaveToCSV.Text = "Please Wait...";
            ButtonSaveToCSV.Enabled = false;
            ButtonStartRecording.Enabled = false;
            ProgressBarProcess.Visible = true;
            ProgressBarProcess.Value = 1;

            Microsoft.Office.Interop.Excel.Application xlApp;
            Microsoft.Office.Interop.Excel.Workbook xlWorkBook;
            Microsoft.Office.Interop.Excel.Worksheet xlWorkSheet;
            object misValue = System.Reflection.Missing.Value;
            int i;
            int j;

            ProgressBarProcess.Value = 3;

            xlApp = new Microsoft.Office.Interop.Excel.Application();
            xlWorkBook = xlApp.Workbooks.Add(misValue);
            xlWorkSheet = xlWorkBook.Worksheets("sheet1");

            ProgressBarProcess.Value = 5;

            for (i = 0; i <= dataGridView1.RowCount - 2; i++)
            {
                for (j = 0; j <= dataGridView1.ColumnCount - 1; j++)
                {
                    for (int k = 1; k <= dataGridView1.Columns.Count; k++)
                    {
                        xlWorkSheet.Cells(1, k) = dataGridView1.Columns(k - 1).HeaderText;
                        xlWorkSheet.Cells(i + 2, j + 1) = dataGridView1(j, i).Value.ToString();
                    }
                }
            }

            ProgressBarProcess.Value = 8;

            FilePathAndName = Application.StartupPath + @"\" + DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + ".xlsx";
            if (File.Exists(FilePathAndName))
                File.Delete(FilePathAndName);

            xlWorkSheet.SaveAs(FilePathAndName);
            xlWorkBook.Close();
            xlApp.Quit();

            releaseObject(xlApp);
            releaseObject(xlWorkBook);
            releaseObject(xlWorkSheet);

            ProgressBarProcess.Value = 100;

            Interaction.MsgBox("Successfully saved" + Constants.vbCrLf + "File are saved at : " + FilePathAndName, MsgBoxStyle.Information, "Information");

            ProgressBarProcess.Visible = false;

            Process.Start(FilePathAndName);

            ButtonSaveToCSV.Height = 50;
            ButtonSaveToCSV.Text = "Save To MS Excel";
            ButtonSaveToCSV.Enabled = true;
            ButtonStartRecording.Enabled = true;
        }

        private void ButtonStopRecording_Click(object sender, EventArgs e)
        {
            ButtonStartRecording.Enabled = true;
            ButtonStopRecording.Enabled = false;
            ButtonSaveToCSV.Enabled = true;
            TimerDataLogRecord.Stop();
            PictureBoxRecordInd.Visible = true;
        }
    }
}
