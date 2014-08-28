
package Aws::ElasticBeanstalk::CheckDNSAvailabilityResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Available => (is => 'ro', isa => 'Bool');
  has FullyQualifiedCNAME => (is => 'ro', isa => 'Str');

}
1;