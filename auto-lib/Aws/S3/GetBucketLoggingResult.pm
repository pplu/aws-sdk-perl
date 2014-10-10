
package Aws::S3::GetBucketLoggingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoggingEnabled => (is => 'ro', isa => 'Aws::S3::LoggingEnabled');

}
1;