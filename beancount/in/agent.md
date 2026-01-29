1. 我的账号数据都位于beancount/accounts
2. 可能有用的映射信息在此文件，如果账单里数据匹配到keyword，可以使用account，但你也可以根据自己的分析进行处理。

## 处理
1. 所有处理直接修改文件
2. 插入的数据需要按时间插入
3. 所有数据都是第一条为资产减少的account，第二条为资产增加的account
4. 新插入的数据，应该插入原本beancount文件对应时间里，整个bean文件按时间倒序排列
5. 尽量不要用other账号，是在无法区分是什么类别再用other
6. 处理的所有数据符合beancount格式
7. 如果accounts里表达不清晰的账号，你可以修改，添加。新增与修改账单account的需要符合accounts的信息
8. 所有数据插入后，需要在本文件中，查找是否有过度类似的数据（金额相同，信息类似，时间相同），如果完全相同直接去重，需要注意这种情况是否是我多次购买同一件商品。

## 特殊处理
1. 如果有出现 自动转入，单次转入，需要区分转入转出账号，自动转入，则忽略处理。
2. 蚂蚁财富-蚂蚁（杭州）基金销售有限公司 这种买入的数据你出现了重复记录的情况，记录的时候需要查看bean文件里是否有类似的数据（金钱类似，名字类似）
3. 涉及“支付宝还款”，“信用卡还款”的数据需要注意，一般都会是Liabilities 为资产增加
4. 有的转账数据，例如CEB转账支付宝，这种数据会在支付宝账单和CEB账单里都会有体现，需要根据时间，金额，账号于上下文查找，避免数据重复

## 不需要处理
- 交易关闭的数据
- 全额退款
- 退款成功（没有全额退款的需要处理）
- 转账收款到余额宝

## key-map
- 招商银行信用卡(2035)	Liabilities:CMBCreditCard:2035
- 花呗	Liabilities:Huabei
- 余额宝	Assets:AliPay:Balance
- Yu‘E Bao	Assets:AliPay:Balance
- 地铁	Expenses:Transport
- 中运交通	Expenses:Transport
- 基金管理	Income:Fund
- 光大银行	Assets:CEB:1027
- 招商银行(3229)	Assets:CMB:3229
- 零钱	Assets:WeChat
- 招商银行储蓄卡(3229)	Assets:CMB:3229
- 转账备注	Income:RedEnvelope
- 广发银行储蓄卡(1508)	Assets:CGB:41508
- 购票支付	Expenses:Transport
- 佛山公交	Expenses:Transport
- 话费充值	Expenses:Home:Phone
- 广发纳斯达克	Assets:AliPay:Funds

















