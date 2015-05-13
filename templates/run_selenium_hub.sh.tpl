#!/bin/sh

{% if selenium_chromedriver_enabled %}
ARGS="-Dwebdriver.chrome.driver=\"{{selenium_chromedriver_path}}/{{selenium_chromedriver_filename}}\""
{% else %}
ARGS=""
{% endif %}

java -jar {{selenium_install_path}} -role hub $ARGS
