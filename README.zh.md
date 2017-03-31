

# 配置[多说](http://duoshuo.com/)
1. 登录管理后台
2. 进行相关设置
3. 在网页中设置域名即username和密钥
'''
<div class="comment">
    <!-- This id is used for indexing my loss comments forcedly -->
    <div class="ds-thread"
    {% if site.duoshuo_username == "weitushuo" %}
        data-thread-id="30ee51ec64c5e4f16fcc9d621e2f4093"
    {% else %}
    <!-- U can just use this key generated to index comments at page about -->
    <!--
        data-thread-key="{{site.duoshuo_username}}/about"
        -->
    {% endif %}
    <!--
    data-title="{{page.title}}"
    data-url="{{site.url}}/about/"> -->
    </div>
</div>
'''
