//using Stripe;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repo
{
    public interface ICustomerRepository
        {
            int Add(Customer customer);
            int Update(Customer customer);
            Customer Get(int id);
            List<Customer> GetAll();
            int Delete(int id);
        }

    public class Customer
    {
        public int Id { get; set; } 
        public string Name { get; set; }

        public Customer(int id1, string name)
        {
            Id = id1;
            Name = name;
        }
    }

    public class CustomerRepository : ICustomerRepository
        {
            public int Add(Customer customer)
            {
                return 0;
            }

            public int Delete(int id)
            {
                throw new NotImplementedException();
            }

            public Customer Get(int id)
            {
                throw new NotImplementedException();
            }

            public List<Customer> GetAll()
            {
                throw new NotImplementedException();
            }

            public int Update(Customer customer)
            {
                throw new NotImplementedException();
            }
        }


}


