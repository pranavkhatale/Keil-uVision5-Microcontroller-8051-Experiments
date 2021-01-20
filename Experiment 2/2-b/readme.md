2-b: Transfer block of data from 8100H memory loaction to 8200H memory location externally

| Before Execution | | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Memory 1| D:0X8100 | 00 | 01 | 02 | 03 | 04 | 05 | 06 | 07 | 08 | 09 |
| Memory 2| D:0X8200 | 0A | 0B | 0C | 0D | 0E | 0F | 10 | 11 | 12 | 13 |

| After Execution | | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Memory 1| D:0X8100 | 00 | 01 | 02 | 03 | 04 | 05 | 06 | 07 | 08 | 09 |
| Memory 2| D:0X8200 | 00 | 01 | 02 | 03 | 04 | 05 | 06 | 07 | 08 | 09 |
