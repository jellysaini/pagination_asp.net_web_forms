using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pagination.EF
{
    public class OrderMasterRepo
    {
        public Int32 TotalItems()
        {
            PagingContext _context = new PagingContext();
            var count = (from p in _context.OrdersMasters
                         select p).Count();

            return count;
        }

        public List<OrdersMaster> Paging(Int32 take,Int32 skip)
        {
            PagingContext _context = new PagingContext();
            var order = (from p in _context.OrdersMasters
                         orderby p.ID descending
                         select p).Skip(skip).Take(take).ToList();

            return order;
        }
    }
}