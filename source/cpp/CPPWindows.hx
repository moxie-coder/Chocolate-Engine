package cpp;

#if cpp
#if windows
@:headerCode ('
#include <windows.h>
#include <winuser.h>
#include <iostream>
')

class CPPWindows
{
    @:functionCode('
    HWND window = getActiveWindow();
    ')
    public static function getHWNDWindow(){
        return null;
    }

    @:functionCode('
    unsigned long long dedicatedRAM = 0;
    GetPhysicallyInstalledSystemMemory(dedicatedRAM);
    return dedicatedRAM / 1024;
    ')
    public static function getRAM():UInt64 {
        return 0;
    }
}
#end
#end