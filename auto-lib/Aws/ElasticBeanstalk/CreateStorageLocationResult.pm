
package Aws::ElasticBeanstalk::CreateStorageLocationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has S3Bucket => (is => 'ro', isa => 'Str');

}
1;