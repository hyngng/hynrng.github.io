# frozen_string_literal: true

source "https://rubygems.org"

gemspec

group :test do
  gem "html-proofer", "~> 5.0"
end

# region 수정됨
gem "csv"
gem "base64"

gem "tzinfo"
gem "tzinfo-data"

gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

gem 'jekyll-redirect-from'
gem 'jekyll-polyglot', git: 'https://github.com/hynrng/jekyll-polyglot', branch: 'master'

# group :jekyll_plugins do
#   gem "jekyll-polyglot"
# end

# 아래 코드를 주석처리 해제하고, 원하는 버전을 4.3.3 자리에 작성한 뒤
# `bundle update jekyll` 명령어를 통해 jekyll 버전을 명시적으로 업데이트할 수 있음.
# gem "jekyll", "4.3.3"

# endregion 수정됨