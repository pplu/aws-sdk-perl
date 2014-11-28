
package Paws::S3::GetBucketLoggingOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has LoggingEnabled => (is => 'ro', isa => 'Paws::S3::LoggingEnabled');

}
1;