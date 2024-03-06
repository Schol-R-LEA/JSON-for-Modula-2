IMPLEMENTATION MODULE JSON;

   FROM DynamicStrings IMPORT String;

   PROCEDURE CreateJSONBoolean(b: BOOLEAN): JSONValue;
   BEGIN
   END;

   PROCEDURE CreateJSONInteger(i: LONGINT): JSONValue;
   VAR
      val: JSONValue;

   BEGIN
      val.type := JSONType.Integer;
      val.i := i;
      RETURN val;
   END;

   PROCEDURE CreateJSONReal(r: LONGREAL): JSONValue;
   VAR
      val: JSONValue;

   BEGIN
      val.type := JSONType.Real;
      val.r := r;
      RETURN val;
   END;

   PROCEDURE CreateJSONString(s: String): JSONValue;
   VAR
      val: JSONValue;

   BEGIN
      val.type := JSONType.String;
      val.s := s;
      RETURN val;
   END;

   PROCEDURE JSONArrayAdd(VAR a: JSONArray, val: JSONValue);
   BEGIN
      IF a = NULL THEN
         a := NEW(JSONArray);
         a^.next := NULL;
         a^.element := val;
      ELSE
         (* recurse down the list *)
         JSONArrayAdd(a^.next, val);
      END;
   END;


   PROCEDURE Create(literal: String, value: JSONValue): JSONObject;
   VAR
      object: JSONObject;

   BEGIN
      object := NEW(JSONNode);
      object^.parent := NULL;
      object^.child := NULL;
      object^.literal := literal;
      object^.value = value;
      RETURN object;
   END;



   PROCEDURE Parent(obj: JSONObject): JSONObject; FORWARD;

   PROCEDURE Top(obj: JSONObject): JSONObject;
      

   BEGIN
   END;

   PROCEDURE Parent(obj: JSONObject): JSONObject;
   BEGIN
      RETURN obj^.parent;
   END;

   PROCEDURE Child(obj: JSONObject): JSONObject;
   BEGIN
      RETURN obj^.child;
   END;


   PROCEDURE Add(parent: JSONObject, obj: JSONObject);
   BEGIN
   END;

   PROCEDURE RemoveNext(parent: JSONObject);
      

   BEGIN
   END;

   PROCEDURE Literal(obj: JSONObject): String;
      

   BEGIN
   END;

   PROCEDURE Representation(obj: JSONObject): String;
      

   BEGIN
   END;

END JSON.