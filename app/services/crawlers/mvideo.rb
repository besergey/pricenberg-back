module Crawlers
  module Mvideo
    REQUEST_HEADERS = {
      'authority': 'www.mvideo.ru',
      'accept': 'application/json',
      'accept-language': 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7',
      'content-type': 'application/json',
      'cookie': 'afUserId=e0c2f027-f4e8-4f06-831d-1fbbf702ac0c-p; __lhash_=879496fa6f59ef498200bb8e32e5313a; MVID_AB_TOP_SERVICES=1; MVID_ACTOR_API_AVAILABILITY=true; MVID_ALFA_PODELI_NEW=true; MVID_BLACK_FRIDAY_ENABLED=true; MVID_CART_AVAILABILITY=true; MVID_CATALOG_STATE=1; MVID_CHECKOUT_STORE_SORTING=true; MVID_CITY_ID=CityCZ_2446; MVID_CREDIT_AVAILABILITY=true; MVID_CREDIT_SERVICES=true; MVID_CRITICAL_GTM_INIT_DELAY=3000; MVID_FILTER_CODES=true; MVID_FILTER_TOOLTIP=1; MVID_FLOCKTORY_ON=true; MVID_GEOLOCATION_NEEDED=true; MVID_GIFT_KIT=true; MVID_GLP_GLC=2; MVID_GTM_ENABLED=011; MVID_INTERVAL_DELIVERY=true; MVID_IS_NEW_BR_WIDGET=true; MVID_KLADR_ID=6100000100000; MVID_LAYOUT_TYPE=1; MVID_LP_SOLD_VARIANTS=3; MVID_MCLICK=true; MVID_MINDBOX_DYNAMICALLY=true; MVID_MINI_PDP=true; MVID_NEW_ACCESSORY=true; MVID_NEW_LK_CHECK_CAPTCHA=true; MVID_NEW_LK_OTP_TIMER=true; MVID_NEW_MBONUS_BLOCK=true; MVID_PROMO_CATALOG_ON=true; MVID_RECOMENDATION=true; MVID_REGION_ID=2; MVID_REGION_SHOP=S903; MVID_SERVICES=111; MVID_SP=true; MVID_TIMEZONE_OFFSET=3; MVID_TYP_CHAT=true; MVID_WEB_SBP=true; SENTRY_ERRORS_RATE=0.1; SENTRY_TRANSACTIONS_RATE=0.5; MVID_ENVCLOUD=prod1; _gid=GA1.2.1255535314.1686866633; _ym_uid=1686862879684066926; _ym_d=1686866641; _ym_isad=1; SMSError=; authError=; flocktory-uuid=e1632fcf-a285-4fe4-9c05-f5f98fae5500-2; tmr_lvid=696cc87d002e08150feaa3be17de55df; tmr_lvidTS=1686862881826; advcake_track_id=70c7ab3f-94ec-e3cc-51c2-7894c4902d31; advcake_session_id=739576dc-1981-a649-481d-5091f8fb6ea2; gdeslon.ru.__arc_domain=gdeslon.ru; gdeslon.ru.user_id=e574aef8-8ea4-4a7c-95a8-be183138a69d; AF_SYNC=1686866649737; __hash_=3f539889dd609efce75d3f6c0e99acce; mindboxDeviceUUID=74978b87-07f3-4bd7-9de7-ea0c5bb2edae; directCrm-session=%7B%22deviceGuid%22%3A%2274978b87-07f3-4bd7-9de7-ea0c5bb2edae%22%7D; _sp_ses.d61c=*; _ga=GA1.2.368882451.1686866633; tmr_detect=1%7C1686874705643; _dc_gtm_UA-1873769-1=1; _dc_gtm_UA-1873769-37=1; cfidsgib-w-mvideo=fhfL5U7n/cXJ1LaCjA+FVppMdKSS2TKb+qtHoNMB9KKlvhz6g/U89xgd6/923IW8WRBF/sgg3lskoOzI6SAW+Yk0CS9S3uXN6+EvD5+wsuCsvwc515wkKn1BS3MIgDcrlRTSjVm2vpNY8lk6gaZjoeJcFV2N94uc7IeWO44=; gsscgib-w-mvideo=PPgbluWl2fa1ab/WTUbnbMxnFRkhFqpsyxZrp/l8dLsQW1ie0IOncHFwXopWec7RnTRf89wZdOCRH+SPIA41Qn3iygGdGPdDve797ZV1kJKipA/ZgY3fJ7cDzxH1bczwZ3qCXGpTbZIfR1y0ZElI1u8qu31p6hpHuBPwXUlA1i6S8JRq4REQol8jcnUaQcM4rI1lCmo/RFfsGcrf2QI8FsYS2yvF7HRXaplyw/Gr3pfNS0EUORahb7kS5KG1Ak8=; gsscgib-w-mvideo=PPgbluWl2fa1ab/WTUbnbMxnFRkhFqpsyxZrp/l8dLsQW1ie0IOncHFwXopWec7RnTRf89wZdOCRH+SPIA41Qn3iygGdGPdDve797ZV1kJKipA/ZgY3fJ7cDzxH1bczwZ3qCXGpTbZIfR1y0ZElI1u8qu31p6hpHuBPwXUlA1i6S8JRq4REQol8jcnUaQcM4rI1lCmo/RFfsGcrf2QI8FsYS2yvF7HRXaplyw/Gr3pfNS0EUORahb7kS5KG1Ak8=; _sp_id.d61c=1f1dbdb9-1757-4323-89d4-33054bb3cf0f.1686866633.2.1686874846.1686868088.04fdf5a7-db49-4204-bcc6-f4da011d2f38.bbd00c84-87ff-420a-8c82-74d023a94f28.f266cb7b-7097-45e0-b075-88a9d114b133.1686874691757.25; _ga_CFMZTSS5FM=GS1.1.1686874697.3.1.1686874846.0.0.0; _ga_BNX5WPP3YK=GS1.1.1686874697.5.1.1686874846.43.0.0; fgsscgib-w-mvideo=HLjF87926d2c252faef5636a6d143d0711e51274; fgsscgib-w-mvideo=JOej8ce24a3399bc61f34adefa4fc49ba1d092a2',
      'origin': 'https://www.mvideo.ru',
      'referer': 'https://www.mvideo.ru/product-list-page?q=ssd',
      'sec-ch-ua': '"Not.A/Brand";v="8", "Chromium";v="114", "Google Chrome";v="114"',
      'sec-ch-ua-mobile': '?0',
      'sec-ch-ua-platform': '"macOS"',
      'sec-fetch-dest': 'empty',
      'sec-fetch-mode': 'cors',
      'sec-fetch-site': 'same-origin',
      'x-gib-fgsscgib-w-mvideo': 'HLjF87926d2c252faef5636a6d143d0711e51274',
      'x-gib-gsscgib-w-mvideo': 'PPgbluWl2fa1ab/WTUbnbMxnFRkhFqpsyxZrp/l8dLsQW1ie0IOncHFwXopWec7RnTRf89wZdOCRH+SPIA41Qn3iygGdGPdDve797ZV1kJKipA/ZgY3fJ7cDzxH1bczwZ3qCXGpTbZIfR1y0ZElI1u8qu31p6hpHuBPwXUlA1i6S8JRq4REQol8jcnUaQcM4rI1lCmo/RFfsGcrf2QI8FsYS2yvF7HRXaplyw/Gr3pfNS0EUORahb7kS5KG1Ak8=',
      'x-set-application-id': '534abd5f-ec95-4aa7-8752-86e6f0097153'
    }.with_indifferent_access.freeze

    CATEGORIES = {
      "HDD" => 5445,
      "SSD" => 5446,
      "CPU" => 5301,
      "GPU" => 4231,
      "RAM" => 6675
    }
  end
end