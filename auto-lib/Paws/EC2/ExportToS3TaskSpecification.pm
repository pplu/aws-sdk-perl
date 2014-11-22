package Paws::EC2::ExportToS3TaskSpecification {
  use Moose;
  has ContainerFormat => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'containerFormat');
  has DiskImageFormat => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'diskImageFormat');
  has S3Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 's3Bucket');
  has S3Prefix => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 's3Prefix');
}
1;
