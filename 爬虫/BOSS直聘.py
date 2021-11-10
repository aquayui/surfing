#需要下载对应的chorm版本驱动，将其放在python.exe同一目录下
#爬取BOSS直聘网站
from selenium import webdriver #操控浏览器
driver=webdriver.Chrome()#实例化浏览器对象
for i in range(1,1000):
    url=f'https://www.zhipin.com/c100010000/?page={i}&ka=0'
    driver.get(url)
    driver.implicitly_wait(10)  # 等待浏览器数据加载完成
    list = driver.find_elements_by_css_selector('.job-list li')
    for li in list:
        title = li.find_element_by_css_selector('.job-name a').text  # 标题
        area = li.find_element_by_css_selector('.job-area').text  # 地区
        company_name = li.find_element_by_css_selector('.info-company .company-text .name a').text  # 公司名字
        money = li.find_element_by_css_selector('.red').text  # 工资
        experience = li.find_element_by_css_selector('p').text  # 工作经验
        print(title, area, company_name, money, experience)
driver.quit()