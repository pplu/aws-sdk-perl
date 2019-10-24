package Paws::KinesisVideoMedia::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type KinesisVideoMedia_ClientLimitExceededException, { class => 'Paws::KinesisVideoMedia::ClientLimitExceededException' };
  class_type KinesisVideoMedia_ConnectionLimitExceededException, { class => 'Paws::KinesisVideoMedia::ConnectionLimitExceededException' };
  class_type KinesisVideoMedia_GetMediaInput, { class => 'Paws::KinesisVideoMedia::GetMediaInput' };
  class_type KinesisVideoMedia_GetMediaOutput, { class => 'Paws::KinesisVideoMedia::GetMediaOutput' };
  class_type KinesisVideoMedia_InvalidArgumentException, { class => 'Paws::KinesisVideoMedia::InvalidArgumentException' };
  class_type KinesisVideoMedia_InvalidEndpointException, { class => 'Paws::KinesisVideoMedia::InvalidEndpointException' };
  class_type KinesisVideoMedia_NotAuthorizedException, { class => 'Paws::KinesisVideoMedia::NotAuthorizedException' };
  class_type KinesisVideoMedia_ResourceNotFoundException, { class => 'Paws::KinesisVideoMedia::ResourceNotFoundException' };
  class_type KinesisVideoMedia_StartSelector, { class => 'Paws::KinesisVideoMedia::StartSelector' };

1;
