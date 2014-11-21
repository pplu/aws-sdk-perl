package Aws::EC2::ExportToS3Task {
  use Moose;
  has ContainerFormat => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'containerFormat');
  has DiskImageFormat => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'diskImageFormat');
  has S3Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 's3Bucket');
  has S3Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 's3Key');
}
1;
