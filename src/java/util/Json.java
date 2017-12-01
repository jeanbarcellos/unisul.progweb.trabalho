package util;

import com.google.gson.Gson;

/**
 * Classe Json
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 01/12/2017
 *
 * @package util
 *
 */
public class Json {

    private Gson gson = new Gson();

    public String toJson(Object objeto) {
        return gson.toJson(objeto);
    }

    public <T extends Object> T fromJson(String json, Class<T> classOfT) {
        return this.gson.fromJson(json, classOfT);
    }

    public static String encode(Object objeto) {
        Gson gson = new Gson();
        return gson.toJson(objeto);
    }

    public static String toJsonReturn(boolean status, String msg) {
        Gson gson = new Gson();
        JsonRetorno objeto = new JsonRetorno(status, msg);
        return gson.toJson(objeto);
    }

}
