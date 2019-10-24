package Paws::MediaStoreData::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type MediaStoreData_ContainerNotFoundException, { class => 'Paws::MediaStoreData::ContainerNotFoundException' };
  class_type MediaStoreData_DeleteObjectRequest, { class => 'Paws::MediaStoreData::DeleteObjectRequest' };
  class_type MediaStoreData_DeleteObjectResponse, { class => 'Paws::MediaStoreData::DeleteObjectResponse' };
  class_type MediaStoreData_DescribeObjectRequest, { class => 'Paws::MediaStoreData::DescribeObjectRequest' };
  class_type MediaStoreData_DescribeObjectResponse, { class => 'Paws::MediaStoreData::DescribeObjectResponse' };
  class_type MediaStoreData_GetObjectRequest, { class => 'Paws::MediaStoreData::GetObjectRequest' };
  class_type MediaStoreData_GetObjectResponse, { class => 'Paws::MediaStoreData::GetObjectResponse' };
  class_type MediaStoreData_InternalServerError, { class => 'Paws::MediaStoreData::InternalServerError' };
  class_type MediaStoreData_Item, { class => 'Paws::MediaStoreData::Item' };
  class_type MediaStoreData_ListItemsRequest, { class => 'Paws::MediaStoreData::ListItemsRequest' };
  class_type MediaStoreData_ListItemsResponse, { class => 'Paws::MediaStoreData::ListItemsResponse' };
  class_type MediaStoreData_ObjectNotFoundException, { class => 'Paws::MediaStoreData::ObjectNotFoundException' };
  class_type MediaStoreData_PutObjectRequest, { class => 'Paws::MediaStoreData::PutObjectRequest' };
  class_type MediaStoreData_PutObjectResponse, { class => 'Paws::MediaStoreData::PutObjectResponse' };
  class_type MediaStoreData_RequestedRangeNotSatisfiableException, { class => 'Paws::MediaStoreData::RequestedRangeNotSatisfiableException' };

1;
