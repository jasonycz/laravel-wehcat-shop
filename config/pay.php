<?php

return [
    'alipay' => [
        'app_id' => '2016092100559090',
        'ali_public_key' => 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtkCcc2dnVOu84XS4LYGSPAEyvXP+Z7uT7nWXllaKJRdqI1xLYBwqu1uot5d9Vr0kKx1JJUxw8tkv1zRckO9YqBEGAgPDbnPa+VdFqMBhmVucIqjv5apLk4pJwTLEiH02q3pR5Gbt7hAHNWFTBSBGlpeF6p9HGV/4L1tul/+v2EIJplrixmy1TXyBlQAJP84YHpyMh2RmIbBgqVAx/wQZcSR8PUG8lsBiSAHE1FkFwMoU6Di2fUzjEndGEYBjHKPTBLjkpl2nZkUnyxaBMXyykr0sZg+zOQe5wEoyekF4Cp4dmT+d2OUv6W7A/KNATePJsjMKIzfNXON9NxbSstNKOwIDAQAB',
        'private_key' => 'MIIEpQIBAAKCAQEAtkCcc2dnVOu84XS4LYGSPAEyvXP+Z7uT7nWXllaKJRdqI1xLYBwqu1uot5d9Vr0kKx1JJUxw8tkv1zRckO9YqBEGAgPDbnPa+VdFqMBhmVucIqjv5apLk4pJwTLEiH02q3pR5Gbt7hAHNWFTBSBGlpeF6p9HGV/4L1tul/+v2EIJplrixmy1TXyBlQAJP84YHpyMh2RmIbBgqVAx/wQZcSR8PUG8lsBiSAHE1FkFwMoU6Di2fUzjEndGEYBjHKPTBLjkpl2nZkUnyxaBMXyykr0sZg+zOQe5wEoyekF4Cp4dmT+d2OUv6W7A/KNATePJsjMKIzfNXON9NxbSstNKOwIDAQABAoIBAQCoLZ8xby4PUyoM8mQyuepzrLdh0/PjTVkJJ0Im3NzFtYGf978mhVd5ZO+f2w8yR39kubWR0aQ4tOpMsGjq5bLuBCeDHG3vMsHSbRI+0qg9mCfQZAxb5nWvRGEjAvIQ8VrNiiafmcvdbrT4MUMm6823kUNmamx1ofWn3buET9G4wEez2+M3O4Rlcl7CjX9DGS+MqR4tZ70Aemcf64CqxY+0yMZJK0Nu+7vsXQh2XLLtFRCBZciiPU5/YUh+SWF+deiMXrFt1g6msNtwgy45OTpc49zax/i1SBhPoOyv0yEtVRsFEKNKtIPM6xoG0R7MUircClldxfpuyHTOy80FtaIhAoGBAOn1Jj7M/jPR5CbUqubZH576mOI4sLWyIS+tqoIubFrMMSK+zGEjICbEvcZ16h52im81LEWOLrlVHDmy+BK5dNHB7vZBCW5zQALJD2zgNbLB6nUELklrKh/iueG+9NeOmo6ypAoxQS2fE5XH0InR27kcqsyCnyYpykVzqUfjaSY/AoGBAMdsYJ4i69csW2WviNrgWvxOxAEtM56n6aVDszrr2Clo47mX/F+F2T+PJebANmloUgvGJ8/oTYUJMk9FT/J7OuVHbnSDvdx6iBtvc0PySgyBiVdUuHkbDodcD1t7Ag151j7rkgIszCDDOUqok39hbT0srpp71sbpIDZtzGo1hbUFAoGAQ3lNZ21NnvpYt448H8nc4cfaUdwRssVF5u9KLrNe0qzzOtcWMKmluyigpt0ZAWIkuL/4HbNM7GyMcGOaQiQ0ec5ZsbG+G5mni2YbScY8FmrwyIDFLK14f6uu+llNWeGp15/TyZC9AIBRcLApB6Z7nR6Ub9j4N1R0HqWl27LNf5cCgYEAp/jIVMpzPZVWEotMyZdJ69ToUVliblNegF5Ku+lk9FQt4+h5oXfbKicHtJnX+ubsnJA2fm9bxB+f6ZcnJMXZML/+8FL6+5eVxw4T13pgFrKRHSb2DsPUc/z9zn8IlpM1+19uZziWY04slo7xVcyZN3rIQsTmfjpkcJQBJsCYM4UCgYEAsjDBp1T0EI+zuoCQpBRYyDwkAbpvpehW6BjGhE2xfWBXO3UG2HZrDWjU4iiKEjbU7m2HcmOP/TeycA9sC/tdCk6HjzCHCKNH6nwr82SknkwCLNiQAJvHgfTDP97ZCJBPEclUGQxort2GJkBa4FuSAl5KsxMHe4vooc06lf0gOyk=',
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
