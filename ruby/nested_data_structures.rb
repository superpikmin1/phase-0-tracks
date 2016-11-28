bedroom = {
	desk: {
		computer: {
			videogames: [
				"League of Legends", 
				"Counter-Strike", 
				"Rocket League"
				],
			social_media: [
				"FaceBook", 
				"Twitter",
				"MySpace"
			]
		},
		papers: [
			"homework", 
			"bills"
		],
		dishes: [
			"Last night's pasta", 
			"cup of orange juice"
		]
	},
	closet: [
		"shirts", 
		"jackets", 
		"pants", 
		"socks", 
		"shoes", 
		"old year books"
	],
	bed: [
		["comforter", "sheets"], 
		["pillow case", "feathers"]
	],
	floor: {
		dirty_clothes: ["dust mites", "dirt stains","food crumbs"],
		fallen_posters: ["bands", "inspirations"]
	}
}

p bedroom[:desk][:computer][:videogames][1]
# should print counter strike
p bedroom[:desk][:dishes][0]
#should print last nights pasta
p bedroom[:floor][:fallen_posters]
#should print bands and inspirations
p bedroom[:bed][1][1]
#should print pillow case
