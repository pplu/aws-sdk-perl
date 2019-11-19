package Paws::IoTData::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type IoTData_ConflictException, { class => 'Paws::IoTData::ConflictException' };
  class_type IoTData_DeleteThingShadowRequest, { class => 'Paws::IoTData::DeleteThingShadowRequest' };
  class_type IoTData_DeleteThingShadowResponse, { class => 'Paws::IoTData::DeleteThingShadowResponse' };
  class_type IoTData_GetThingShadowRequest, { class => 'Paws::IoTData::GetThingShadowRequest' };
  class_type IoTData_GetThingShadowResponse, { class => 'Paws::IoTData::GetThingShadowResponse' };
  class_type IoTData_InternalFailureException, { class => 'Paws::IoTData::InternalFailureException' };
  class_type IoTData_InvalidRequestException, { class => 'Paws::IoTData::InvalidRequestException' };
  class_type IoTData_MethodNotAllowedException, { class => 'Paws::IoTData::MethodNotAllowedException' };
  class_type IoTData_PublishRequest, { class => 'Paws::IoTData::PublishRequest' };
  class_type IoTData_RequestEntityTooLargeException, { class => 'Paws::IoTData::RequestEntityTooLargeException' };
  class_type IoTData_ResourceNotFoundException, { class => 'Paws::IoTData::ResourceNotFoundException' };
  class_type IoTData_ServiceUnavailableException, { class => 'Paws::IoTData::ServiceUnavailableException' };
  class_type IoTData_ThrottlingException, { class => 'Paws::IoTData::ThrottlingException' };
  class_type IoTData_UnauthorizedException, { class => 'Paws::IoTData::UnauthorizedException' };
  class_type IoTData_UnsupportedDocumentEncodingException, { class => 'Paws::IoTData::UnsupportedDocumentEncodingException' };
  class_type IoTData_UpdateThingShadowRequest, { class => 'Paws::IoTData::UpdateThingShadowRequest' };
  class_type IoTData_UpdateThingShadowResponse, { class => 'Paws::IoTData::UpdateThingShadowResponse' };

1;
