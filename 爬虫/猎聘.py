#需要下载对应的chorm版本驱动，将其放在python.exe同一目录下
#爬取猎聘聘网站
from time import sleep
import pymysql
from selenium import webdriver #操控浏览器
from selenium.webdriver.chrome.options import Options
#无头模式，且不用打开浏览器
# chrome_options = Options()
# chrome_options.add_argument("--headless")
# driver = webdriver.Chrome(options=chrome_options)
#打开浏览器，不用上面那个则打开这个
driver=webdriver.Chrome()#实例化浏览器对象
provider="猎聘"#信息来源网站
conn = pymysql.connect(host="1.116.201.187", user="surfing", password="123456", database="surfing", charset="utf8")
# 得到一个可以执行SQL语句的光标对象
cursor = conn.cursor()

url = f'https://www.liepin.com/zhaopin/?headId=9afdce3f0823d0246003e40be897a4c6&ckId=9afdce3f0823d0246003e40be897a4c6&currentPage=0'
driver.get(url)
driver.implicitly_wait(10)  # 等待浏览器数据加载完成
sleep(50)
for i in range(1,1000):
    url = f'https://www.liepin.com/zhaopin/?headId=9afdce3f0823d0246003e40be897a4c6&ckId=9afdce3f0823d0246003e40be897a4c6&currentPage={i}'
    driver.get(url)
    driver.implicitly_wait(10)  # 等待浏览器数据加载完成
    list = driver.find_elements_by_css_selector('.content-left-section .left-list-box li')
    i=0
    for li in list:
        if i>=40:
            break
        job_name=li.find_element_by_css_selector('.job-title-box div').text
        try:
            location = li.find_element_by_css_selector('.job-dq-box .ellipsis-1').text
        except:
            location='null                 '
        salary=li.find_element_by_css_selector('.job-detail-header-box .job-salary').text
        company=li.find_element_by_css_selector('.job-company-info-box .company-name').text
        experience=li.find_elements_by_css_selector('.job-labels-box .labels-tag')[0].text
        education=li.find_elements_by_css_selector('.job-labels-box .labels-tag')[1].text
        try:
            job_type = li.find_elements_by_css_selector('.job-company-info-box .company-tags-box span')[0].text
        except:
            job_type='null'
        description=li.find_element_by_css_selector('.job-card-left-box .job-detail-box a').get_attribute('href')
        if judge_Internet(job_type):
            # 定义要执行的SQL语句
            sql = "INSERT INTO recruitment (provider,location,salary,experience,education,company_type,job_type,description,job_name,company,number,date) " \
                  "VALUES ('%s','%s','%s','%s','%s',null,'%s','%s','%s','%s',null,null);" % (
                      provider, location, salary, experience, education, job_type, description, job_name, company)
            try:
                # 执行SQL语句
                cursor.execute(sql)
                # 关闭光标对象
                conn.commit()
            except Exception as e:
                print(e)
        i=i+1
driver.quit()
cursor.close()
# 关闭数据库连接
conn.close()