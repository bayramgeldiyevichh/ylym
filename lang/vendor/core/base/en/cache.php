<?php

return [
    'cache_management' => 'Keş dolandyryşy',
    'cache_commands' => 'Keş buýruklaryny arassalaň',
    'commands' => [
        'clear_cms_cache' => [
            'title' => 'CMS keşini arassalaň',
            'description' => 'CMS keş keşbini arassalaň: maglumat bazasynyň keşi, statiki bloklar ... Maglumat täzelenenden soň üýtgeşmeleri görmedik wagtyňyz bu buýrugy işlediň.',
            'success_msg' => 'Keş arassalandy',
        ],
        'refresh_compiled_views' => [
            'title' => 'Toplanan görnüşleri täzeläň',
            'description' => 'Döwrebap görünmek üçin düzülen görnüşleri arassalaň.',
            'success_msg' => 'Keş görnüşi täzelendi',
        ],
        'clear_config_cache' => [
            'title' => 'Sazlama keşini arassalaň',
            'description' => 'Önümçilik gurşawynda bir zat üýtgedeniňizde, konfigurasiýa keşini täzelemeli bolmagyňyz mümkin.',
            'success_msg' => 'Keş arassalanyldy',
        ],
        'clear_route_cache' => [
            'title' => 'Marşrut keşini arassalaň',
            'description' => 'Keş marşrutyny arassalaň.',
            'success_msg' => 'Marşrut keşi arassalandy',
        ],
        'clear_log' => [
            'title' => 'Gündeligi arassala',
            'description' => 'Ulgam gündelik faýllaryny arassalaň',
            'success_msg' => 'Ulgam gündeligi arassalandy',
        ],
    ],
];
