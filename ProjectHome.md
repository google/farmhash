FarmHash is a successor to CityHash, and includes many of the same tricks and techniques, several of them taken from Austin Appleby’s MurmurHash.

We want FarmHash to be fast and easy for developers to use in datacenters, but in phones, tablets, and PCs too.  So, yes, we’ve improved on CityHash64 and CityHash32 and so on.  But we’re also catering to the case where you simply want a fast, robust hash function for hash tables, and it need not be the same on every platform.  To that end, we provide sample code that has one interface harboring multiple platform-specific implementations.

Over time, we plan to expand FarmHash to include hash functions for integers, tuples, and other data. Initially, the focus is on string hashing.

On CPUs with all the necessary machine instructions, about six different hash functions can contribute to FarmHash's lineup.  In some cases we've made significant performance gains over CityHash by using newer instructions that are now commonly available. However, we've also squeezed out some more speed in other ways, so the vast majority of programs using CityHash should gain at least a bit when switching to FarmHash.