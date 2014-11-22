
package Paws::ElasticBeanstalk::CreateStorageLocationResultMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has S3Bucket => (is => 'ro', isa => 'Str');

}
1;