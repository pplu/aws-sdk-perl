
package Aws::OpsWorks::RegisterElasticIpResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ElasticIp => (is => 'ro', isa => 'Str');

}
1;
