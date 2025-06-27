/*
🔸Dart 變量:

  Dart 是一個強大的腳本類語言，可以不預先定義變量類型，自動會進行類型推斷。

  在 Dart 中定義變量可以透過 var 關鍵字，也可以透過具體類型來宣告變量。

  例如：

      var str = 'this is var';

      String str = 'this is var';

      int str = 123;


⚠️ 注意：
- 使用 var 宣告時，不需要也**不能**再寫明類型。
- 如果同時寫了 var 和類型會導致錯誤。

錯誤範例：
    var int a = 5; // ❌ 報錯：不可以 var 跟 int 並用


🔸Dart 常量：final 和 const 修飾符

  const：值不可變，一開始就必須指定（編譯期常量）。
  final：值只能指定一次，可以延遲到執行期再賦值（執行期常量）。

  👉 差異重點：
  - const：編譯階段就要確定值。
  - final：允許稍後（執行時）指定一次。

  如果你有一個「永遠不會改變的變量」，請使用 final 或 const 修飾，而不是使用 var 或其他變量類型。

  範例：

  final name = 'Bob';                // 無明確型別，自動推斷為 String
  final String nickname = 'Bobby';   // 明確指定型別為 String

  const bar = 1000000;               // 單位壓力（dynes/cm²）
  const double atm = 1.01325 * bar;  // 大氣壓強（標準常數）


🔸Dart 的命名規則：

1. 變量名稱必須由 數字、字母、下劃線（_）和美元符號（$）組成。

2. 注意：標識符（變量名）開頭不能是數字。

3. 標識符不能是 Dart 的保留字或關鍵字（如 if、while、var 等）。

4. Dart 中變量名稱區分大小寫，例如：
   age 和 Age 是不同的變量。
   ⚠️ 建議不要同時使用大小寫類似的變量，避免混淆。

5. 標識符（變量名稱）應具備**語意可讀性**：
   - 變量名稱：建議使用名詞，如 `userName`、`totalCount`
   - 方法名稱：建議使用動詞，如 `fetchData()`、`calculateSum()`


🔸Dart 關鍵字與保留字：

🔹 關鍵字（keywords）是 Dart 語言中有特殊語法功能的單字，不能作為變量名稱或函數名稱使用。

🔹 保留字（reserved words）是目前尚未使用但將來可能作為關鍵字的詞彙，也**不建議用作識別符**。

--------------------------
🔸 Dart 常用關鍵字如下：
--------------------------

控制流程：
- if, else, for, while, do, switch, case, default, continue, break, return

邏輯與比較：
- true, false, null, is, as

函數與類型：
- void, dynamic, var, final, const, late, new, this, super

異常處理：
- try, catch, throw, finally, rethrow, on

類別與繼承：
- class, extends, implements, abstract, with, mixin

函數與變數定義：
- typedef, Function, get, set, required

存取修飾與控制：
- static, external, factory, async, await, yield

--------------------------
🔸 Dart 保留字如下（目前未使用）：
--------------------------

- assert
- enum
- in
- import
- library
- part
- show
- hide
- native
- operator
- export
- is!
- await* / yield*
（部分在某些語境下實際已被使用）

📌 建議：
- 永遠不要用這些關鍵字或保留字作為變量名或函數名，否則會產生語法錯誤或難以閱讀的程式碼。

✅ 合法變數名稱範例：
- userName
- isActive
- count_1
- $tempValue

❌ 非法命名範例：
- if = 5;
- class = 'test';
- true = false;

📌整合
abstract   		as        		assert    		async     		await     
break      		case      		catch     		class     		const     
continue   		covariant 		default   		deferred  		do        
dynamic    		else      		enum      		export    		extends   
extension  		external  		factory   		false     		final     
finally    		for       		Function  		get       		hide      
if         		implements 		import    		in        		interface 
is         		late      		library   		mixin     		new       
null       		on        		operator  		out       		part      
rethrow    		return    		set       		show      		static    
super      		switch    		sync      		this      		throw     
true       		try       		typedef   		var       		void      
while      		with      		yield     
*/

