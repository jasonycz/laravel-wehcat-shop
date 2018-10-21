<?php

return [
    'alipay' => [
        'app_id' => '2016092100559090',
        'ali_public_key' => 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAs/TFWkANoHrG+GQlv9wq5NkbpLJKHl91putT93sxCc7SUMAZgwJRgd5F3xsSXYDw2v2+5hvUDsPswu8zvQ6grdDL1pLAbe1OyT3fubVwtJddYhifRE/glN293rouE/EEv4126srevB5qDlbuFpSal5ilnwtuOkqoOSXQgG8XrGapaoGJ7s+jNefAnLc1sbaSywGTPVsVkiCKukQ/EjOsh0vNxUr0TPy23olT+mPlMohWTPXKFWDhKUCN8pDsRnXBzAe+eyQaD4EHKYA2u+m6VeikF3kV+MFi0BAc2WUrQsrps56cZw7DSvgXW/uMSD7qMPYWqVSOz7S58JZWWvgelQIDAQAB',
        'private_key' => 'MIIEpAIBAAKCAQEAy1ZKVOr9aTK9kVfJCZuIO9k06Mp/VNBvxKQC2BlJI66G5jaKVkcnulopgstCwlUbUhlIhRtYacQONxldZHXo+BOEcd2z0VtswgetFUcypnd84jYTKW/jdwCu5fqfot2IcIte06qXu8rVMwr/+N21uG3yGkJLU30pnFbVS9HAnhIRtMUcTdqmRUhfkkJvGXS2sm6TA9DCg38mSu1/AVtK1UT7BVNoBMcNlGyxlDL3N5IYBmwIfvNw7m1B69ZorC2Dv/4q+/nOCUow2p2RPNS9c3wslV1lOrAQL3yenwVhkxCwPvtoST9Raj29yuvIbDrtPhPM/INmL6GCL7xK8qJr9wIDAQABAoIBAEa/BSm6gOTjJJW3J1lSZfn8vq3oFplZ1ClkryCk24+wn3rlqwgNxcLOr/az5cxbdCACb/rv4rkZ36BIEPhtFduKXuCHNJM47gQsS4pFtVe55xeFnPEj3s5+zFtz8armzRvrQdj/V7+c+MTDpP/fk+RRTJTaT/8CY0Hj7F5u4kecfvjyPtLZ+VmU+gXIigTcoelcZZBEEVtShnF+SO/4f++UG94+DPLq08KkNCHNtrKtMaQ9WXfuTGorVehMHH3Rhx2Hamp/MVyPjuaoZMf2r+Dlux+5AnGGab/76cDJtD+qHkzcUaehctEy0t/SqB7ZxpytajOLYp5Zobtzlr2cjYECgYEA63MkuxjKmiXe08cHCSMsK1YtlCYhtHTwdJhqZM3KQSxw4DPwdYsUtOCFgbdnoyBs0aK9ck84DhaWZ7/tyfT4U/vMpwTL8dBCuYyPcsGzItwElyXZOJhTV5Nn4ToLUDVGpzaSQxSUsGLK2GLYB/28668btSE0rastvqaxqBY+vhcCgYEA3RWgBeV0JVI+r3zLFbHysYKUZwX+QUgb1/tBZYhFHwj0T2yRdXZPAGs95XMDrs0GjdhMPZziYpdDjVCku29xqupninSuDX1vy020LIiFGZ6cp8OsTE+hpCCE/b1/TJuIt2xkZtb/bvLzwoFpJUGhQ+IMmz9pr7fkU11Utdf5TSECgYAHbuIo+fZjeXCYdP8W3cJmN9lGhRGpVcvFko5BUnHhLtr9aQZdX5+uuivc1YJzFvH4iE+8zR1y7GmhKuEB8Dbqx9dFKpSZtL52hyZ8M/tIzXNjpjE+ZSi0ahXseV2kEZqCaumhLoQnMWc//5bcYblWI3gXds3n8bCHBVI0gUdHzwKBgQCp+GMzxUl7G/UHk8jKoCl24W5Ymln0NIz7iranaZHCn2681TordU6dgtVuXvNY41WDneRXhhLiO2r67SII3FAmV9pMrxHVWzektNOtXTP/E1ta+2uuq5YZCctVDOgerID6i8HQ8sAku3I+eqGsu/1QpCyO+ry1FIrcsKdcunN3IQKBgQDXlM7hClJbgAVgP4kAB65kXxJPoqhAGCIG7zN1J6AYY+vOFUjri0OLxnWgnR109aFAs2/EEErTobVRX267ihToZaBQY+TRmtzSHSvfdWMbhRr2+e3nll3pjq3SyWQqG1cTn/p7HX3l5b7ChMg4NcL6dPMYOtr1EI/OajnRHTyXmQ==',
        'log' => [
            'file' => storage_path('logs/alipay.log'),
        ],
    ],

    'wechat' => [
        'app_id' => '',
        'mch_id' => '',
        'key' => '',
        'cert_client' => '',
        'cert_key' => '',
        'log' => [
            'file' => storage_path('logs/wechat_pay.log'),
        ],
    ],
];
