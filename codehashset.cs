using System;
using System.IO;
using System.Collections.Generic;

namespace codehashset
{
    class codehashset
    {
        static void lowu64()
        {
            DateTime iTime = DateTime.Now;

            HashSet<ulong> matriz = new HashSet<ulong>();

            using (StreamReader sr = new StreamReader("lowu64.txt"))
            {
                while (sr.Peek() >= 0)
                {
                    matriz.Add(ulong.Parse(sr.ReadLine()));
                }
            }

            DateTime eTime = DateTime.Now;

            Console.WriteLine("lowu64.txt");
            Console.WriteLine("duration: {0:F9}", (double)(eTime.Ticks - iTime.Ticks) / 10000000);
            Console.WriteLine("original length: 400000");
            Console.WriteLine("final length without repeated: {0:D}", matriz.Count);
        }

        static void highu64()
        {
            DateTime iTime = DateTime.Now;

            HashSet<ulong> matriz = new HashSet<ulong>();

            using (StreamReader sr = new StreamReader("highu64.txt"))
            {
                while (sr.Peek() >= 0)
                {
                    matriz.Add(ulong.Parse(sr.ReadLine()));
                }
            }

            DateTime eTime = DateTime.Now;

            Console.WriteLine("highu64.txt");
            Console.WriteLine("duration: {0:F9}", (double)(eTime.Ticks - iTime.Ticks) / 10000000);
            Console.WriteLine("original length: 400000");
            Console.WriteLine("final length without repeated: {0:D}", matriz.Count);
        }

        static void lowu32()
        {
            DateTime iTime = DateTime.Now;

            HashSet<uint> matriz = new HashSet<uint>();

            using (StreamReader sr = new StreamReader("lowu32.txt"))
            {
                while (sr.Peek() >= 0)
                {
                    matriz.Add(uint.Parse(sr.ReadLine()));
                }
            }

            DateTime eTime = DateTime.Now;

            Console.WriteLine("lowu32.txt");
            Console.WriteLine("duration: {0:F9}", (double)(eTime.Ticks - iTime.Ticks) / 10000000);
            Console.WriteLine("original length: 400000");
            Console.WriteLine("final length without repeated: {0:D}", matriz.Count);
        }

        static void highu32()
        {
            DateTime iTime = DateTime.Now;

            HashSet<uint> matriz = new HashSet<uint>();

            using (StreamReader sr = new StreamReader("highu32.txt"))
            {
                while (sr.Peek() >= 0)
                {
                    matriz.Add(uint.Parse(sr.ReadLine()));
                }
            }

            DateTime eTime = DateTime.Now;

            Console.WriteLine("highu32.txt");
            Console.WriteLine("duration: {0:F9}", (double)(eTime.Ticks - iTime.Ticks) / 10000000);
            Console.WriteLine("original length: 400000");
            Console.WriteLine("final length without repeated: {0:D}", matriz.Count);
        }

        static void Main()
        {
            lowu64();
            Console.WriteLine("");
            highu64();
            Console.WriteLine("");
            lowu32();
            Console.WriteLine("");
            highu32();
        }
    }
}
