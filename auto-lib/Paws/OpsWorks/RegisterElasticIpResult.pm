
package Paws::OpsWorks::RegisterElasticIpResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ElasticIp => (is => 'ro', isa => 'Str');

}
1;