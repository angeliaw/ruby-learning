
### RVM
http://www.rvm.io/

1. 安装rvm
 \curl -sSL https://get.rvm.io | bash -s stable
用于帮你安装Ruby环境，帮你管理多个Ruby环境，帮你管理你开发的每个Ruby应用使用机器上哪个Ruby环境。Ruby环境不仅仅是Ruby本身，还包括依赖的第三方Ruby插件。都由RVM管理。

2. 查看当前已安装ruby版本
```
	rvm list 
```

3. RVM自动探测当前系统列出可用ruby版本
```
    rvm list remote
```


### RubyGems
RubyGems是一个方便而强大的Ruby程序包管理器（ package manager），它将一个Ruby应用程序打包到一个gem里，作为一个安装单元。无需安装，最新的Ruby版本已经包含RubyGems了

### Gem
Gem是封装起来的Ruby应用程序或代码库。 
使用gem sources 查看rubygems网址，有时候链接不稳定。 
注：在终端使用的gem命令，是指通过RubyGems管理Gem包。

### 用阿里的gem源
```
gem sources --remove https://rubygems.org/ && gem sources -a https://ruby.taobao.org/ && gem sources -l
```

### Gemfile
Gemfile
Gemfile.lock
定义你的应用依赖哪些第三方包，bundle根据该配置去寻找这些包。

### Bundle
相当于多个RubyGems批处理运行。在配置文件gemfile里说明你的应用依赖哪些第三方包，自动帮你下载安装多个包，并且会下载这些包依赖的包。

Bundler maintains a consistent environment for ruby applications. It tracks an application's code and the rubygems it needs to run, so that an application will always have the exact gems (and versions) that it needs to run.
安装
```
gem install bundler
```
常用命令
```
bundle install #会先检查Gemfile.lock文件以及里边的相关依赖，然后为本地系统安装Gemfile.lock文件中指定的版本，接着去检查Gemfile中有而Gemfile.lock中没有的，然后安装。bundle install 不会去检查相关源中Gem版本的更新。

bundle update  #会去相应的源检查Gemfile里gem的更新，然后对比Gemfile.lock文件，如果Gemfile里没有指定版本或是指定是>=的版本，就会去相应的源下载并安装新版本的gem，然后更新Gemfile.lock文件。

```