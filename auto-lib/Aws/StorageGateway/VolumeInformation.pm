package Aws::StorageGateway::VolumeInformation {
  use Moose;
  with ('AWS::API::ResultParser');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
}
1
