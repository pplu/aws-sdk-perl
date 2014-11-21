
package Aws::ElasticBeanstalk::CreateStorageLocationResultMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has S3Bucket => (is => 'ro', isa => 'Str');

}
1;