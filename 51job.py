import time

import requests
import re
import json
import pprint
import pymysql
from tools import judge_Internet, sort_Internet

import time
start = time.perf_counter()

for page in range(1 ,2001):
    time.sleep(1)
    print(f"----------------------------------正在爬取第{page}页----------------------------------------")
    url = f'https://search.51job.com/list/000000,000000,0000,00,9,99,+,2,{page}.html?lang=c&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&ord_field=0&dibiaoid=0&line=&welfare='

    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36",
        "Cookie": "guid=b7fe9adbe421bce1511716a9559e4ffb; nsearch=jobarea%3D%26%7C%26ord_field%3D%26%7C%26recentSearch0%3D%26%7C%26recentSearch1%3D%26%7C%26recentSearch2%3D%26%7C%26recentSearch3%3D%26%7C%26recentSearch4%3D%26%7C%26collapse_expansion%3D; search=jobarea%7E%60010000%7C%21ord_field%7E%600%7C%21recentSearch0%7E%60010000%A1%FB%A1%FA000000%A1%FB%A1%FA0000%A1%FB%A1%FA00%A1%FB%A1%FA99%A1%FB%A1%FA%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA9%A1%FB%A1%FA99%A1%FB%A1%FA%A1%FB%A1%FA0%A1%FB%A1%FApython%A1%FB%A1%FA2%A1%FB%A1%FA1%7C%21recentSearch1%7E%60280000%A1%FB%A1%FA000000%A1%FB%A1%FA0000%A1%FB%A1%FA00%A1%FB%A1%FA99%A1%FB%A1%FA%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA9%A1%FB%A1%FA99%A1%FB%A1%FA%A1%FB%A1%FA0%A1%FB%A1%FApython%A1%FB%A1%FA2%A1%FB%A1%FA1%7C%21recentSearch2%7E%60280000%A1%FB%A1%FA000000%A1%FB%A1%FA0000%A1%FB%A1%FA00%A1%FB%A1%FA99%A1%FB%A1%FA%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA9%A1%FB%A1%FA99%A1%FB%A1%FA%A1%FB%A1%FA0%A1%FB%A1%FAjava%A1%FB%A1%FA2%A1%FB%A1%FA1%7C%21recentSearch3%7E%60280000%A1%FB%A1%FA000000%A1%FB%A1%FA0000%A1%FB%A1%FA00%A1%FB%A1%FA99%A1%FB%A1%FA%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA9%A1%FB%A1%FA99%A1%FB%A1%FA%A1%FB%A1%FA0%A1%FB%A1%FAPython%A1%FB%A1%FA2%A1%FB%A1%FA1%7C%21recentSearch4%7E%60280000%A1%FB%A1%FA000000%A1%FB%A1%FA0000%A1%FB%A1%FA00%A1%FB%A1%FA99%A1%FB%A1%FA%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA99%A1%FB%A1%FA9%A1%FB%A1%FA99%A1%FB%A1%FA%A1%FB%A1%FA0%A1%FB%A1%FAPython+%BF%AA%B7%A2%A1%FB%A1%FA2%A1%FB%A1%FA1%7C%21; _ujz=MTU4NTE2MTY2MA%3D%3D; adv=adsnew%3D0%26%7C%26adsnum%3D2004282%26%7C%26adsresume%3D1%26%7C%26adsfrom%3Dhttps%253A%252F%252Fwww.baidu.com%252Fother.php%253Fsc.K60000jDVm9Pc7Tj8LM2-LdCrWQ-L5wDSp43NY5RS9uChm6-NCfVRs6ToKQEcQHRiGtBTVuAnhzZCNx-MBgMSFwTKBa_GdMEMvGUp41LcXAW7L584vhAx1TiNTIaHvT3N9qO0l8cqLLdXRwNG0QGnkE-6Pb6UMsumUU47UkFkwSo37Af_U3k0LRZY62YCoRC1h5AVbODhKjdvCPktGf21Va_Wv5D.DR_NR2Ar5Od66CHnsGtVdXNdlc2D1n2xx81IZ76Y_uQQr1F_zIyT8P9MqOOgujSOODlxdlPqKMWSxKSgqjlSzOFqtZOmzUlZlS5S8QqxZtVAOtIOtHOuS81wODSgL35SKsSXKMqOOgfESyOHjGLY51xVOeNH5exS88Zqq1ZgVm9udSnQr1__oodvgvnehUrPL72xZgjX1IIYJN9h9merzEuY60.TLFWgv-b5HDkrfK1ThPGujYknHb0THY0IAYqPH7JUvc0IgP-T-qYXgK-5H00mywxIZ-suHY10ZIEThfqPH7JUvc0ThPv5HD0IgF_gv-b5HDdnW0zPH61P100UgNxpyfqnHnsnW6Lnj00UNqGujYknjTkPHf3PsKVIZK_gv-b5HDkPHnY0ZKvgv-b5H00pywW5fKWThnqPWf4nH0%2526ck%253D5390.1.78.350.158.347.147.245%2526dt%253D1601729527%2526wd%253D51job%2526tpl%253Dtpl_11534_22836_18980%2526l%253D1520258370%2526us%253DlinkName%25253D%252525E6%252525A0%25252587%252525E5%25252587%25252586%252525E5%252525A4%252525B4%252525E9%25252583%252525A8-%252525E4%252525B8%252525BB%252525E6%252525A0%25252587%252525E9%252525A2%25252598%252526linkText%25253D%252525E3%25252580%25252590%252525E5%25252589%2525258D%252525E7%252525A8%2525258B%252525E6%25252597%252525A0%252525E5%252525BF%252525A751Job%252525E3%25252580%25252591-%25252520%252525E5%252525A5%252525BD%252525E5%252525B7%252525A5%252525E4%252525BD%2525259C%252525E5%252525B0%252525BD%252525E5%2525259C%252525A8%252525E5%25252589%2525258D%252525E7%252525A8%2525258B%252525E6%25252597%252525A0%252525E5%252525BF%252525A7%2521%252526linkType%25253D%26%7C%26; 51job=cenglish%3D0%26%7C%26"
    }
    response = requests.get(url=url, headers=headers)
    # print(response.text)
    html_data = re.findall('window\.__SEARCH_RESULT__ =(.*?)</script>',response.text)[0]
    # print(html_data)
    json_data = json.loads(html_data)['engine_jds']
    # print(json_data)
    # pprint.pprint(json_data)
    for _ in json_data:
        job_title = _['job_title']
        job_name = _['job_name']#具体工作岗位
        company_name = _['company_name']#公司名称
        company_type = _['companytype_text']#公司类型
        try:
            job_type = _['companyind_text'] #职业类别
        except:
            job_type = None
        if '招' in _['attribute_text'][1]: #前程无忧的招聘要求存储并不统一，特此处理
            experience = None      #工作经验
            education = None        #学历
            number = _['attribute_text'][1]#招聘人数
        elif '招' in _['attribute_text'][2]:
            experience = _['attribute_text'][1]
            education = None
            number = _['attribute_text'][2]
        else:
            experience = _['attribute_text'][1]
            education = _['attribute_text'][2]
            number = _['attribute_text'][3]
        salary = _['providesalary_text']#薪水
        location = _['workarea_text']#工作地点
        description = _['job_href']#岗位链接
        date = _['issuedate']#发布日期
        # print(job_title,job_name,company_name,company_type,job_type,experience,education,number,salary,location,description,date,sep = ' | ')

        if judge_Internet(job_type):
            job_class = sort_Internet(job_type)
            conn = pymysql.connect(host="1.116.201.187", user="surfing", password="123456", database="surfing",
                                   charset="utf8")
            # 得到一个可以执行SQL语句的光标对象
            cursor = conn.cursor()
            # 定义要执行的SQL语句
            sql = "INSERT INTO recruitment_1 (provider,location,salary,experience,education,company_type,job_type,description,job_name,company,number,date,job_class) VALUES ('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s');" % (
                '前程无忧',location,salary,experience,education,company_type,job_type,description,job_name,company_name,number,date,job_class)
            # 执行SQL语句
            try:
                cursor.execute(sql)
                conn.commit()
            except:
                print()
cursor.close()
# 关闭数据库连接
conn.close()

end = time.perf_counter()
print("运行耗时", end-start)