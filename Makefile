all: create-script-folder modularize-script minify-script copy-swf lessify-style copy-fonts


include ../../build/modules.mk

MODULE = videojs

SOURCE_SCRIPT_FOLDER = dist/video-js
SOURCE_SCRIPT_FILE_PREFIX =
SOURCE_SCRIPT_FILE_NAME = video.dev
SOURCE_STYLE_FILE_PREFIX =
SOURCE_STYLE_FILE_NAME = video-js
TARGET_STYLE_LESS_CONVERTER = sed "s/url('font/url('@{foundry_uri}\/videojs/g"

copy-swf:
	cp ${SOURCE_SCRIPT_FOLDER}/video-js.swf ${TARGET_SCRIPT_FOLDER}/videojs.swf

copy-fonts:
	cp ${SOURCE_SCRIPT_FOLDER}/font/* ${TARGET_STYLE_FOLDER}/