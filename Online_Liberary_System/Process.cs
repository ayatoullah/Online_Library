//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Online_Liberary_System
{
    using System;
    using System.Collections.Generic;
    
    public partial class Process
    {
        public int ProcessID { get; set; }
        public read_borrow C_read_borrow { get; set; }
        public int user_id { get; set; }
        public int book_id { get; set; }
        public System.DateTime startDate { get; set; }
        public System.DateTime endDate { get; set; }
        public bool isdelivered { get; set; }
        public int emp_id { get; set; }
    
        public virtual book book { get; set; }
        public virtual employee employee { get; set; }
        public virtual user user { get; set; }
    }
}
