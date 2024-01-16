#include "NeoTypes++.hpp"

namespace neo
{
    bool memCompare(const void* Source1, const void* Source2, uint64 Size)
    {
        uint64 i;

        if (Source1 == NULL && Size != 0)
        {
            printf("memCompare(): NULL Source1 with non-zero Size\nParams: Source1: %p, Source2: %p, Size: %lld\n", Source1, Source2, Size);
            exit(1);
        }
        if (Source2 == NULL && Size != 0)
        {
            printf("memCompare(): NULL Source2 with non-zero Size\nParams: Source1: %p, Source2: %p, Size: %lld\n", Source1, Source2, Size);
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

    void* memCopy(const void* Source, uint64 Size)
    {
        void* result;

        if (Source == NULL && Size != 0)
        {
            printf("memCopy(): NULL Source with non-zero Size\nParams: Source: %p, Size: %lld\n", Source, Size);
            exit(1);
        }
        if (Size == 0)
        {
            return NULL;
        }

        if ((result = malloc(Size)) == NULL)
        {
            printf("memCopy(): Memory allocation failed\nParams: Source: %p, Size: %lld\n", Source, Size);
            exit(1);
        }

        memCopyTo(Source, result, Size);

        return result;
    }

    uint8 memCopyTo(const void* Source, void* Destination, uint64 Size)
    {
        uint64 i;

        if (Source == NULL && Size != 0)
        {
            printf("memCopyTo(): NULL Source with non-zero Size\nParams: Source: %p, Destination: %p, Size: %lld\n", Source, Destination, Size);
            exit(1);
        }
        if (Destination == NULL && Size != 0)
        {
            printf("memCopyTo(): NULL Destination with non-zero Size\nParams: Source: %p, Destination: %p, Size: %lld\n", Source, Destination, Size);
            exit(1);
        }
        if (Size == 0)
        {
            return 0;
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

    void* memLoad(const char* FilePath, uint64 Size)
    {
        void* result;

        if (FilePath == NULL && Size != 0)
        {
            printf("memLoad(): NULL FilePath with non-zero Size\nParams: FilePath: %s, Size: %lld\n", FilePath, Size);
            exit(1);
        }
        if (Size == 0)
        {
            return NULL;
        }

        result = malloc(Size);
        if (result == NULL)
        {
            printf("memLoad(): Memory allocation failed\nParams: FilePath: %s, Size: %lld\n", FilePath, Size);
            exit(1);
        }

        if (memLoadTo(FilePath, result, Size) != 0)
        {
            free(result);
            return NULL;
        }

        return result;
    }

    uint8 memLoadTo(const char* FilePath, void* Destination, uint64 Size)
    {
        FILE* file;

        if (FilePath == NULL && Size != 0)
        {
            printf("memLoadTo(): NULL FilePath with non-zero Size\nParams: FilePath: %s, Destination: %p, Size: %lld\n", FilePath, Destination, Size);
            exit(1);
        }
        if (Destination == NULL && Size != 0)
        {
            printf("memLoadTo(): NULL Destination with non-zero Size\nParams: FilePath: %s, Destination: %p, Size: %lld\n", FilePath, Destination, Size);
            exit(1);
        }
        if (Size == 0)
        {
            return 0;
        }

        file = fopen(FilePath, "r");
        if (file == NULL)
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

    uint8 memSave(const void* Source, uint64 Size, const char* FilePath)
    {
        FILE* file;

        if (Source == NULL && Size != 0)
        {
            printf("memSave(): NULL Source with non-zero Size\nParams: Source: %p, Size: %lld, FilePath: %s\n", Source, Size, FilePath);
            exit(1);
        }
        if (FilePath == NULL && Size != 0)
        {
            printf("memSave(): NULL FilePath with non-zero Size\nParams: Source: %p, Size: %lld, FilePath: %s\n", Source, Size, FilePath);
            exit(1);
        }
        if (Size == 0)
        {
            return 0;
        }

        file = fopen(FilePath, "w");
        if (file == NULL)
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
