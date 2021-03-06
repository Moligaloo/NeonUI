return {
	Control = {
		font = 'Lato-Regular.ttf:18',
		fontColor = 'white',
		borderWidth = 1,
		borderRadius = 2.5,
		width = 0,
		height = 0,
		color = 'blue'
	},

	Button = {
		super = 'Control',

		backgroundColor = '#000000',
		fontColor = function(button) return button.color .. 'TextColor' end,
		borderColor = '.color',
		width = 100,
		height = 30,

		hover = {
			fontColor = '#FFFFFF',
			backgroundColor = '.color'
		}
	},

	Label = {
		super = 'Control'
	},

	Icon = {
		super = 'Label',

		font = 'FontAwesome.otf:18'
	},

	Window = {
		super = 'Control',

		titleBarHeight = 30,
		width = 500,
		height = 500,
		borderColor = 'blue',
		backgroundColor = 'black',
	},

	Switch = {
		super = 'Control',
	},

	-- modified from https://github.com/Semantic-Org/Semantic-UI/blob/master/src/themes/default/globals/site.variables
	Colors = {
		red = '#DB2828',
		orange = '#F2711C',
		yellow = '#FBBD08',
		olive = '#B5CC18',
		green = '#21BA45',
		teal = '#00B5AD',
		blue = '#2185D0',
		violet = '#6435C9',
		purple = '#A333C8',
		pink = '#E03997',
		brown = '#A5673F',
		grey = '#767676',

		lightRed = '#FF695E',
		lightOrange = '#FF851B',
		lightYellow = '#FFE21F',
		lightOlive = '#D9E778',
		lightGreen = '#2ECC40',
		lightTeal = '#6DFFFF',
		lightBlue = '#54C8FF',
		lightViolet = '#A291FB',
		lightPurple = '#DC73FF',
		lightPink = '#FF8EDF',
		lightBrown = '#D67C1C',
		lightGrey = '#DCDDDE',
		lightBlack = '#545454',

		black = '#000000',
		offWhite = '#F9FAFB',
		darkWhite = '#F3F4F5',
		midWhite = '#DCDDDE',
		white = '#FFFFFF',

		redBackground = '#FFE8E6',
		orangeBackground = '#FFEDDE',
		yellowBackground = '#FFF8DB',
		oliveBackground = '#FBFDEF',
		greenBackground = '#E5F9E7',
		tealBackground = '#E1F7F7',
		blueBackground = '#DFF0FF',
		violetBackground = '#EAE7FF',
		purpleBackground = '#F6E7FF',
		pinkBackground = '#FFE3FB',
		brownBackground = '#F1E2D3',

		redTextColor = 'red',
		orangeTextColor = 'orange',
		yellowTextColor = '#B58105',
		oliveTextColor = '#8ABC1E',
		greenTextColor = '#1EBC30',
		tealTextColor = '#10A3A3',
		blueTextColor = 'blue',
		violetTextColor = 'violet',
		purpleTextColor = 'purple',
		pinkTextColor = 'pink',
		brownTextColor = 'brown',
	},

	-- modified from https://github.com/FortAwesome/Font-Awesome/blob/master/scss/_variables.scss
	Icons = {
		['500px'] = "\xEF\x89\xAE",
		['adjust'] = "\xEF\x81\x82",
		['adn'] = "\xEF\x85\xB0",
		['align-center'] = "\xEF\x80\xB7",
		['align-justify'] = "\xEF\x80\xB9",
		['align-left'] = "\xEF\x80\xB6",
		['align-right'] = "\xEF\x80\xB8",
		['amazon'] = "\xEF\x89\xB0",
		['ambulance'] = "\xEF\x83\xB9",
		['anchor'] = "\xEF\x84\xBD",
		['android'] = "\xEF\x85\xBB",
		['angellist'] = "\xEF\x88\x89",
		['angle-double-down'] = "\xEF\x84\x83",
		['angle-double-left'] = "\xEF\x84\x80",
		['angle-double-right'] = "\xEF\x84\x81",
		['angle-double-up'] = "\xEF\x84\x82",
		['angle-down'] = "\xEF\x84\x87",
		['angle-left'] = "\xEF\x84\x84",
		['angle-right'] = "\xEF\x84\x85",
		['angle-up'] = "\xEF\x84\x86",
		['apple'] = "\xEF\x85\xB9",
		['archive'] = "\xEF\x86\x87",
		['area-chart'] = "\xEF\x87\xBE",
		['arrow-circle-down'] = "\xEF\x82\xAB",
		['arrow-circle-left'] = "\xEF\x82\xA8",
		['arrow-circle-o-down'] = "\xEF\x80\x9A",
		['arrow-circle-o-left'] = "\xEF\x86\x90",
		['arrow-circle-o-right'] = "\xEF\x86\x8E",
		['arrow-circle-o-up'] = "\xEF\x80\x9B",
		['arrow-circle-right'] = "\xEF\x82\xA9",
		['arrow-circle-up'] = "\xEF\x82\xAA",
		['arrow-down'] = "\xEF\x81\xA3",
		['arrow-left'] = "\xEF\x81\xA0",
		['arrow-right'] = "\xEF\x81\xA1",
		['arrow-up'] = "\xEF\x81\xA2",
		['arrows'] = "\xEF\x81\x87",
		['arrows-alt'] = "\xEF\x82\xB2",
		['arrows-h'] = "\xEF\x81\xBE",
		['arrows-v'] = "\xEF\x81\xBD",
		['asterisk'] = "\xEF\x81\xA9",
		['at'] = "\xEF\x87\xBA",
		['automobile'] = "\xEF\x86\xB9",
		['backward'] = "\xEF\x81\x8A",
		['balance-scale'] = "\xEF\x89\x8E",
		['ban'] = "\xEF\x81\x9E",
		['bank'] = "\xEF\x86\x9C",
		['bar-chart'] = "\xEF\x82\x80",
		['bar-chart-o'] = "\xEF\x82\x80",
		['barcode'] = "\xEF\x80\xAA",
		['bars'] = "\xEF\x83\x89",
		['battery-0'] = "\xEF\x89\x84",
		['battery-1'] = "\xEF\x89\x83",
		['battery-2'] = "\xEF\x89\x82",
		['battery-3'] = "\xEF\x89\x81",
		['battery-4'] = "\xEF\x89\x80",
		['battery-empty'] = "\xEF\x89\x84",
		['battery-full'] = "\xEF\x89\x80",
		['battery-half'] = "\xEF\x89\x82",
		['battery-quarter'] = "\xEF\x89\x83",
		['battery-three-quarters'] = "\xEF\x89\x81",
		['bed'] = "\xEF\x88\xB6",
		['beer'] = "\xEF\x83\xBC",
		['behance'] = "\xEF\x86\xB4",
		['behance-square'] = "\xEF\x86\xB5",
		['bell'] = "\xEF\x83\xB3",
		['bell-o'] = "\xEF\x82\xA2",
		['bell-slash'] = "\xEF\x87\xB6",
		['bell-slash-o'] = "\xEF\x87\xB7",
		['bicycle'] = "\xEF\x88\x86",
		['binoculars'] = "\xEF\x87\xA5",
		['birthday-cake'] = "\xEF\x87\xBD",
		['bitbucket'] = "\xEF\x85\xB1",
		['bitbucket-square'] = "\xEF\x85\xB2",
		['bitcoin'] = "\xEF\x85\x9A",
		['black-tie'] = "\xEF\x89\xBE",
		['bold'] = "\xEF\x80\xB2",
		['bolt'] = "\xEF\x83\xA7",
		['bomb'] = "\xEF\x87\xA2",
		['book'] = "\xEF\x80\xAD",
		['bookmark'] = "\xEF\x80\xAE",
		['bookmark-o'] = "\xEF\x82\x97",
		['briefcase'] = "\xEF\x82\xB1",
		['btc'] = "\xEF\x85\x9A",
		['bug'] = "\xEF\x86\x88",
		['building'] = "\xEF\x86\xAD",
		['building-o'] = "\xEF\x83\xB7",
		['bullhorn'] = "\xEF\x82\xA1",
		['bullseye'] = "\xEF\x85\x80",
		['bus'] = "\xEF\x88\x87",
		['buysellads'] = "\xEF\x88\x8D",
		['cab'] = "\xEF\x86\xBA",
		['calculator'] = "\xEF\x87\xAC",
		['calendar'] = "\xEF\x81\xB3",
		['calendar-check-o'] = "\xEF\x89\xB4",
		['calendar-minus-o'] = "\xEF\x89\xB2",
		['calendar-o'] = "\xEF\x84\xB3",
		['calendar-plus-o'] = "\xEF\x89\xB1",
		['calendar-times-o'] = "\xEF\x89\xB3",
		['camera'] = "\xEF\x80\xB0",
		['camera-retro'] = "\xEF\x82\x83",
		['car'] = "\xEF\x86\xB9",
		['caret-down'] = "\xEF\x83\x97",
		['caret-left'] = "\xEF\x83\x99",
		['caret-right'] = "\xEF\x83\x9A",
		['caret-square-o-down'] = "\xEF\x85\x90",
		['caret-square-o-left'] = "\xEF\x86\x91",
		['caret-square-o-right'] = "\xEF\x85\x92",
		['caret-square-o-up'] = "\xEF\x85\x91",
		['caret-up'] = "\xEF\x83\x98",
		['cart-arrow-down'] = "\xEF\x88\x98",
		['cart-plus'] = "\xEF\x88\x97",
		['cc'] = "\xEF\x88\x8A",
		['cc-amex'] = "\xEF\x87\xB3",
		['cc-diners-club'] = "\xEF\x89\x8C",
		['cc-discover'] = "\xEF\x87\xB2",
		['cc-jcb'] = "\xEF\x89\x8B",
		['cc-mastercard'] = "\xEF\x87\xB1",
		['cc-paypal'] = "\xEF\x87\xB4",
		['cc-stripe'] = "\xEF\x87\xB5",
		['cc-visa'] = "\xEF\x87\xB0",
		['certificate'] = "\xEF\x82\xA3",
		['chain'] = "\xEF\x83\x81",
		['chain-broken'] = "\xEF\x84\xA7",
		['check'] = "\xEF\x80\x8C",
		['check-circle'] = "\xEF\x81\x98",
		['check-circle-o'] = "\xEF\x81\x9D",
		['check-square'] = "\xEF\x85\x8A",
		['check-square-o'] = "\xEF\x81\x86",
		['chevron-circle-down'] = "\xEF\x84\xBA",
		['chevron-circle-left'] = "\xEF\x84\xB7",
		['chevron-circle-right'] = "\xEF\x84\xB8",
		['chevron-circle-up'] = "\xEF\x84\xB9",
		['chevron-down'] = "\xEF\x81\xB8",
		['chevron-left'] = "\xEF\x81\x93",
		['chevron-right'] = "\xEF\x81\x94",
		['chevron-up'] = "\xEF\x81\xB7",
		['child'] = "\xEF\x86\xAE",
		['chrome'] = "\xEF\x89\xA8",
		['circle'] = "\xEF\x84\x91",
		['circle-o'] = "\xEF\x84\x8C",
		['circle-o-notch'] = "\xEF\x87\x8E",
		['circle-thin'] = "\xEF\x87\x9B",
		['clipboard'] = "\xEF\x83\xAA",
		['clock-o'] = "\xEF\x80\x97",
		['clone'] = "\xEF\x89\x8D",
		['close'] = "\xEF\x80\x8D",
		['cloud'] = "\xEF\x83\x82",
		['cloud-download'] = "\xEF\x83\xAD",
		['cloud-upload'] = "\xEF\x83\xAE",
		['cny'] = "\xEF\x85\x97",
		['code'] = "\xEF\x84\xA1",
		['code-fork'] = "\xEF\x84\xA6",
		['codepen'] = "\xEF\x87\x8B",
		['coffee'] = "\xEF\x83\xB4",
		['cog'] = "\xEF\x80\x93",
		['cogs'] = "\xEF\x82\x85",
		['columns'] = "\xEF\x83\x9B",
		['comment'] = "\xEF\x81\xB5",
		['comment-o'] = "\xEF\x83\xA5",
		['commenting'] = "\xEF\x89\xBA",
		['commenting-o'] = "\xEF\x89\xBB",
		['comments'] = "\xEF\x82\x86",
		['comments-o'] = "\xEF\x83\xA6",
		['compass'] = "\xEF\x85\x8E",
		['compress'] = "\xEF\x81\xA6",
		['connectdevelop'] = "\xEF\x88\x8E",
		['contao'] = "\xEF\x89\xAD",
		['copy'] = "\xEF\x83\x85",
		['copyright'] = "\xEF\x87\xB9",
		['creative-commons'] = "\xEF\x89\x9E",
		['credit-card'] = "\xEF\x82\x9D",
		['crop'] = "\xEF\x84\xA5",
		['crosshairs'] = "\xEF\x81\x9B",
		['css3'] = "\xEF\x84\xBC",
		['cube'] = "\xEF\x86\xB2",
		['cubes'] = "\xEF\x86\xB3",
		['cut'] = "\xEF\x83\x84",
		['cutlery'] = "\xEF\x83\xB5",
		['dashboard'] = "\xEF\x83\xA4",
		['dashcube'] = "\xEF\x88\x90",
		['database'] = "\xEF\x87\x80",
		['dedent'] = "\xEF\x80\xBB",
		['delicious'] = "\xEF\x86\xA5",
		['desktop'] = "\xEF\x84\x88",
		['deviantart'] = "\xEF\x86\xBD",
		['diamond'] = "\xEF\x88\x99",
		['digg'] = "\xEF\x86\xA6",
		['dollar'] = "\xEF\x85\x95",
		['dot-circle-o'] = "\xEF\x86\x92",
		['download'] = "\xEF\x80\x99",
		['dribbble'] = "\xEF\x85\xBD",
		['dropbox'] = "\xEF\x85\xAB",
		['drupal'] = "\xEF\x86\xA9",
		['edit'] = "\xEF\x81\x84",
		['eject'] = "\xEF\x81\x92",
		['ellipsis-h'] = "\xEF\x85\x81",
		['ellipsis-v'] = "\xEF\x85\x82",
		['empire'] = "\xEF\x87\x91",
		['envelope'] = "\xEF\x83\xA0",
		['envelope-o'] = "\xEF\x80\x83",
		['envelope-square'] = "\xEF\x86\x99",
		['eraser'] = "\xEF\x84\xAD",
		['eur'] = "\xEF\x85\x93",
		['euro'] = "\xEF\x85\x93",
		['exchange'] = "\xEF\x83\xAC",
		['exclamation'] = "\xEF\x84\xAA",
		['exclamation-circle'] = "\xEF\x81\xAA",
		['exclamation-triangle'] = "\xEF\x81\xB1",
		['expand'] = "\xEF\x81\xA5",
		['expeditedssl'] = "\xEF\x88\xBE",
		['external-link'] = "\xEF\x82\x8E",
		['external-link-square'] = "\xEF\x85\x8C",
		['eye'] = "\xEF\x81\xAE",
		['eye-slash'] = "\xEF\x81\xB0",
		['eyedropper'] = "\xEF\x87\xBB",
		['facebook'] = "\xEF\x82\x9A",
		['facebook-f'] = "\xEF\x82\x9A",
		['facebook-official'] = "\xEF\x88\xB0",
		['facebook-square'] = "\xEF\x82\x82",
		['fast-backward'] = "\xEF\x81\x89",
		['fast-forward'] = "\xEF\x81\x90",
		['fax'] = "\xEF\x86\xAC",
		['feed'] = "\xEF\x82\x9E",
		['female'] = "\xEF\x86\x82",
		['fighter-jet'] = "\xEF\x83\xBB",
		['file'] = "\xEF\x85\x9B",
		['file-archive-o'] = "\xEF\x87\x86",
		['file-audio-o'] = "\xEF\x87\x87",
		['file-code-o'] = "\xEF\x87\x89",
		['file-excel-o'] = "\xEF\x87\x83",
		['file-image-o'] = "\xEF\x87\x85",
		['file-movie-o'] = "\xEF\x87\x88",
		['file-o'] = "\xEF\x80\x96",
		['file-pdf-o'] = "\xEF\x87\x81",
		['file-photo-o'] = "\xEF\x87\x85",
		['file-picture-o'] = "\xEF\x87\x85",
		['file-powerpoint-o'] = "\xEF\x87\x84",
		['file-sound-o'] = "\xEF\x87\x87",
		['file-text'] = "\xEF\x85\x9C",
		['file-text-o'] = "\xEF\x83\xB6",
		['file-video-o'] = "\xEF\x87\x88",
		['file-word-o'] = "\xEF\x87\x82",
		['file-zip-o'] = "\xEF\x87\x86",
		['files-o'] = "\xEF\x83\x85",
		['film'] = "\xEF\x80\x88",
		['filter'] = "\xEF\x82\xB0",
		['fire'] = "\xEF\x81\xAD",
		['fire-extinguisher'] = "\xEF\x84\xB4",
		['firefox'] = "\xEF\x89\xA9",
		['flag'] = "\xEF\x80\xA4",
		['flag-checkered'] = "\xEF\x84\x9E",
		['flag-o'] = "\xEF\x84\x9D",
		['flash'] = "\xEF\x83\xA7",
		['flask'] = "\xEF\x83\x83",
		['flickr'] = "\xEF\x85\xAE",
		['floppy-o'] = "\xEF\x83\x87",
		['folder'] = "\xEF\x81\xBB",
		['folder-o'] = "\xEF\x84\x94",
		['folder-open'] = "\xEF\x81\xBC",
		['folder-open-o'] = "\xEF\x84\x95",
		['font'] = "\xEF\x80\xB1",
		['fonticons'] = "\xEF\x8A\x80",
		['forumbee'] = "\xEF\x88\x91",
		['forward'] = "\xEF\x81\x8E",
		['foursquare'] = "\xEF\x86\x80",
		['frown-o'] = "\xEF\x84\x99",
		['futbol-o'] = "\xEF\x87\xA3",
		['gamepad'] = "\xEF\x84\x9B",
		['gavel'] = "\xEF\x83\xA3",
		['gbp'] = "\xEF\x85\x94",
		['ge'] = "\xEF\x87\x91",
		['gear'] = "\xEF\x80\x93",
		['gears'] = "\xEF\x82\x85",
		['genderless'] = "\xEF\x88\xAD",
		['get-pocket'] = "\xEF\x89\xA5",
		['gg'] = "\xEF\x89\xA0",
		['gg-circle'] = "\xEF\x89\xA1",
		['gift'] = "\xEF\x81\xAB",
		['git'] = "\xEF\x87\x93",
		['git-square'] = "\xEF\x87\x92",
		['github'] = "\xEF\x82\x9B",
		['github-alt'] = "\xEF\x84\x93",
		['github-square'] = "\xEF\x82\x92",
		['gittip'] = "\xEF\x86\x84",
		['glass'] = "\xEF\x80\x80",
		['globe'] = "\xEF\x82\xAC",
		['google'] = "\xEF\x86\xA0",
		['google-plus'] = "\xEF\x83\x95",
		['google-plus-square'] = "\xEF\x83\x94",
		['google-wallet'] = "\xEF\x87\xAE",
		['graduation-cap'] = "\xEF\x86\x9D",
		['gratipay'] = "\xEF\x86\x84",
		['group'] = "\xEF\x83\x80",
		['h-square'] = "\xEF\x83\xBD",
		['hacker-news'] = "\xEF\x87\x94",
		['hand-grab-o'] = "\xEF\x89\x95",
		['hand-lizard-o'] = "\xEF\x89\x98",
		['hand-o-down'] = "\xEF\x82\xA7",
		['hand-o-left'] = "\xEF\x82\xA5",
		['hand-o-right'] = "\xEF\x82\xA4",
		['hand-o-up'] = "\xEF\x82\xA6",
		['hand-paper-o'] = "\xEF\x89\x96",
		['hand-peace-o'] = "\xEF\x89\x9B",
		['hand-pointer-o'] = "\xEF\x89\x9A",
		['hand-rock-o'] = "\xEF\x89\x95",
		['hand-scissors-o'] = "\xEF\x89\x97",
		['hand-spock-o'] = "\xEF\x89\x99",
		['hand-stop-o'] = "\xEF\x89\x96",
		['hdd-o'] = "\xEF\x82\xA0",
		['header'] = "\xEF\x87\x9C",
		['headphones'] = "\xEF\x80\xA5",
		['heart'] = "\xEF\x80\x84",
		['heart-o'] = "\xEF\x82\x8A",
		['heartbeat'] = "\xEF\x88\x9E",
		['history'] = "\xEF\x87\x9A",
		['home'] = "\xEF\x80\x95",
		['hospital-o'] = "\xEF\x83\xB8",
		['hotel'] = "\xEF\x88\xB6",
		['hourglass'] = "\xEF\x89\x94",
		['hourglass-1'] = "\xEF\x89\x91",
		['hourglass-2'] = "\xEF\x89\x92",
		['hourglass-3'] = "\xEF\x89\x93",
		['hourglass-end'] = "\xEF\x89\x93",
		['hourglass-half'] = "\xEF\x89\x92",
		['hourglass-o'] = "\xEF\x89\x90",
		['hourglass-start'] = "\xEF\x89\x91",
		['houzz'] = "\xEF\x89\xBC",
		['html5'] = "\xEF\x84\xBB",
		['i-cursor'] = "\xEF\x89\x86",
		['ils'] = "\xEF\x88\x8B",
		['image'] = "\xEF\x80\xBE",
		['inbox'] = "\xEF\x80\x9C",
		['indent'] = "\xEF\x80\xBC",
		['industry'] = "\xEF\x89\xB5",
		['info'] = "\xEF\x84\xA9",
		['info-circle'] = "\xEF\x81\x9A",
		['inr'] = "\xEF\x85\x96",
		['instagram'] = "\xEF\x85\xAD",
		['institution'] = "\xEF\x86\x9C",
		['internet-explorer'] = "\xEF\x89\xAB",
		['intersex'] = "\xEF\x88\xA4",
		['ioxhost'] = "\xEF\x88\x88",
		['italic'] = "\xEF\x80\xB3",
		['joomla'] = "\xEF\x86\xAA",
		['jpy'] = "\xEF\x85\x97",
		['jsfiddle'] = "\xEF\x87\x8C",
		['key'] = "\xEF\x82\x84",
		['keyboard-o'] = "\xEF\x84\x9C",
		['krw'] = "\xEF\x85\x99",
		['language'] = "\xEF\x86\xAB",
		['laptop'] = "\xEF\x84\x89",
		['lastfm'] = "\xEF\x88\x82",
		['lastfm-square'] = "\xEF\x88\x83",
		['leaf'] = "\xEF\x81\xAC",
		['leanpub'] = "\xEF\x88\x92",
		['legal'] = "\xEF\x83\xA3",
		['lemon-o'] = "\xEF\x82\x94",
		['level-down'] = "\xEF\x85\x89",
		['level-up'] = "\xEF\x85\x88",
		['life-bouy'] = "\xEF\x87\x8D",
		['life-buoy'] = "\xEF\x87\x8D",
		['life-ring'] = "\xEF\x87\x8D",
		['life-saver'] = "\xEF\x87\x8D",
		['lightbulb-o'] = "\xEF\x83\xAB",
		['line-chart'] = "\xEF\x88\x81",
		['link'] = "\xEF\x83\x81",
		['linkedin'] = "\xEF\x83\xA1",
		['linkedin-square'] = "\xEF\x82\x8C",
		['linux'] = "\xEF\x85\xBC",
		['list'] = "\xEF\x80\xBA",
		['list-alt'] = "\xEF\x80\xA2",
		['list-ol'] = "\xEF\x83\x8B",
		['list-ul'] = "\xEF\x83\x8A",
		['location-arrow'] = "\xEF\x84\xA4",
		['lock'] = "\xEF\x80\xA3",
		['long-arrow-down'] = "\xEF\x85\xB5",
		['long-arrow-left'] = "\xEF\x85\xB7",
		['long-arrow-right'] = "\xEF\x85\xB8",
		['long-arrow-up'] = "\xEF\x85\xB6",
		['magic'] = "\xEF\x83\x90",
		['magnet'] = "\xEF\x81\xB6",
		['mail-forward'] = "\xEF\x81\xA4",
		['mail-reply'] = "\xEF\x84\x92",
		['mail-reply-all'] = "\xEF\x84\xA2",
		['male'] = "\xEF\x86\x83",
		['map'] = "\xEF\x89\xB9",
		['map-marker'] = "\xEF\x81\x81",
		['map-o'] = "\xEF\x89\xB8",
		['map-pin'] = "\xEF\x89\xB6",
		['map-signs'] = "\xEF\x89\xB7",
		['mars'] = "\xEF\x88\xA2",
		['mars-double'] = "\xEF\x88\xA7",
		['mars-stroke'] = "\xEF\x88\xA9",
		['mars-stroke-h'] = "\xEF\x88\xAB",
		['mars-stroke-v'] = "\xEF\x88\xAA",
		['maxcdn'] = "\xEF\x84\xB6",
		['meanpath'] = "\xEF\x88\x8C",
		['medium'] = "\xEF\x88\xBA",
		['medkit'] = "\xEF\x83\xBA",
		['meh-o'] = "\xEF\x84\x9A",
		['mercury'] = "\xEF\x88\xA3",
		['microphone'] = "\xEF\x84\xB0",
		['microphone-slash'] = "\xEF\x84\xB1",
		['minus'] = "\xEF\x81\xA8",
		['minus-circle'] = "\xEF\x81\x96",
		['minus-square'] = "\xEF\x85\x86",
		['minus-square-o'] = "\xEF\x85\x87",
		['mobile'] = "\xEF\x84\x8B",
		['mobile-phone'] = "\xEF\x84\x8B",
		['money'] = "\xEF\x83\x96",
		['moon-o'] = "\xEF\x86\x86",
		['mortar-board'] = "\xEF\x86\x9D",
		['motorcycle'] = "\xEF\x88\x9C",
		['mouse-pointer'] = "\xEF\x89\x85",
		['music'] = "\xEF\x80\x81",
		['navicon'] = "\xEF\x83\x89",
		['neuter'] = "\xEF\x88\xAC",
		['newspaper-o'] = "\xEF\x87\xAA",
		['object-group'] = "\xEF\x89\x87",
		['object-ungroup'] = "\xEF\x89\x88",
		['odnoklassniki'] = "\xEF\x89\xA3",
		['odnoklassniki-square'] = "\xEF\x89\xA4",
		['opencart'] = "\xEF\x88\xBD",
		['openid'] = "\xEF\x86\x9B",
		['opera'] = "\xEF\x89\xAA",
		['optin-monster'] = "\xEF\x88\xBC",
		['outdent'] = "\xEF\x80\xBB",
		['pagelines'] = "\xEF\x86\x8C",
		['paint-brush'] = "\xEF\x87\xBC",
		['paper-plane'] = "\xEF\x87\x98",
		['paper-plane-o'] = "\xEF\x87\x99",
		['paperclip'] = "\xEF\x83\x86",
		['paragraph'] = "\xEF\x87\x9D",
		['paste'] = "\xEF\x83\xAA",
		['pause'] = "\xEF\x81\x8C",
		['paw'] = "\xEF\x86\xB0",
		['paypal'] = "\xEF\x87\xAD",
		['pencil'] = "\xEF\x81\x80",
		['pencil-square'] = "\xEF\x85\x8B",
		['pencil-square-o'] = "\xEF\x81\x84",
		['phone'] = "\xEF\x82\x95",
		['phone-square'] = "\xEF\x82\x98",
		['photo'] = "\xEF\x80\xBE",
		['picture-o'] = "\xEF\x80\xBE",
		['pie-chart'] = "\xEF\x88\x80",
		['pied-piper'] = "\xEF\x86\xA7",
		['pied-piper-alt'] = "\xEF\x86\xA8",
		['pinterest'] = "\xEF\x83\x92",
		['pinterest-p'] = "\xEF\x88\xB1",
		['pinterest-square'] = "\xEF\x83\x93",
		['plane'] = "\xEF\x81\xB2",
		['play'] = "\xEF\x81\x8B",
		['play-circle'] = "\xEF\x85\x84",
		['play-circle-o'] = "\xEF\x80\x9D",
		['plug'] = "\xEF\x87\xA6",
		['plus'] = "\xEF\x81\xA7",
		['plus-circle'] = "\xEF\x81\x95",
		['plus-square'] = "\xEF\x83\xBE",
		['plus-square-o'] = "\xEF\x86\x96",
		['power-off'] = "\xEF\x80\x91",
		['print'] = "\xEF\x80\xAF",
		['puzzle-piece'] = "\xEF\x84\xAE",
		['qq'] = "\xEF\x87\x96",
		['qrcode'] = "\xEF\x80\xA9",
		['question'] = "\xEF\x84\xA8",
		['question-circle'] = "\xEF\x81\x99",
		['quote-left'] = "\xEF\x84\x8D",
		['quote-right'] = "\xEF\x84\x8E",
		['ra'] = "\xEF\x87\x90",
		['random'] = "\xEF\x81\xB4",
		['rebel'] = "\xEF\x87\x90",
		['recycle'] = "\xEF\x86\xB8",
		['reddit'] = "\xEF\x86\xA1",
		['reddit-square'] = "\xEF\x86\xA2",
		['refresh'] = "\xEF\x80\xA1",
		['registered'] = "\xEF\x89\x9D",
		['remove'] = "\xEF\x80\x8D",
		['renren'] = "\xEF\x86\x8B",
		['reorder'] = "\xEF\x83\x89",
		['repeat'] = "\xEF\x80\x9E",
		['reply'] = "\xEF\x84\x92",
		['reply-all'] = "\xEF\x84\xA2",
		['retweet'] = "\xEF\x81\xB9",
		['rmb'] = "\xEF\x85\x97",
		['road'] = "\xEF\x80\x98",
		['rocket'] = "\xEF\x84\xB5",
		['rotate-left'] = "\xEF\x83\xA2",
		['rotate-right'] = "\xEF\x80\x9E",
		['rouble'] = "\xEF\x85\x98",
		['rss'] = "\xEF\x82\x9E",
		['rss-square'] = "\xEF\x85\x83",
		['rub'] = "\xEF\x85\x98",
		['ruble'] = "\xEF\x85\x98",
		['rupee'] = "\xEF\x85\x96",
		['safari'] = "\xEF\x89\xA7",
		['save'] = "\xEF\x83\x87",
		['scissors'] = "\xEF\x83\x84",
		['search'] = "\xEF\x80\x82",
		['search-minus'] = "\xEF\x80\x90",
		['search-plus'] = "\xEF\x80\x8E",
		['sellsy'] = "\xEF\x88\x93",
		['send'] = "\xEF\x87\x98",
		['send-o'] = "\xEF\x87\x99",
		['server'] = "\xEF\x88\xB3",
		['share'] = "\xEF\x81\xA4",
		['share-alt'] = "\xEF\x87\xA0",
		['share-alt-square'] = "\xEF\x87\xA1",
		['share-square'] = "\xEF\x85\x8D",
		['share-square-o'] = "\xEF\x81\x85",
		['shekel'] = "\xEF\x88\x8B",
		['sheqel'] = "\xEF\x88\x8B",
		['shield'] = "\xEF\x84\xB2",
		['ship'] = "\xEF\x88\x9A",
		['shirtsinbulk'] = "\xEF\x88\x94",
		['shopping-cart'] = "\xEF\x81\xBA",
		['sign-in'] = "\xEF\x82\x90",
		['sign-out'] = "\xEF\x82\x8B",
		['signal'] = "\xEF\x80\x92",
		['simplybuilt'] = "\xEF\x88\x95",
		['sitemap'] = "\xEF\x83\xA8",
		['skyatlas'] = "\xEF\x88\x96",
		['skype'] = "\xEF\x85\xBE",
		['slack'] = "\xEF\x86\x98",
		['sliders'] = "\xEF\x87\x9E",
		['slideshare'] = "\xEF\x87\xA7",
		['smile-o'] = "\xEF\x84\x98",
		['soccer-ball-o'] = "\xEF\x87\xA3",
		['sort'] = "\xEF\x83\x9C",
		['sort-alpha-asc'] = "\xEF\x85\x9D",
		['sort-alpha-desc'] = "\xEF\x85\x9E",
		['sort-amount-asc'] = "\xEF\x85\xA0",
		['sort-amount-desc'] = "\xEF\x85\xA1",
		['sort-asc'] = "\xEF\x83\x9E",
		['sort-desc'] = "\xEF\x83\x9D",
		['sort-down'] = "\xEF\x83\x9D",
		['sort-numeric-asc'] = "\xEF\x85\xA2",
		['sort-numeric-desc'] = "\xEF\x85\xA3",
		['sort-up'] = "\xEF\x83\x9E",
		['soundcloud'] = "\xEF\x86\xBE",
		['space-shuttle'] = "\xEF\x86\x97",
		['spinner'] = "\xEF\x84\x90",
		['spoon'] = "\xEF\x86\xB1",
		['spotify'] = "\xEF\x86\xBC",
		['square'] = "\xEF\x83\x88",
		['square-o'] = "\xEF\x82\x96",
		['stack-exchange'] = "\xEF\x86\x8D",
		['stack-overflow'] = "\xEF\x85\xAC",
		['star'] = "\xEF\x80\x85",
		['star-half'] = "\xEF\x82\x89",
		['star-half-empty'] = "\xEF\x84\xA3",
		['star-half-full'] = "\xEF\x84\xA3",
		['star-half-o'] = "\xEF\x84\xA3",
		['star-o'] = "\xEF\x80\x86",
		['steam'] = "\xEF\x86\xB6",
		['steam-square'] = "\xEF\x86\xB7",
		['step-backward'] = "\xEF\x81\x88",
		['step-forward'] = "\xEF\x81\x91",
		['stethoscope'] = "\xEF\x83\xB1",
		['sticky-note'] = "\xEF\x89\x89",
		['sticky-note-o'] = "\xEF\x89\x8A",
		['stop'] = "\xEF\x81\x8D",
		['street-view'] = "\xEF\x88\x9D",
		['strikethrough'] = "\xEF\x83\x8C",
		['stumbleupon'] = "\xEF\x86\xA4",
		['stumbleupon-circle'] = "\xEF\x86\xA3",
		['subscript'] = "\xEF\x84\xAC",
		['subway'] = "\xEF\x88\xB9",
		['suitcase'] = "\xEF\x83\xB2",
		['sun-o'] = "\xEF\x86\x85",
		['superscript'] = "\xEF\x84\xAB",
		['support'] = "\xEF\x87\x8D",
		['table'] = "\xEF\x83\x8E",
		['tablet'] = "\xEF\x84\x8A",
		['tachometer'] = "\xEF\x83\xA4",
		['tag'] = "\xEF\x80\xAB",
		['tags'] = "\xEF\x80\xAC",
		['tasks'] = "\xEF\x82\xAE",
		['taxi'] = "\xEF\x86\xBA",
		['television'] = "\xEF\x89\xAC",
		['tencent-weibo'] = "\xEF\x87\x95",
		['terminal'] = "\xEF\x84\xA0",
		['text-height'] = "\xEF\x80\xB4",
		['text-width'] = "\xEF\x80\xB5",
		['th'] = "\xEF\x80\x8A",
		['th-large'] = "\xEF\x80\x89",
		['th-list'] = "\xEF\x80\x8B",
		['thumb-tack'] = "\xEF\x82\x8D",
		['thumbs-down'] = "\xEF\x85\xA5",
		['thumbs-o-down'] = "\xEF\x82\x88",
		['thumbs-o-up'] = "\xEF\x82\x87",
		['thumbs-up'] = "\xEF\x85\xA4",
		['ticket'] = "\xEF\x85\x85",
		['times'] = "\xEF\x80\x8D",
		['times-circle'] = "\xEF\x81\x97",
		['times-circle-o'] = "\xEF\x81\x9C",
		['tint'] = "\xEF\x81\x83",
		['toggle-down'] = "\xEF\x85\x90",
		['toggle-left'] = "\xEF\x86\x91",
		['toggle-off'] = "\xEF\x88\x84",
		['toggle-on'] = "\xEF\x88\x85",
		['toggle-right'] = "\xEF\x85\x92",
		['toggle-up'] = "\xEF\x85\x91",
		['trademark'] = "\xEF\x89\x9C",
		['train'] = "\xEF\x88\xB8",
		['transgender'] = "\xEF\x88\xA4",
		['transgender-alt'] = "\xEF\x88\xA5",
		['trash'] = "\xEF\x87\xB8",
		['trash-o'] = "\xEF\x80\x94",
		['tree'] = "\xEF\x86\xBB",
		['trello'] = "\xEF\x86\x81",
		['tripadvisor'] = "\xEF\x89\xA2",
		['trophy'] = "\xEF\x82\x91",
		['truck'] = "\xEF\x83\x91",
		['try'] = "\xEF\x86\x95",
		['tty'] = "\xEF\x87\xA4",
		['tumblr'] = "\xEF\x85\xB3",
		['tumblr-square'] = "\xEF\x85\xB4",
		['turkish-lira'] = "\xEF\x86\x95",
		['tv'] = "\xEF\x89\xAC",
		['twitch'] = "\xEF\x87\xA8",
		['twitter'] = "\xEF\x82\x99",
		['twitter-square'] = "\xEF\x82\x81",
		['umbrella'] = "\xEF\x83\xA9",
		['underline'] = "\xEF\x83\x8D",
		['undo'] = "\xEF\x83\xA2",
		['university'] = "\xEF\x86\x9C",
		['unlink'] = "\xEF\x84\xA7",
		['unlock'] = "\xEF\x82\x9C",
		['unlock-alt'] = "\xEF\x84\xBE",
		['unsorted'] = "\xEF\x83\x9C",
		['upload'] = "\xEF\x82\x93",
		['usd'] = "\xEF\x85\x95",
		['user'] = "\xEF\x80\x87",
		['user-md'] = "\xEF\x83\xB0",
		['user-plus'] = "\xEF\x88\xB4",
		['user-secret'] = "\xEF\x88\x9B",
		['user-times'] = "\xEF\x88\xB5",
		['users'] = "\xEF\x83\x80",
		['venus'] = "\xEF\x88\xA1",
		['venus-double'] = "\xEF\x88\xA6",
		['venus-mars'] = "\xEF\x88\xA8",
		['viacoin'] = "\xEF\x88\xB7",
		['video-camera'] = "\xEF\x80\xBD",
		['vimeo'] = "\xEF\x89\xBD",
		['vimeo-square'] = "\xEF\x86\x94",
		['vine'] = "\xEF\x87\x8A",
		['vk'] = "\xEF\x86\x89",
		['volume-down'] = "\xEF\x80\xA7",
		['volume-off'] = "\xEF\x80\xA6",
		['volume-up'] = "\xEF\x80\xA8",
		['warning'] = "\xEF\x81\xB1",
		['wechat'] = "\xEF\x87\x97",
		['weibo'] = "\xEF\x86\x8A",
		['weixin'] = "\xEF\x87\x97",
		['whatsapp'] = "\xEF\x88\xB2",
		['wheelchair'] = "\xEF\x86\x93",
		['wifi'] = "\xEF\x87\xAB",
		['wikipedia-w'] = "\xEF\x89\xA6",
		['windows'] = "\xEF\x85\xBA",
		['won'] = "\xEF\x85\x99",
		['wordpress'] = "\xEF\x86\x9A",
		['wrench'] = "\xEF\x82\xAD",
		['xing'] = "\xEF\x85\xA8",
		['xing-square'] = "\xEF\x85\xA9",
		['y-combinator'] = "\xEF\x88\xBB",
		['y-combinator-square'] = "\xEF\x87\x94",
		['yahoo'] = "\xEF\x86\x9E",
		['yc'] = "\xEF\x88\xBB",
		['yc-square'] = "\xEF\x87\x94",
		['yelp'] = "\xEF\x87\xA9",
		['yen'] = "\xEF\x85\x97",
		['youtube'] = "\xEF\x85\xA7",
		['youtube-play'] = "\xEF\x85\xAA",
		['youtube-square'] = "\xEF\x85\xA6"
	}
}