-- 名称
name = "火把增强"
-- 描述
description = "火把增强"
-- 作者
author = "css"
-- 版本
version = "0.1"
-- klei官方论坛地址，为空则默认是工坊的地址
forumthread = ""
-- modicon
icon = "modicon.tex"
-- dst兼容
dst_compatible = true
-- 是否是客户端mod
client_only_mod = false
-- 是否是所有客户端都需要安装
all_clients_require_mod = true
-- 饥荒api版本，固定填10
api_version = 10

-- mod的配置项
configuration_options = {{
    name = "torch_fuel",
    hover = "火把耐久度",
    options = {{
        description = "无限耐久",
        hover = "火把不掉耐久",
        data = 'infinite'
    }, {
        description = "10倍",
        hover = "火把耐久为原来的10倍",
        data = 75 * 10
    }, {
        description = "100倍",
        hover = "火把耐久为原来的100倍",
        data = 75 * 100
    }},
    default = 75
}}
