def judge_Internet(job_type):
    job_types = ['互联网/电子商务', '计算机软件', '计算机服务(系统、数据服务、维修)','电子技术/半导体/集成电路'
            '互联网', '云计算', '通信/电信/网络设备','通信/电信运营、增值服务', '电子商务',
            '计算机硬件', 'VR/AR', '推荐引擎','大数据行业应用','互联网/电商','消费电子',
            '电子/芯片/半导体','IT服务', '游戏产业', '网络游戏','移动互联网','机器人',
            '电子设备','社交网络','人工智能','大数据', '数据服务商', '通信技术提供商',
            '通信业','智能硬件', 'O2O','工业自动化','人工智能芯片','仪器仪表','互联网金融',
            '计算机/网络设备', '自动驾驶', 'AI行业应用','互联网信贷融资', '游戏开发','C轮',
            '物联网', '企业服务软件', '网络安全', '云服务', '大数据营销',
            '金融/投资/证券','会计/审计','基金/证券/投资'
            ]

    if job_type in job_types:
        return True
    else:
        return False

def sort_Internet(job_type):
    software_types = ['计算机软件', '推荐引擎','游戏产业','网络游戏',
        '游戏开发','C轮','企业服务软件','移动医疗','VR/AR'
        ]

    support_types = ['计算机服务(系统、数据服务、维修)', 'IT服务','数据服务商'
        ]

    application_types = ['互联网/电子商务', '互联网','电子商务','大数据行业应用',
        '互联网/电商','移动互联网','社交网络','O2O','互联网金融','大数据营销',
        '金融/投资/证券','会计/审计','基金/证券/投资','大数据'
        ]

    hardware_types = ['电子技术/半导体/集成电路', '计算机硬件','电子/芯片/半导体',
        '电子设备','工业自动化','计算机/网络设备','仪器仪表','消费电子'
        ]

    communication_types = ['云计算', '通信/电信/网络设备','通信/电信运营、增值服务',
        '通信技术提供商','通信业','物联网','云服务'
        ]

    AI_types = ['人工智能', '智能硬件','人工智能芯片','自动驾驶','机器人'
        ]

    security_types = ['网络安全'
        ]

    if job_type in software_types:
        return '软件开发'
    elif job_type in support_types:
        return '技术支持'
    elif job_type in application_types:
        return '互联网应用'
    elif job_type in hardware_types:
        return '电子与硬件'
    elif job_type in communication_types:
        return '通信'
    elif job_type in AI_types:
        return '人工智能'
    elif job_type in security_types:
        return '网络信息安全'