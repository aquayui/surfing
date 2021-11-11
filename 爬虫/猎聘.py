#需要下载对应的chorm版本驱动，将其放在python.exe同一目录下
#爬取猎聘聘网站
from time import sleep

from selenium import webdriver #操控浏览器
from selenium.webdriver.chrome.options import Options
#无头模式，且不用打开浏览器
# chrome_options = Options()
# chrome_options.add_argument("--headless")
# driver = webdriver.Chrome(options=chrome_options)
#打开浏览器，不用上面那个则打开这个
driver=webdriver.Chrome()#实例化浏览器对象

# url = f'https://www.liepin.com/zhaopin/?headId=9afdce3f0823d0246003e40be897a4c6&ckId=9afdce3f0823d0246003e40be897a4c6&currentPage=0'
# driver.get(url)
# driver.implicitly_wait(10)  # 等待浏览器数据加载完成
# sleep(50)
for i in range(1,1000):
    url = f'https://www.liepin.com/zhaopin/?headId=9afdce3f0823d0246003e40be897a4c6&ckId=9afdce3f0823d0246003e40be897a4c6&currentPage={i}'
    driver.get(url)
    driver.implicitly_wait(10)  # 等待浏览器数据加载完成
    list = driver.find_elements_by_css_selector('.content-left-section .left-list-box li')
    i=0
    for li in list:
        if i>=40:
            break
        try:
            title=li.find_element_by_css_selector('.job-title-box div').text
            address=li.find_element_by_css_selector('.job-dq-box .ellipsis-1').text
            salary=li.find_element_by_css_selector('.job-detail-header-box .job-salary').text
            company=li.find_element_by_css_selector('.job-company-info-box .company-name').text
            exp=li.find_elements_by_css_selector('.job-labels-box .labels-tag')[0].text
            education=li.find_elements_by_css_selector('.job-labels-box .labels-tag')[1].text
        except Exception as e:
            print(e)
        print(title,address,salary,company,exp,education)
        i=i+1
driver.quit()