# Adapted from https://github.com/Snausage0x45/KapeStrike/blob/main/Invoke-Kape-Remote.ps1
# Executing in non-static working folder
& "7za.exe" x KAPE.7z
# Default destination is sftp server (scs)
# https://ericzimmerman.github.io/KapeDocs/#!Pages\3.-Using-KAPE.md#sftpscp-switches
# Alternatives: s3, azure storage
& 'kape.exe' --tsource C: --target KapeTriage --tdest C:\temp\kapeOutput --vhdx C_KapeTriage_$env:COMPUTERNAME --scs "XXXX_ADD_IP_OR_HOSTNAME" --scu sftp --scpw XXXX_ADD_PASSWORD_XXXX --scd upload --tflush
