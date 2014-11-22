
package Paws::ElasticBeanstalk::CheckDNSAvailabilityResultMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Available => (is => 'ro', isa => 'Bool');
  has FullyQualifiedCNAME => (is => 'ro', isa => 'Str');

}
1;