package Paws::ComprehendMedical::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type ComprehendMedical_Attribute, { class => 'Paws::ComprehendMedical::Attribute' };
  class_type ComprehendMedical_DetectEntitiesRequest, { class => 'Paws::ComprehendMedical::DetectEntitiesRequest' };
  class_type ComprehendMedical_DetectEntitiesResponse, { class => 'Paws::ComprehendMedical::DetectEntitiesResponse' };
  class_type ComprehendMedical_DetectPHIRequest, { class => 'Paws::ComprehendMedical::DetectPHIRequest' };
  class_type ComprehendMedical_DetectPHIResponse, { class => 'Paws::ComprehendMedical::DetectPHIResponse' };
  class_type ComprehendMedical_Entity, { class => 'Paws::ComprehendMedical::Entity' };
  class_type ComprehendMedical_InternalServerException, { class => 'Paws::ComprehendMedical::InternalServerException' };
  class_type ComprehendMedical_InvalidEncodingException, { class => 'Paws::ComprehendMedical::InvalidEncodingException' };
  class_type ComprehendMedical_InvalidRequestException, { class => 'Paws::ComprehendMedical::InvalidRequestException' };
  class_type ComprehendMedical_ServiceUnavailableException, { class => 'Paws::ComprehendMedical::ServiceUnavailableException' };
  class_type ComprehendMedical_TextSizeLimitExceededException, { class => 'Paws::ComprehendMedical::TextSizeLimitExceededException' };
  class_type ComprehendMedical_TooManyRequestsException, { class => 'Paws::ComprehendMedical::TooManyRequestsException' };
  class_type ComprehendMedical_Trait, { class => 'Paws::ComprehendMedical::Trait' };
  class_type ComprehendMedical_UnmappedAttribute, { class => 'Paws::ComprehendMedical::UnmappedAttribute' };

1;
