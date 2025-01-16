# Shell Script Bug: Premature Exit on Missing File

This repository demonstrates a common error in shell scripts where the script exits prematurely upon encountering a missing file in a loop.  The `bug.sh` script showcases the problem, while `bugSolution.sh` provides the corrected version.

The bug lies in the improper handling of file existence checks within the loop.  The script should ideally continue processing other files even if one or more files are missing.  The solution demonstrates how to correctly handle this scenario, allowing for robust processing of a list of files.
