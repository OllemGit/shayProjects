private ["_mccdialog","_message","_messageFinal","_time","_ok"];
// By: Shay_gman
// Version: 1.1 (May 2012)
#define MCC_SANDBOX_IDD 1000
#define MCC_SANDBOX2_IDD 2000
#define MCC_SANDBOX3_IDD 3000
#define MCC_SANDBOX4_IDD 4000

#define mcc_playerConsole_IDD 2993
#define MCC_SaveLoadScreen_IDD 2992
#define MCC_playerConsoleLoading_IDD 2991

#define MCC_ConsoleLoadingText 9105

disableSerialization;
_mccdialog = findDisplay MCC_playerConsoleLoading_IDD;

_time = time + (3 + random 8);

while {_time > time && dialog} do {
	_message = "";
	_messageFinal = ["C","o","n","n","e","c","t","i","n","g",".",".",".",".","."];
	for "_i" from 0 to (count _messageFinal - 1) do {
		_message = _message + (_messageFinal select _i);
		ctrlSetText [MCC_ConsoleLoadingText, _message];
		sleep 0.05;
	};
};

closedialog 0; 
_ok = createDialog "MCC_playerConsole";


