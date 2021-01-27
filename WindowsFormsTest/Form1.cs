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
using Microsoft.Office.Interop.Excel;

namespace WindowsFormsTest
{
    public partial class Form1 : Form
    {

        private int Limit = 9;
        private string FilePathAndName;
        private string S1A_Val, S2A_Val, S3A_Val, S4A_Val, S5A_Val, S6A_Val, S7A_Val, S8A_Val, S9A_Val;
        private string S1B_Val, S2B_Val, S3B_Val, S4B_Val, S5B_Val, S6B_Val, S7B_Val, S8B_Val, S9B_Val;
        
        public Form1()
        {
            InitializeComponent();
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
                chart1.ChartAreas[0].AxisY.Maximum = 25;

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

            chart1.ChartAreas[0].AxisY.Maximum = 25;

            for (var i = 0; i <= 30; i += 1)
            {
                chart2.Series["B1"].Points.AddXY(DateTime.Now.ToLongTimeString(), 0);
                if (chart2.Series[0].Points.Count == Limit)
                {
                    chart2.Series[0].Points.RemoveAt(0);
                }
                chart2.ChartAreas[0].AxisY.Maximum = 25;

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

            chart2.ChartAreas[0].AxisY.Maximum = 25;
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
                //ButtonConnect.Enabled = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Com port not detected", "Warning !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                ComboBoxPort.Text = "";
                ComboBoxPort.Items.Clear();
                //ButtonConnect.Enabled = false;
                ButtonStartRecording.Enabled = false;
                return;
            }

            ComboBoxPort.DroppedDown = true;
        }

        

        private void ButtonConnect_Click(object sender, EventArgs e)
        {
            SerialPort1.BaudRate = Int32.Parse(ComboBoxBaudRate.SelectedItem.ToString());
            SerialPort1.PortName = (string)ComboBoxPort.SelectedItem;

            if (!SerialPort1.IsOpen)
            {
                SerialPort1.Open();
            }

            TimerSerial.Start();

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

        private void groupBox4_Enter(object sender, EventArgs e)
        {

        }

        private void RadioButtonA_CheckedChanged(object sender, EventArgs e)
        {
            ButtonConnect.Enabled = true;
            dataGridView2.Visible = false;
            dataGridView1.Visible = true;
            chart1.Visible = true;
            chart2.Visible = false;
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
            ButtonConnect.Enabled = true;
            dataGridView1.Visible = false;
            dataGridView2.Visible = true;
            chart2.Visible = true;
            chart1.Visible = false;
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
            ButtonSaveToExcel.Enabled = true;
            ButtonStartRecording.Enabled = false;
            ButtonStopRecording.Enabled = false;
            SerialPort1.Close();
        }

        private void ButtonStartRecording_Click(object sender, EventArgs e)
        {
            ButtonStartRecording.Enabled = false;
            ButtonStopRecording.Enabled = true;
            ButtonSaveToExcel.Enabled = false;
            TimerDataLogRecord.Start();   
        }

        private void ButtonStopRecording_Click(object sender, EventArgs e)
        {
            ButtonStartRecording.Enabled = true;
            ButtonStopRecording.Enabled = false;
            ButtonSaveToExcel.Enabled = true;
            TimerDataLogRecord.Stop();
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
                    chart1.ChartAreas[0].AxisY.Maximum = 25;

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
                    LabelSensor1.Text = "A1" ;
                    LabelSensor2.Text = "A2" ;
                    LabelSensor3.Text = "A3" ;
                    LabelSensor4.Text = "A4" ;
                    LabelSensor5.Text = "A4" ;
                    LabelSensor6.Text = "A6" ;
                    LabelSensor7.Text = "A7" ;
                    LabelSensor8.Text = "A8" ;
                    LabelSensor9.Text = "A9" ;
                }

            }

            else
            {
                for (var i = 0; i <= 30; i += 1)
                {
                    chart2.Series["B1"].Points.AddXY(DateTime.Now.ToLongTimeString(), 0);
                    if (chart2.Series[0].Points.Count == Limit)
                    {
                        chart2.Series[0].Points.RemoveAt(0);
                    }
                    chart2.ChartAreas[0].AxisY.Maximum = 25;

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

            //int cellrowindex = 1;
            //int cellcolumnindex = 1;
            //for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
            //{
            //    for (int j = 0; j < dataGridView1.Columns.Count; j++)
            //    {
            //        if (cellrowindex == 1)
            //        {
            //            xlWorkSheet.Cells[cellrowindex, cellcolumnindex] = dataGridView1.Columns[j].HeaderText;
            //        }
            //        else
            //        {
            //            xlWorkSheet.Cells[cellrowindex, cellcolumnindex] = dataGridView1.Rows[i].Cells[j].Value.ToString();
            //        }
            //        cellcolumnindex++;
            //    }
            //    cellcolumnindex = 1;
            //    cellrowindex++;
            //}
            if (RadioButtonA.Checked)
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
                FilePathAndName = path + @"\" + "Sensor-A" + "-" + DateTime.Now.ToString("HH mm") + "-" + DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + ".xlsx";
            }
            else
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
                FilePathAndName = path + @"\" + "Sensor-B" + "-" + DateTime.Now.ToString("HH mm") + "-" + DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + ".xlsx";
            }
            ProgressBarProcess.Value = 8;

            

            //FilePathAndName = path + @"\" + DateTime.Now.ToString("HH mm") + DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + ".xlsx";
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

            MessageBox.Show("Successfully saved" + "\r\n" + "File are saved at : " + FilePathAndName, MessageBoxIcon.Information.ToString());

            ProgressBarProcess.Visible = false;

            Process.Start(FilePathAndName);

            ButtonSaveToExcel.Height = 50;
            ButtonSaveToExcel.Text = "Save To MS Excel";
            ButtonSaveToExcel.Enabled = true;
            ButtonStartRecording.Enabled = true;
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
            string Sen1A_Log, Sen2A_Log, Sen3A_Log, Sen4A_Log, Sen5A_Log, Sen6A_Log, Sen7A_Log, Sen8A_Log, Sen9A_Log;
            string Sen1B_Log, Sen2B_Log, Sen3B_Log, Sen4B_Log, Sen5B_Log, Sen6B_Log, Sen7B_Log, Sen8B_Log, Sen9B_Log;
            DateTime DT = DateTime.Now;

            Sen1A_Log = S1A_Val.Substring(3);
            Sen2A_Log = S2A_Val.Substring(3);
            Sen3A_Log = S3A_Val.Substring(3);
            Sen4A_Log = S4A_Val.Substring(3);
            Sen5A_Log = S5A_Val.Substring(3);
            Sen6A_Log = S6A_Val.Substring(3);
            Sen7A_Log = S7A_Val.Substring(3);
            Sen8A_Log = S8A_Val.Substring(3);
            Sen9A_Log = S9A_Val.Substring(3);

            Sen1B_Log = S1B_Val.Substring(3);
            Sen2B_Log = S2B_Val.Substring(3);
            Sen3B_Log = S3B_Val.Substring(3);
            Sen4B_Log = S4B_Val.Substring(3);
            Sen5B_Log = S5B_Val.Substring(3);
            Sen6B_Log = S6B_Val.Substring(3);
            Sen7B_Log = S7B_Val.Substring(3);
            Sen8B_Log = S8B_Val.Substring(3);
            Sen9B_Log = S9B_Val.Substring(3);
            dataGridView1.Rows.Add(new string[] { dataGridView1.RowCount.ToString(), Sen1A_Log, Sen2A_Log, Sen3A_Log, Sen4A_Log, Sen5A_Log, Sen6A_Log, Sen7A_Log, Sen8A_Log, Sen9A_Log, DT.ToLongTimeString(), DT.ToString("dd-MM-yyyy") });
            this.dataGridView1.FirstDisplayedScrollingRowIndex = this.dataGridView1.RowCount - 1 ;

            dataGridView2.Rows.Add(new string[] { dataGridView2.RowCount.ToString(), Sen1B_Log, Sen2B_Log, Sen3B_Log, Sen4B_Log, Sen5B_Log, Sen6B_Log, Sen7B_Log, Sen8B_Log, Sen9B_Log, DT.ToLongTimeString(), DT.ToString("dd-MM-yyyy") });
            this.dataGridView2.FirstDisplayedScrollingRowIndex = this.dataGridView2.RowCount - 1;

            chart1.Series["A1"].Points.AddXY(DateTime.Now.ToLongTimeString(), Sen1A_Log);
            if (chart1.Series[0].Points.Count == Limit)
            {
                chart1.Series[0].Points.RemoveAt(0);
            }

            chart1.Series["A2"].Points.AddY(Sen2A_Log);
            if (chart1.Series[1].Points.Count == Limit)
            {
                chart1.Series[1].Points.RemoveAt(0);
            }

            chart1.Series["A3"].Points.AddY(Sen3A_Log);
            if (chart1.Series[2].Points.Count == Limit)
            {
                chart1.Series[2].Points.RemoveAt(0);
            }
            chart1.Series["A4"].Points.AddY(Sen4A_Log);
            if (chart1.Series[3].Points.Count == Limit)
            {
                chart1.Series[3].Points.RemoveAt(0);
            }
            chart1.Series["A5"].Points.AddY(Sen5A_Log);
            if (chart1.Series[4].Points.Count == Limit)
            {
                chart1.Series[4].Points.RemoveAt(0);
            }
            chart1.Series["A6"].Points.AddY(Sen6A_Log);
            if (chart1.Series[5].Points.Count == Limit)
            {
                chart1.Series[5].Points.RemoveAt(0);
            }
            chart1.Series["A7"].Points.AddY(Sen7A_Log);
            if (chart1.Series[6].Points.Count == Limit)
            {
                chart1.Series[6].Points.RemoveAt(0);
            }
            chart1.Series["A8"].Points.AddY(Sen8A_Log);
            if (chart1.Series[7].Points.Count == Limit)
            {
                chart1.Series[7].Points.RemoveAt(0);
            }
            chart1.Series["A9"].Points.AddY(Sen9A_Log);
            if (chart1.Series[8].Points.Count == Limit)
            {
                chart1.Series[8].Points.RemoveAt(0);
            }

            chart2.Series["B1"].Points.AddXY(DateTime.Now.ToLongTimeString(), Sen1B_Log);
            if (chart2.Series[0].Points.Count == Limit)
            {
                chart2.Series[0].Points.RemoveAt(0);
            }

            chart2.Series["B2"].Points.AddY(Sen2B_Log);
            if (chart2.Series[1].Points.Count == Limit)
            {
                chart2.Series[1].Points.RemoveAt(0);
            }

            chart2.Series["B3"].Points.AddY(Sen3B_Log);
            if (chart2.Series[2].Points.Count == Limit)
            {
                chart2.Series[2].Points.RemoveAt(0);
            }
            chart2.Series["B4"].Points.AddY(Sen4B_Log);
            if (chart2.Series[3].Points.Count == Limit)
            {
                chart2.Series[3].Points.RemoveAt(0);
            }
            chart2.Series["B5"].Points.AddY(Sen5B_Log);
            if (chart2.Series[4].Points.Count == Limit)
            {
                chart2.Series[4].Points.RemoveAt(0);
            }
            chart2.Series["B6"].Points.AddY(Sen6B_Log);
            if (chart2.Series[5].Points.Count == Limit)
            {
                chart2.Series[5].Points.RemoveAt(0);
            }
            chart2.Series["B7"].Points.AddY(Sen7B_Log);
            if (chart2.Series[6].Points.Count == Limit)
            {
                chart2.Series[6].Points.RemoveAt(0);
            }
            chart2.Series["B8"].Points.AddY(Sen8B_Log);
            if (chart2.Series[7].Points.Count == Limit)
            {
                chart2.Series[7].Points.RemoveAt(0);
            }
            chart2.Series["B9"].Points.AddY(Sen9B_Log);
            if (chart2.Series[8].Points.Count == Limit)
            {
                chart2.Series[8].Points.RemoveAt(0);
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

        private void TimerSerial_Tick(object sender, EventArgs e)
        {
            try
            {
                string StrSerialIn = SerialPort1.ReadExisting();
                string StrSerialInRam;

                System.Windows.Forms.TextBox TB = new System.Windows.Forms.TextBox();
                TB.Multiline = true;
                TB.Text = StrSerialIn;

                StrSerialInRam = TB.Lines[0].Substring(0, 3);
                if (StrSerialInRam == "SA1")
                {
                    S1A_Val = TB.Lines[0];
                }
                else
                {
                    S1A_Val = S1A_Val;
                }

                StrSerialInRam = TB.Lines[1].Substring(0, 3);
                if (StrSerialInRam == "SA2")
                {
                    S2A_Val = TB.Lines[1];                    
                }
                else
                {
                    S2A_Val = S2A_Val;
                }

                StrSerialInRam = TB.Lines[2].Substring(0, 3);
                if (StrSerialInRam == "SA3")
                {
                    S3A_Val = TB.Lines[2];                    
                }
                else
                {
                    S3A_Val = S3A_Val;
                }

                StrSerialInRam = TB.Lines[3].Substring(0, 3);
                if (StrSerialInRam == "SA4")
                {
                    S4A_Val = TB.Lines[3];
                }
                else
                {
                    S4A_Val = S4A_Val;
                }

                StrSerialInRam = TB.Lines[4].Substring(0, 3);
                if (StrSerialInRam == "SA5")
                {
                    S5A_Val = TB.Lines[4];
                }
                else
                {
                    S5A_Val = S5A_Val;
                }

                StrSerialInRam = TB.Lines[5].Substring(0, 3);
                if (StrSerialInRam == "SA6")
                {
                    S6A_Val = TB.Lines[5];
                }
                else
                {
                    S6A_Val = S6A_Val;
                }

                StrSerialInRam = TB.Lines[6].Substring(0, 3);
                if (StrSerialInRam == "SA7")
                {
                    S7A_Val = TB.Lines[6];
                }
                else
                {
                    S7A_Val = S7A_Val;
                }

                StrSerialInRam = TB.Lines[7].Substring(0, 3);
                if (StrSerialInRam == "SA8")
                {
                    S8A_Val = TB.Lines[7];
                }
                else
                {
                    S8A_Val = S8A_Val;
                }

                StrSerialInRam = TB.Lines[8].Substring(0, 3);
                if (StrSerialInRam == "SA9")
                {
                    S9A_Val = TB.Lines[8];
                }
                else
                {
                    S9A_Val = S9A_Val;
                }

                StrSerialInRam = TB.Lines[9].Substring(0, 3);
                if (StrSerialInRam == "SB1")
                {
                    S1B_Val = TB.Lines[9];
                }
                else
                {
                    S1B_Val = S1B_Val;
                }

                StrSerialInRam = TB.Lines[10].Substring(0, 3);
                if (StrSerialInRam == "SB2")
                {
                    S2B_Val = TB.Lines[10];
                }
                else
                {
                    S2B_Val = S2B_Val;
                }

                StrSerialInRam = TB.Lines[11].Substring(0, 3);
                if (StrSerialInRam == "SB3")
                {
                    S3B_Val = TB.Lines[11];
                }
                else
                {
                    S3B_Val = S3B_Val;
                }

                StrSerialInRam = TB.Lines[12].Substring(0, 3);
                if (StrSerialInRam == "SB4")
                {
                    S4B_Val = TB.Lines[12];
                }
                else
                {
                    S4B_Val = S4B_Val;
                }

                StrSerialInRam = TB.Lines[13].Substring(0, 3);
                if (StrSerialInRam == "SB5")
                {
                    S5B_Val = TB.Lines[13];
                }
                else
                {
                    S5B_Val = S5B_Val;
                }

                StrSerialInRam = TB.Lines[14].Substring(0, 3);
                if (StrSerialInRam == "SB6")
                {
                    S6B_Val = TB.Lines[14];
                }
                else
                {
                    S6B_Val = S6B_Val;
                }

                StrSerialInRam = TB.Lines[15].Substring(0, 3);
                if (StrSerialInRam == "SB7")
                {
                    S7B_Val = TB.Lines[15];
                }
                else
                {
                    S7B_Val = S7B_Val;
                }

                StrSerialInRam = TB.Lines[16].Substring(0, 3);
                if (StrSerialInRam == "SB8")
                {
                    S8B_Val = TB.Lines[16];
                }
                else
                {
                    S8B_Val = S8B_Val;
                }

                StrSerialInRam = TB.Lines[17].Substring(0, 3);
                if (StrSerialInRam == "SB9")
                {
                    S9B_Val = TB.Lines[17];
                }
                else
                {
                    S9B_Val = S9B_Val;
                }


                if (PictureBoxConnectionInd.Visible == true)
                {
                    PictureBoxConnectionInd.Visible = false;
                }
                else if (PictureBoxConnectionInd.Visible == false)
                {
                    PictureBoxConnectionInd.Visible = true;
                }
                if (RadioButtonA.Checked)
                {
                    LabelSensor1.Text = "A1 = " + S1A_Val.Substring(3);
                    LabelSensor2.Text = "A2 = " + S2A_Val.Substring(3);
                    LabelSensor3.Text = "A3 = " + S3A_Val.Substring(3);
                    LabelSensor4.Text = "A4 = " + S4A_Val.Substring(3);
                    LabelSensor5.Text = "A4 = " + S5A_Val.Substring(3);
                    LabelSensor6.Text = "A6 = " + S6A_Val.Substring(3);
                    LabelSensor7.Text = "A7 = " + S7A_Val.Substring(3);
                    LabelSensor8.Text = "A8 = " + S8A_Val.Substring(3);
                    LabelSensor9.Text = "A9 = " + S9A_Val.Substring(3);
                }
                else
                {
                    LabelSensor1.Text = "B1 = " + S1B_Val.Substring(3);
                    LabelSensor2.Text = "B2 = " + S2B_Val.Substring(3);
                    LabelSensor3.Text = "B3 = " + S3B_Val.Substring(3);
                    LabelSensor4.Text = "B4 = " + S4B_Val.Substring(3);
                    LabelSensor5.Text = "B5 = " + S5B_Val.Substring(3);
                    LabelSensor6.Text = "B6 = " + S6B_Val.Substring(3);
                    LabelSensor7.Text = "B7 = " + S7B_Val.Substring(3);
                    LabelSensor8.Text = "B8 = " + S8B_Val.Substring(3);
                    LabelSensor9.Text = "B9 = " + S9B_Val.Substring(3);
                }
            }
            catch (Exception ex)
            {
            }
        }

    }
}
