try
        {
            char ch;
            Console.WriteLine("Enter a character");
            ch = Console.ReadKey().KeyChar;
            switch (ch)
            {
                case 'c':
                    {
                        Console.WriteLine("CRICKET");
                        break;
                    }
                case 'f':
                    {
                        Console.WriteLine("FOOTBALL");
                        break;
                    }
                case 'h':
                    {
                        Console.WriteLine("HOCKEY");
                        break;
                    }
                case 't':
                    {
                        Console.WriteLine("TENNIS");
                        break;
                    }
                case 'b':
                    {
                        Console.WriteLine("BADMINTON");
                        break;
                    }
                default:
                    {
                        throw new InvalidUserInputException("Input must be a valid entry");
                    }
            }
        }
        catch (InvalidUserInputException ex)
        {
            Console.WriteLine("\nError: " + ex.Message);
        }

