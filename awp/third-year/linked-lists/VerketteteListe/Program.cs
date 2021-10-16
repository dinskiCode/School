using System;
using System.Text;

namespace VerketteteListe
{
    class Program
    {
        static void Main(string[] args)
        {
            string choice = "";
            CPupil anchor = new CPupil();
            do
            {
                choice = ChoiceMenu();
                CPupil newCPupil;

                switch (choice)
                {
                    case "1":
                        ShowData(anchor);
                        break;
                    case "2":
                        newCPupil = createCPupil();
                        AddEnd(ref anchor, newCPupil);
                        break;
                    case "3":
                        newCPupil = createCPupil();
                        Console.Write("Insert Before Element Nr.: ");
                        int index = Int32.Parse(Console.ReadLine());
                        AddBefore(ref anchor, newCPupil, index);
                        break;
                    case "4":
                        int toDeleteId = Int32.Parse(Console.ReadLine());
                        DeleteElement(ref anchor, toDeleteId);
                        break;
                    case "5":
                        DeleteList(anchor);
                        break;
                    case "6":
                        SortByName(ref anchor);
                        break;
                    case "9":
                        Console.Clear();
                        break;
                    default:
                        Console.WriteLine("Exit");
                        break;
                }
                Console.Write("\n\n\n");
            } while (choice != "0");
        }

        static string ChoiceMenu()
        {
            Console.WriteLine("Auswahlmenue Verkettete Liste");
            Console.WriteLine("==============================\n");
            Console.WriteLine("1 = Datensaetze ansehen");
            Console.WriteLine("2 = Neuen Datensatz am Ende anfuegen");
            Console.WriteLine("3 = Neuen Datensatz vor Element Nr. ... einfuegen");
            Console.WriteLine("4 = Datensatz loeschen");
            Console.WriteLine("5 = Komplette Liste loeschen");
            Console.WriteLine("6 = Liste nach Namen sortieren");
            Console.WriteLine("7 = Liste in Datei speichern");
            Console.WriteLine("8 = Liste aus Datei lesen");
            Console.WriteLine("9 = Bildschirm loeschen");
            Console.WriteLine("0 = Ende");
            Console.Write("\nAuswahl: ");
            string choice = Console.ReadLine();
            Console.Write("\n\n");
            return choice;
        }

        static void ShowData(CPupil anchor)
        {
            CPupil walk = anchor.next; // don't show anchor
            int count = 0;
            while (walk != null)
            {
                Console.WriteLine("[" + count + "]" + " = " + walk.id + " - " + walk.name + " - " + walk.phone);
                walk = walk.next;
                count++;
            }
        }

        static void AddEnd(ref CPupil anchor, CPupil newPupil)
        {
            CPupil walk = anchor;
            while (walk.next != null)
            {
                walk = walk.next;
            }
            Console.WriteLine(walk.id + " " + walk.name);
            walk.next = newPupil;
            Console.WriteLine(walk.next.id + " " + walk.next.name);
        }

        static void AddBefore(ref CPupil anchor, CPupil newPupil, int index)
        {
            int count = 0;
            CPupil walk = anchor;
            while (count < index - 1)
            {
                walk = walk.next;
                count++;
            }
            newPupil.next = walk.next;
            walk.next = newPupil;
        }

        static void DeleteElement(ref CPupil anchor, int id)
        {
            CPupil walk = anchor;
            while (walk.next.id != id)
            {
                walk = walk.next;
            }
            walk.next = walk.next.next;
        }

        static void DeleteList(CPupil anchor)
        {
            anchor.next = null;
        }

        static void SortByName(ref CPupil anchor)
        {
            CPupil walk = anchor.next;

            while (walk.next != null)
            {
                if ((int)walk.next.name[0] < (int)walk.name[0])
                {
                    CPupil temp = walk.next;
                    walk.next = walk;
                    walk = temp;
                }
                walk = walk.next;
            }
        }

        // utils
        static CPupil createCPupil()
        {
            Console.Write("Enter ID: ");
            int id = Int32.Parse(Console.ReadLine());
            Console.Write("Enter Name: ");
            string name = Console.ReadLine();
            Console.Write("Enter Phone: ");
            string phone = Console.ReadLine();
            Console.Write("Enter Location: ");
            string location = Console.ReadLine();
            CPupil newCPupil = new CPupil(id, name, phone, location);
            return newCPupil;
        }
    }

    class CPupil
    {
        public int id;
        public string name;
        public string location;
        public string phone;

        public CPupil(int id = 0, string name = null, string phone = null, string location = null)
        {
            this.id = id;
            this.name = name;
            this.phone = phone;
            this.location = location;
        }

        public CPupil next = null;
    }
}
