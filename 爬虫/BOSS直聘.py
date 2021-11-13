#需要下载对应的chorm版本驱动，将其放在python.exe同一目录下
#爬取BOSS直聘网站
from selenium import webdriver #操控浏览器
import pymysql
from selenium.webdriver.chrome.options import Options

provider="BOSS直聘"#信息来源网站

driver=webdriver.Chrome()#实例化浏览器对象
#连接数据库
conn = pymysql.connect(host="1.116.201.187", user="surfing", password="123456", database="surfing", charset="utf8")
# 得到一个可以执行SQL语句的光标对象
cursor = conn.cursor()


for i in range(1,1000):
    url=f'https://www.zhipin.com/c100010000/?page={i}&ka=0'
    driver.get(url)
    driver.implicitly_wait(10)  # 等待浏览器数据加载完成
    list = driver.find_elements_by_css_selector('.job-list li')
    for li in list:
        job_name = li.find_element_by_css_selector('.job-name a').text  #职业
        location = li.find_element_by_css_selector('.job-area').text  # 地区
        company = li.find_element_by_css_selector('.info-company .company-text .name a').text  # 公司名字
        salary = li.find_element_by_css_selector('.red').text  # 工资
        experience,education = li.find_element_by_css_selector('p').get_attribute('innerHTML').split('<em class="vline"></em>')
        job_type=li.find_element_by_css_selector('.company-text p a').text
        description="https://www.zhipin.com"+li.find_element_by_css_selector('.primary-wrapper div').get_attribute('href')
        # 定义要执行的SQL语句
        sql = "INSERT INTO recruitment (provider,location,salary,experience,education,company_type,job_type,description,job_name,company,number,date) " \
              "VALUES ('%s','%s','%s','%s','%s',null,'%s','%s','%s','%s',null,null);" % (
                  provider,location, salary, experience, education, job_type, description, job_name, company)
        try:
            # 执行SQL语句
            cursor.execute(sql)
            # 关闭光标对象
            conn.commit()
        except Exception as e:
            print(e)
cursor.close()
# 关闭数据库连接
conn.close()
driver.quit()