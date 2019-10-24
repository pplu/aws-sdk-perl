package Paws::SageMakerRuntime::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type SageMakerRuntime_InternalFailure, { class => 'Paws::SageMakerRuntime::InternalFailure' };
  class_type SageMakerRuntime_InvokeEndpointInput, { class => 'Paws::SageMakerRuntime::InvokeEndpointInput' };
  class_type SageMakerRuntime_InvokeEndpointOutput, { class => 'Paws::SageMakerRuntime::InvokeEndpointOutput' };
  class_type SageMakerRuntime_ModelError, { class => 'Paws::SageMakerRuntime::ModelError' };
  class_type SageMakerRuntime_ServiceUnavailable, { class => 'Paws::SageMakerRuntime::ServiceUnavailable' };
  class_type SageMakerRuntime_ValidationError, { class => 'Paws::SageMakerRuntime::ValidationError' };

1;
