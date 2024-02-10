#include "NeoTypes++.hpp"

namespace neo
{
    bool memory::Compare(const void* Source1, const void* Source2, uint64 Size)
    {
        uint64 i;

        if (Source1 == NULL && Size != 0)
        {
            printf("neo::memCompare(): NULL Source1 with non-zero Size\nParams: Source1: %p, Source2: %p, Size: %lld\n", Source1, Source2, Size);
            exit(1);
        }
        if (Source2 == NULL && Size != 0)
        {
            printf("neo::memCompare(): NULL Source2 with non-zero Size\nParams: Source1: %p, Source2: %p, Size: %lld\n", Source1, Source2, Size);
            exit(1);
        }
        
        for (i = 0; i < Size / sizeof(uint64); i++)
        {
            if (((uint64*)Source1)[i] != ((uint64*)Source2)[i])
            {
                return false;
            }
        } 
        for (i *= sizeof(uint64); i < Size; i++)
        {
            if (((uint8*)Source1)[i] != ((uint8*)Source2)[i])
            {
                return false;
            }
        }

        return true;
    }

    uint8 memory::Swap(void* Source1, void* Source2, uint64 Size)
    {
        uint64 tmp64, i;
        uint8 tmp8;

        if (Source1 == NULL && Size != 0)
        {
            printf("neo::memSwap(): NULL Source1 with non-zero Size\nParams: Source1: %p, Source2: %p, Size: %lld\n", Source1, Source2, Size);
            exit(1);
        }
        if (Source2 == NULL && Size != 0)
        {
            printf("neo::memSwap(): NULL Source2 with non-zero Size\nParams: Source1: %p, Source2: %p, Size: %lld\n", Source1, Source2, Size);
            exit(1);
        }

        for (i = 0; i < Size / sizeof(uint64); i++)
        {
            tmp64 = ((uint64*)Source1)[i];
            ((uint64*)Source1)[i] = ((uint64*)Source2)[i];
            ((uint64*)Source2)[i] = tmp64;
        }
        for (i *= sizeof(uint64); i < Size; i++)
        {
            tmp8 = ((uint8*)Source1)[i];
            ((uint8*)Source1)[i] = ((uint8*)Source2)[i];
            ((uint8*)Source2)[i] = tmp8;
        }

        return 0;
    }

    void* memory::Copy(const void* Source, uint64 Size)
    {
        void* result;

        if (Source == NULL && Size != 0)
        {
            printf("neo::memCopy(): NULL Source with non-zero Size\nParams: Source: %p, Size: %lld\n", Source, Size);
            exit(1);
        }
        if (Size == 0)
        {
            return NULL;
        }

        if ((result = malloc(Size)) == NULL)
        {
            printf("neo::memCopy(): Memory allocation failed\nParams: Source: %p, Size: %lld\n", Source, Size);
            exit(1);
        }

        memory::CopyTo(Source, result, Size);

        return result;
    }

    uint8 memory::CopyTo(const void* Source, void* Destination, uint64 Size)
    {
        uint64 i;

        if (Source == NULL && Size != 0)
        {
            printf("neo::memCopyTo(): NULL Source with non-zero Size\nParams: Source: %p, Destination: %p, Size: %lld\n", Source, Destination, Size);
            exit(1);
        }
        if (Destination == NULL && Size != 0)
        {
            printf("neo::memCopyTo(): NULL Destination with non-zero Size\nParams: Source: %p, Destination: %p, Size: %lld\n", Source, Destination, Size);
            exit(1);
        }

        for (i = 0; i < Size / sizeof(uint64); i++)
        {
            ((uint64*)Destination)[i] = ((uint64*)Source)[i];
        }
        for (i *= sizeof(uint64); i < Size; i++)
        {
            ((uint8*)Destination)[i] = ((uint8*)Source)[i];
        }

        return 0;
    }

    void* memory::Load(const char* FilePath, uint64 Size)
    {
        void* result;

        if (FilePath == NULL)
        {
            printf("neo::memLoad(): NULL FilePath with non-zero Size\nParams: FilePath: %p, Size: %lld\n", FilePath, Size);
            exit(1);
        }
        if (Size == 0)
        {
            return NULL;
        }

        if ((result = malloc(Size)) == NULL)
        {
            printf("neo::memLoad(): Memory allocation failed\nParams: FilePath: %s, Size: %lld\n", FilePath, Size);
            exit(1);
        }

        if (memory::LoadTo(FilePath, result, Size) != 0)
        {
            free(result);
            return NULL;
        }

        return result;
    }

    uint8 memory::LoadTo(const char* FilePath, void* Destination, uint64 Size)
    {
        FILE* file;

        if (FilePath == NULL)
        {
            printf("neo::memLoadTo(): NULL FilePath with non-zero Size\nParams: FilePath: %p, Destination: %p, Size: %lld\n", FilePath, Destination, Size);
            exit(1);
        }
        if (Destination == NULL && Size != 0)
        {
            printf("neo::memLoadTo(): NULL Destination with non-zero Size\nParams: FilePath: %s, Destination: %p, Size: %lld\n", FilePath, Destination, Size);
            exit(1);
        }

        if ((file = fopen(FilePath, "r")) == NULL)
        {
            return 1;
        }

        for (uint64 i = 0; i < Size; i++)
        {
            ((uint8*)Destination)[i] = fgetc(file);
        }
        fclose(file);

        return 0;
    }

    uint8 memory::Save(const void* Source, uint64 Size, const char* FilePath)
    {
        FILE* file;

        if (Source == NULL && Size != 0)
        {
            printf("neo::memSave(): NULL Source with non-zero Size\nParams: Source: %p, Size: %lld, FilePath: %s\n", Source, Size, FilePath);
            exit(1);
        }
        if (FilePath == NULL)
        {
            printf("neo::memSave(): NULL FilePath with non-zero Size\nParams: Source: %p, Size: %lld, FilePath: %s\n", Source, Size, FilePath);
            exit(1);
        }

        if ((file = fopen(FilePath, "w")) == NULL)
        {
            return 1;
        }

        for (uint64 i = 0; i < Size; i++)
        {
            fputc(((uint8*)Source)[i], file);
        }
        fclose(file);

        return 0;
    }
}
