package Paws::S3::NotificationConfigurationFilter {
  use Moose;
  has Key => (is => 'ro', isa => 'Paws::S3::S3KeyFilter', xmlname => 'S3Key', request_name => 'S3Key', traits => ['Unwrapped','NameInRequest']);
}
1;
