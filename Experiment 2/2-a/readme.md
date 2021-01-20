2-a: Transfer block of data from 20H memory loaction to 30H memory location internally

| Before Execution | | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Memory 1| D:0X20 | 00 | 01 | 02 | 03 | 04 | 05 | 06 | 07 | 08 | 09 |
| Memory 2| D:0X30 | 0A | 0B | 0C | 0D | 0E | 0F | 10 | 11 | 12 | 13 |

| After Execution | | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Memory 1| D:0X20 | 00 | 01 | 02 | 03 | 04 | 05 | 06 | 07 | 08 | 09 |
| Memory 2| D:0X30 | 00 | 01 | 02 | 03 | 04 | 05 | 06 | 07 | 08 | 09 |
