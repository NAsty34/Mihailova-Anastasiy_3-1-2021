//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace kursovik
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class MedicineEntities1 : DbContext
    {     
        private static MedicineEntities1 _context;
        public MedicineEntities1()
            : base("name=MedicineEntities1")
        {
        }
        public static MedicineEntities1 GetContext()
        {
            if (_context == null)
            {
                _context = new MedicineEntities1();
            }
            return _context;
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Medic> Medics { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
    }
}
