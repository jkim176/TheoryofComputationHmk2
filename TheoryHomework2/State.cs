using System.Collections.Generic;

namespace TheoryHomework2
{
    class State
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public bool IsAcceptance { get; set; }

        public Dictionary<char, int> Transitions { get; set; } = new Dictionary<char, int>();

        public Dictionary<char, KeyValuePair<char,char>> StackTransitions { get; set; } = new Dictionary<char, KeyValuePair<char, char>>();
    }
}
