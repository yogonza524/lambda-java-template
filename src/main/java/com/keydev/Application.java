package com.keydev;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

public class Application implements RequestHandler<Object, String> {

  @Override
  public String handleRequest(Object input, Context context) {
    // TODO: Your code goes here
    return "Not implemented yet";
  }
}
