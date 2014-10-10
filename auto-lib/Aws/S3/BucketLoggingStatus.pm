package Aws::S3::BucketLoggingStatus {
  use Moose;
  has LoggingEnabled => (is => 'ro', isa => 'Aws::S3::LoggingEnabled');
}
1
