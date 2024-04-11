package com.yupi.yuapiclientsdk.client;

import cn.hutool.core.util.RandomUtil;
import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.http.HttpUtil;
import cn.hutool.json.JSONUtil;
import com.yupi.yuapiclientsdk.model.User;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

import static com.yupi.yuapiclientsdk.utils.SignUtils.genSign;

/**
 * 调用第三方接口的客户端
 *
 * @author Sun
 */
public class YuApiClient {

	public String accessKey;
	public String secretKey;

	public YuApiClient(String accessKey, String secretKey) {
		this.accessKey = accessKey;
		this.secretKey = secretKey;
	}

	public String getNameByGet(String name) {
		// 可以单独传入http参数，这样参数会自动做URL编码，拼接在URL中
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("name", name);
		String request = HttpUtil.get("http://localhost:8123/api/name", paramMap);
		System.out.println(request);
		return request;
	}

	public String getNameByPost(String name) {
		// 可以单独传入http参数，这样参数会自动做URL编码，拼接在URL中
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("name", name);
		String request = HttpUtil.post("http://localhost:8123/api/name", paramMap);
		System.out.println(request);
		return request;
	}


	private Map<String, String> getHeaderMap(String body) {

		Map<String, String> hashMap = new HashMap<>();
		hashMap.put("access-key", accessKey);
		// 禁止直接发送密码
//		hashMap.put("secret-key",secretKey);
		hashMap.put("nonce", RandomUtil.randomNumbers(100));
		hashMap.put("body", body);
		hashMap.put("timestamp", String.valueOf(System.currentTimeMillis() / 4));
		hashMap.put("sign", genSign(body, secretKey));
		return hashMap;
	}

	public String getUserNameByPost(User user) {
		String json = JSONUtil.toJsonStr(user);
		HttpResponse httpResponse = HttpRequest.post("http://localhost:8123/api/user/name")
				.charset(StandardCharsets.UTF_8)
				.addHeaders(getHeaderMap(json))
				.body(json)
				.execute();
		System.out.println(httpResponse.getStatus());
		String result = httpResponse.body();
		System.out.println(result);
		return result;
	}
}