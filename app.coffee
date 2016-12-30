# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Vinci"
	twitter: ""
	description: ""


# default
Framer.Defaults.Layer.borderRadius = 10
bg = new BackgroundLayer
	backgroundColor: "white"

# page content setup
contentY = Screen.height * 0.3
d_width = Screen.width
d_height = Screen.height
page_num = 5

allPosts = []

# page scrollPage
post_page = new PageComponent
	y: contentY
	width: d_width
	height: d_height
	x: Align.center()
	scrollVertical: false


post_color = ["7cb6f8","f8c47c","87e196","f391e1","87dee1"]

for i in [0...page_num]
	post = new Layer
		width: d_width
		height: d_height
		parent: post_page.content
		backgroundColor: post_color[i]
		x: d_width * i
	
	post_cover = new Layer
		parent: post
		width: d_width
		height: 500
		image: Utils.randomImage()
	allPosts.push(post)

print allPosts.length




# category
c_width = Screen.width /2 
c_inset = ( Screen.width - c_width ) / 2
c_margin = 40
c_height = 160

titles = ["title1","title2","title3","title4","title5"]



all_titles = []

title_page = new PageComponent
	width: Screen.width
	height: c_height
	x: Align.center()
	y: c_margin
	scrollVertical: false
	contentInset: 
		left: c_inset
		right: c_inset
	

for i in [0...titles.length]
	print  "the title is #{i}"
	title = new Layer
		parent: title_page.content
		width: c_width
		html: titles[i]
		opacity: 0.5
		x: (c_width + 40) * i 
		backgroundColor: "transparent"
		style: 
			fontSize: "100px"
			lineHeight: "160px"
			textAlign: "center"
			letterSpacing: "6px"
			color: "black"
	all_titles.push(title)
		



post_page.onChange "currentPage" ,->
	index = post_page.currentPage.index - 1
	title_page.scrollToLayer(all_titles[index])
	
	
	
	
# 	title_page.scrollToLayer(Alltitles[2])
	

	
	


