// See https://aka.ms/new-console-template for more information
using Repo;
CustomerRepository repository = new CustomerRepository();
Customer customer = new Customer(1,"fg");
int c = repository.Add(customer);
Console.WriteLine(c);