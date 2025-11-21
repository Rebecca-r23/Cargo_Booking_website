using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DatTab
/// </summary>
public class DatTab
{
    public DatTab()
    {
        //
        // TODO: Add constructor logic here
        //
    }


    DataTable dt = new DataTable();
    public DataTable CreateDataTable()
    {



        DataColumn d1 = new DataColumn("NoOfPackage", typeof(int));
        DataColumn d2 = new DataColumn("WeightPerPackage", typeof(double));
        DataColumn d3 = new DataColumn("length", typeof(double));
        DataColumn d4 = new DataColumn("width", typeof(double));
        DataColumn d5 = new DataColumn("height", typeof(double));

        dt.Columns.Add(d1);
        dt.Columns.Add(d2);
        dt.Columns.Add(d3);
        dt.Columns.Add(d4);
        dt.Columns.Add(d5);

        return dt;

    }

    public void AddRecord(int NoOfPack,double WeightPerPack,double length,double width,double height, DataTable dt)
    {
        dt.Rows.Add(new object[] { NoOfPack,WeightPerPack,length,width,height});
    }
}