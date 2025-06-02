# archetypes/default.md
# hugo new kaggle/house-price-predict.md  ## use for create a new article for the target section(in this line is "kaggle").
---
title: "{{ .Section | title }} - {{ replace .Name "-" " " | title }}"
date: {{ .Date }}
lastmod: {{ .Date }}
draft: false
slug: "{{ .Name }}"
tags: []
categories: ["{{ .Section }}"]
description: ""
author: "Archy Tseng"
series: []
series_order: ""
---
