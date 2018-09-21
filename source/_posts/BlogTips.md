---
title: 使用 Markdown 和 Hexo 写文章的贴士
---

## Markdown 基本语法
### 标题

标题用 `#` 表示，一级标题用一个，二级用两个，以此类推

### 加粗
**加粗** 用双星号包围所要加粗的内容。

### 斜体
*斜体* 用单星号包围所要斜体的内容。

### 图片
图片需要使用图片链接。
```
![](https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537527546424&di=2485aa3b96243f5f5e71f25641c9a5a2&imgtype=jpg&src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D3564877025%2C796183547%26fm%3D214%26gp%3D0.jpg)
```
则会显示图片
![](https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537527546424&di=2485aa3b96243f5f5e71f25641c9a5a2&imgtype=jpg&src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D3564877025%2C796183547%26fm%3D214%26gp%3D0.jpg)


注意，Hexo 的图片存储在 themes 的 img 目录下，需要先 deploy 到 GitHub 上，在得到图片，否则显示不出来。（这个有问题，可以再说。）

其他语法可以参见 https://coding.net/help/doc/project/markdown.html

## Hexo 使用说明

### 项目根目录
项目根目录是存放源码 /Fiona2013BlogRepo 的目录
```
xxxx/Fiona2013BlogRepo
```

### 文章编写目录
文章编写的目录在根目录的 `/source/_posts` 下，在这个目录下创建 `*.md` 文件并编辑文件即可（不会 markdown 也没关系，直接写也能生成网页）。
```
xxxx/Fiona2013BlogRepo/source/_posts
```

### 图片存储目录
#### 背景图存储目录
由于这个 Annie 主题代码里写死了，必须在主题的 `Annie/source/img/random` 这个目录下查找图片，所以，必须要把想显示的图片存在这个里面。
```
xxxx/Fiona2013BlogRepo/themes/Annie/source/img/random
```

并且要注意修改代码，把图片总数修改为 random 目录下的图片数量。

```
xxxxxx/Fiona2013BlogRepo/public/js/main.js:
   74    //generate a random img that pre_name 'from 0 to 110'
   75    var random_bg = Math.floor(Math.random() * 109 + 1);
   76:   //var bg = 'url(/img/random/' + random_bg + '.jpg)';
   77:   var bg = 'url(/img/random/' + random_bg + '.jpg)';
   78    $("header").css("background-image", bg);
   79   };

xxxxxx/Fiona2013BlogRepo/themes/Annie/source/js/main.js:
   74    //generate a random img that pre_name 'from 0 to 110'
   75    var random_bg = Math.floor(Math.random() * 109 + 1);
   76:   //var bg = 'url(/img/random/' + random_bg + '.jpg)';
   77:   var bg = 'url(/img/random/' + random_bg + '.jpg)';
   78    $("header").css("background-image", bg);
   79   };
```

## 部署与安装
### 安装 Node
到 https://nodejs.org/zh-cn/ 官网下载并安装 Node 和 npm

### 安装 Hexo
https://hexo.io/zh-cn/docs/
```
npm install -g hexo-cli
```

### 本地运行
在项目根目录有 `deploy.sh` 文件，在 terminal 中执行如下命令行，就可以在本地开启一个 Web 服务，访问 http://localhost:4000/ 就可以看到博客的网页效果呢。
```
sh deploy.sh
```

### 部署到 GitHub
执行如下命令行
```
hexo deploy
```

在没有配置 SSH Key 的情况下，可能需要输入 GitHub 账号和密码。