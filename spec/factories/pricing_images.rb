FactoryGirl.define do
  factory :pricing_image, class: Hash do
    transient do
      sequence(:id)
      sequence(:position)
      sequence(:public_id) { |n| "public_id_#{id}" }
    end

    in_store_image_id 1

    image_url 'https://gapi-staging.s3.amazonaws.com/uploads/pricing_image/image/83688/Manny_Festa.jpg?AWSAccessKeyId=AKIAIHC7SBLIBPKMA6EA&Expires=1586548075&Signature=AlarFCYMTAMGCvlnQeyyn7%2F%2FK7k%3D'
    image_thumb_url 'https://gapi-staging.s3.amazonaws.com/uploads/pricing_image/image/83688/Manny_Festa.jpg?AWSAccessKeyId=AKIAIHC7SBLIBPKMA6EA&Expires=1586548075&Signature=AlarFCYMTAMGCvlnQeyyn7%2F%2FK7k%3D_thumb'
    image_large_url 'https://gapi-staging.s3.amazonaws.com/uploads/pricing_image/image/83688/Large_Manny_Festa.jpg?AWSAccessKeyId=AKIAIHC7SBLIBPKMA6EA&Expires=1586548075&Signature=AlarFCYMTAMGCvlnQeyyn7%2F%2FK7k%3D'
    download_url 'https://gapi-production.s3.amazonaws.com/uploads/ad_page/image/325503/NFM_20230208_page02.png?response-content-disposition=attachment&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIJT42O5UWNVVMNQA%2F20230211%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230211T204018Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=80f93afd79bffb6d9b1a024175232afbd8c094e276a3c005ae7544029daf9ae1'
    public_url 'https://dashboard.gapintelligence.com/pricing_images/6f9b9af36f9b9af3'

    initialize_with do
      {
        'id' => id,
        'type' => 'pricing_images',
        'attributes' => attributes.stringify_keys
      }
    end
  end
end
