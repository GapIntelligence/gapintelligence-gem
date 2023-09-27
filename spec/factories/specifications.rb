FactoryGirl.define do
  factory :specification, class: Hash do
    initialize_with {
      {
        "data" => {
                    "USB": "Y",
                    "WiFi": "Y",
                    "Brand": "gAPI",
                    "Color": "Red",
                    "Depth": "0.44",
                    "Width": "4.55",
                    "Height": "8.52",
                    "Weight": "0.66",
                    "Product": "gAPI Tablet w/4GB - Red",
                    "Std RAM": "0.5",
                    "Speakers": "Y",
                    "Bluetooth": "N",
                    "Processor": "Rockchip-RK2928 (1)",
                    "Microphone": "Y",
                    "Form Factor": "Slate",
                    "Part Number": "D2-713G_OR",
                    "Battery Life": "Forever",
                    "Display Size": "7",
                    "Display Type": "WVGA LCD",
                    "Product Type": "Tablet",
                    "Product Debut": "2016-05-05",
                    "Keyboard Type": "On-screen",
                    "Headphone Jack": "Y",
                    "Market Segment": "Portable Slate",
                    "Mobile Carrier": "na",
                    "Product Status": "NEW",
                    "Processor Cores": "4",
                    "Processor Speed": "100",
                    "Internal Storage": "20",
                    "Mobile Broadband": "N",
                    "Operating System": "iOS",
                    "Processor Family": "na",
                    "Display Resolution": "800x480",
                    "Display Size Family": "7",
                    "OS Version at Launch": "4.1",
                    "Mobile Broadband Type": "na",
                    "Processor Part Number": "RK2928",
                    "Back Webcam Megapixels": "na",
                    "Processor Manufacturer": "Rockchip",
                    "Secondary Storage Type": "MicroSD",
                    "Front Webcam Megapixels": "0.5"
                },
        "part_number": "1234-1111",
        "pvid": "1234567890",
        "country_code": "US",
        "category_name": "Tablets",
        "uid": "2000001278",
        "deleted": false
      }
    }
  end
end
