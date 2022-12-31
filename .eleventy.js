module.exports = config => {

	config.addPassthroughCopy("src/META-INF")
	config.addPassthroughCopy("src/metadata.opf")
	config.addPassthroughCopy("src/mimetype")
	config.addPassthroughCopy("src/nav.xhtml")
	config.addPassthroughCopy("src/cover.jpg")
	config.addPassthroughCopy("src/titlepage.xhtml")

	return {

		dir: {
			input: "src",
			output: "dist"
		}
	}
}