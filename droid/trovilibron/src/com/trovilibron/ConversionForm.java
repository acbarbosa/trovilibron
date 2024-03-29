package com.trovilibron;

import com.calatrava.CalatravaPage;
import com.calatrava.shell.WebViewActivity;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@CalatravaPage(name = "conversionForm")
public class ConversionForm extends WebViewActivity
{
  @Override
  protected String getPageName() {
    return "conversionForm";
  }

  @Override
  protected List<String> getEvents() {
    return Arrays.asList("selectedInCurrency", "selectedOutCurrency", "convert");
  }

  @Override
  protected List<String> getFields() {
    return Arrays.asList("in_amount", "in_currency", "out_amount", "out_currency");
  }
}
