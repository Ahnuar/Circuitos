//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Circuitos
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class bdCircuitosEntities : DbContext
    {
        public bdCircuitosEntities()
            : base("name=bdCircuitosEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Circuitos> Circuitos { get; set; }
        public virtual DbSet<Continentes> Continentes { get; set; }
        public virtual DbSet<Fotos> Fotos { get; set; }
        public virtual DbSet<Localidades> Localidades { get; set; }
        public virtual DbSet<Paises> Paises { get; set; }
    }
}
