package Paws::ResourceTagging::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type ResourceTagging_FailedResourcesMap, { class => 'Paws::ResourceTagging::FailedResourcesMap' };
  class_type ResourceTagging_FailureInfo, { class => 'Paws::ResourceTagging::FailureInfo' };
  class_type ResourceTagging_GetResourcesInput, { class => 'Paws::ResourceTagging::GetResourcesInput' };
  class_type ResourceTagging_GetResourcesOutput, { class => 'Paws::ResourceTagging::GetResourcesOutput' };
  class_type ResourceTagging_GetTagKeysInput, { class => 'Paws::ResourceTagging::GetTagKeysInput' };
  class_type ResourceTagging_GetTagKeysOutput, { class => 'Paws::ResourceTagging::GetTagKeysOutput' };
  class_type ResourceTagging_GetTagValuesInput, { class => 'Paws::ResourceTagging::GetTagValuesInput' };
  class_type ResourceTagging_GetTagValuesOutput, { class => 'Paws::ResourceTagging::GetTagValuesOutput' };
  class_type ResourceTagging_InternalServiceException, { class => 'Paws::ResourceTagging::InternalServiceException' };
  class_type ResourceTagging_InvalidParameterException, { class => 'Paws::ResourceTagging::InvalidParameterException' };
  class_type ResourceTagging_PaginationTokenExpiredException, { class => 'Paws::ResourceTagging::PaginationTokenExpiredException' };
  class_type ResourceTagging_ResourceTagMapping, { class => 'Paws::ResourceTagging::ResourceTagMapping' };
  class_type ResourceTagging_Tag, { class => 'Paws::ResourceTagging::Tag' };
  class_type ResourceTagging_TagFilter, { class => 'Paws::ResourceTagging::TagFilter' };
  class_type ResourceTagging_TagMap, { class => 'Paws::ResourceTagging::TagMap' };
  class_type ResourceTagging_TagResourcesInput, { class => 'Paws::ResourceTagging::TagResourcesInput' };
  class_type ResourceTagging_TagResourcesOutput, { class => 'Paws::ResourceTagging::TagResourcesOutput' };
  class_type ResourceTagging_ThrottledException, { class => 'Paws::ResourceTagging::ThrottledException' };
  class_type ResourceTagging_UntagResourcesInput, { class => 'Paws::ResourceTagging::UntagResourcesInput' };
  class_type ResourceTagging_UntagResourcesOutput, { class => 'Paws::ResourceTagging::UntagResourcesOutput' };

1;
