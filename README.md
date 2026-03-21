I've made this script because it's so easy to forget Codesys virtual PLC password and so annoying to reset it manually.
This batch file deletes automatically the folders that could contain Codesys Control Win x64 credentials, so the service restarts automatically with a clean state and Codesys IDE asks for a new user configuration at first login.

The folders that gets deleted are the following:
"C:\ProgramData\CODESYS\CODESYSControlWinV3x64"
"C:\Program Files\CODESYS\CODESYSControlWinV3x64"
"C:\Program Files (x86)\CODESYS\CODESYSControlWinV3x64"
"C:\Windows\System32\config\systemprofile\AppData\Roaming\CODESYS\CODESYSControlWinV3x64"
"C:\Windows\System32\config\systemprofile\AppData\Local\CODESYS\CODESYSControlWinV3x64"

Use at your own risk and let me know if it works on your system.
