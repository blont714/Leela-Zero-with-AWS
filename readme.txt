Lizzie Version 0.5 - Windows x64 GPU

INSTALLATION
	Lizzie requires Java 8 or higher to run. Please install it from https://java.com, if you do not already have it.


USAGE
	Open Lizzie.jar (either double click it, or run the command 'java -jar Lizzie.jar' to view console output / troubleshooting). Must have followed the INSTALLATION steps above.

	Hold down X while the program is running to see a list of controls.

	The first run of the program may take a while to set up, as Leela Zero sets up the quick tuning. Feel free to replace the leelaz_opencl_tuning it creates with your own tuning. When Leela Zero finishes setting up, the board will display Leelaz's analysis.


CUSTOMIZATION
	The generated file config.txt contains various settings which you can change. A description of each setting:
		"automatically-download-latest-network": set this to true to automatically check for a new network on startup of Lizzie, and give the user the option to download it.
		"max-analyze-time-minutes": the maximum amount of time which pondermode analysis will run before terminating.
		"analyze-update-interval-centisec": the 'framerate' of updates sent by Leela Zero, measured in centiseconds. Example: 100 would give 1 Leela Zero update per second; 10 would give 10 Leela Zero updates per second.
		"max-game-thinking-time-seconds": the maximum amount of time Leela Zero will think before playing a move, in play mode (reached by pressing Enter).
		"weights": the name of the network file to use. Must be in quotes ("").
		"engine-start-location": the directory where the engine-command will be run. This would typically be the directory you have Leela Zero in.
		"engine-command": the command used to start Leela Zero. For advanced users: some users prefer to connect via SSH to a more powerful machine, by changing this setting.
		"print-comms": whether or not to print commands and outputs from Leela Zero.

		"shadows-enabled": whether or not shadows are enabled.
		"board-color": the color of the board if "fancy-board" is disabled.
		"shadow-size": the percentage size of the shadows. 100% is the default/intended value, but this may be customized if you wish. If you want to disable shadows, DON'T set this to 0; set shadows-enabled to false.
		"fancy-board": whether or not to draw the board as an image or as a uniform color ("board-color").
		"show-variation-graph": whether or not to show the variation graph by default (the right-side panel).
	    "win-rate-always-black": whether or not winrates show from the perspective of the current player, or from the black player.
	    "confirm-exit": whether or not you would like Lizzie to remind you to save your SGF file upon exiting.
	    "handicap-instead-of-winrate": whether or not you would like winrate displayed as a percentage or as a number of handicap stones worth of advantage. This feature is experimental.
	    "large-subboard": whether or not you would like the subboard displayed in the lower left to be larger (this takes up space for other UI components).
	    "show-move-number": show move numbers by default.
	    "show-next-moves": show next moves by default.
	    "show-leelaz-variation": show Leela Zero variation by default.
	    "show-subboard": show the subboard by default.
	    "theme": deprecated. You can ignore this setting.
	    "fancy-stones": whether or not to draw stones as images or as simple circles.
	    "show-best-moves": highlight best moves by default.
	    "board-size": the size of the board; this feature is a work in progress, and the Leela Zero engine currently will not work with non-19 size boards. You can ignore this setting.

	You can change the background / stone images / board image by replacing the files in the assets folder. Make sure you keep the same name of each file.

	Updating the network: by default, Lizzie 0.5 comes with LZ#145 (15 blocks). To update the network, set the "automatically-download-latest-network" config setting to true, and start Lizzie. If this is too slow, you may alternatively manually replace the [network.gz] file with your own, downloaded from zero.sjeng.org; make sure to give it the same filename and same filename extension as specified in the "weights" config setting.


Please report bugs and make feature requests at https://github.com/featurecat/lizzie/issues

You can view the source code for this open source project at https://github.com/featurecat/lizzie
