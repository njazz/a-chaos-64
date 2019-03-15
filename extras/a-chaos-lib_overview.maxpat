{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 504.0, 83.0, 581.0, 635.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-31",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 510.0, 472.0, 27.0 ],
					"presentation_rect" : [ 60.0, 510.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "64-bit mac built by Volker Böhm\ncomments: \"no bugs fixed yet, just made all objects work in 64-bit mode. might do a proper release somewhat later.\""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 540.0, 179.0, 17.0 ],
					"style" : "",
					"text" : "https://cycling74.com/forums/chaos-library"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 480.0, 428.0, 17.0 ],
					"style" : "",
					"text" : "a chaotic set of max objects built in 2004 by André Sier, mostly all from Richard Dudas' Chaos Collection."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 465.0, 100.0, 17.0 ],
					"style" : "",
					"text" : "André Sier 2004"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 24.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 15.0, 267.0, 33.0 ],
					"style" : "",
					"text" : "A-Chaos Lib Overview"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 300.0, 405.0, 89.0, 22.0 ],
					"style" : "",
					"text" : "a-verhulst.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 300.0, 375.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "a-torus.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 300.0, 345.0, 79.0, 22.0 ],
					"style" : "",
					"text" : "a-stein1.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 300.0, 315.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "a-stein.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 300.0, 285.0, 83.0, 22.0 ],
					"style" : "",
					"text" : "a-rossler.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "float", "float", "float", "float", "float" ],
					"patching_rect" : [ 300.0, 255.0, 119.0, 22.0 ],
					"style" : "",
					"text" : "a-navier-stokes.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "float", "float", "float", "float", "float" ],
					"patching_rect" : [ 300.0, 225.0, 129.0, 22.0 ],
					"style" : "",
					"text" : "a-navier-stokes.e.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 300.0, 195.0, 94.0, 22.0 ],
					"style" : "",
					"text" : "a-lyapunov.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 300.0, 165.0, 80.0, 22.0 ],
					"style" : "",
					"text" : "a-lorenz.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 300.0, 135.0, 90.0, 22.0 ],
					"style" : "",
					"text" : "a-lorenz.e.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 300.0, 105.0, 91.0, 22.0 ],
					"style" : "",
					"text" : "a-logistic1.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 300.0, 75.0, 84.0, 22.0 ],
					"style" : "",
					"text" : "a-logistic.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 60.0, 375.0, 70.0, 22.0 ],
					"style" : "",
					"text" : "a-jong.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 60.0, 345.0, 76.0, 22.0 ],
					"style" : "",
					"text" : "a-ikeda.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 60.0, 315.0, 84.0, 22.0 ],
					"style" : "",
					"text" : "a-henonf.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 60.0, 285.0, 81.0, 22.0 ],
					"style" : "",
					"text" : "a-henon.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "float", "float", "float" ],
					"patching_rect" : [ 60.0, 255.0, 119.0, 22.0 ],
					"style" : "",
					"text" : "a-henon-heilles.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 60.0, 225.0, 80.0, 22.0 ],
					"style" : "",
					"text" : "a-ginger.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 60.0, 195.0, 95.0, 22.0 ],
					"style" : "",
					"text" : "a-fibonacci.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 60.0, 165.0, 83.0, 22.0 ],
					"style" : "",
					"text" : "a-duffing.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 60.0, 135.0, 81.0, 22.0 ],
					"style" : "",
					"text" : "a-collatz.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 60.0, 105.0, 82.0, 22.0 ],
					"style" : "",
					"text" : "a-clifford.mxo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 60.0, 75.0, 77.0, 22.0 ],
					"style" : "",
					"text" : "a-baker.mxo"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "a-baker.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-clifford.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-collatz.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-duffing.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-fibonacci.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-ginger.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-henon-heilles.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-henon.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-henonf.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-ikeda.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-jong.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-logistic.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-logistic1.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-lorenz.e.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-lorenz.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-lyapunov.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-navier-stokes.e.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-navier-stokes.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-rossler.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-stein.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-stein1.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-torus.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "a-verhulst.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
