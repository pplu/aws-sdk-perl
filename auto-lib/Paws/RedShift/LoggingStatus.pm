
package Paws::RedShift::LoggingStatus {
  use Moose;
  with 'Paws::API::ResultParser';
  has BucketName => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has LastFailureTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulDeliveryTime => (is => 'ro', isa => 'Str');
  has LoggingEnabled => (is => 'ro', isa => 'Bool');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

}
1;