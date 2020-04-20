# Python中如何读取SAS数据文件

- pd.read_sas
- pyreadstat.read_sas7bdat
- sas7bdat库



## 1. pandas.read_sas

> pandas.read_sas**(***filepath_or_buffer***,** *format=None***,** *index=None***,** *encoding=None***,** *chunksize=None***,** *iterator=False***)**

读取sas数据文件时，会因sas和python数据编码格式不统一，时间格式定义不一致等问题，经常爆出OutOfBoundsDatetime等错误，如：

> OutOfBoundsDatetime: cannot convert input 20176872.0 with the unit 'd'

有一些错误无法使用参数进行调节，因此需要一些容错性较高的库来做数据读取。



## 2. pyreadstat库



## 3. sas7bdat库





## 参考资料

1. [How to Read SAS Files in Python with Pandas](https://www.marsja.se/how-to-read-sas-files-in-python-with-pandas/)
2. [解决python 读取sas7bdat文件乱码问题](https://blog.csdn.net/hhq2lcl/article/details/85295208)