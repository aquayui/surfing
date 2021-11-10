#需要下载对应的chorm版本驱动，将其放在python.exe同一目录下
#爬取BOSS直聘网站
from selenium import webdriver #操控浏览器
driver=webdriver.Chrome()#实例化浏览器对象
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
        except Exception as e:
            print(e)
        print(title)
        i=i+1
driver.quit()