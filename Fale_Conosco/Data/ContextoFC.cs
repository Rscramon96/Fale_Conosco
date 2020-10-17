using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Fale_Conosco.Models;

namespace Fale_Conosco.Data
{
    public class ContextoFC : IdentityDbContext<LoginUsuario>
    {
        public ContextoFC(DbContextOptions<ContextoFC> options) : base(options) { }
        public DbSet<Fale_Conosco.Models.FaleConosco> FaleConosco { get; set; }
        public DbSet<Fale_Conosco.Models.SMTP> SMTP { get; set; }
    }
}
