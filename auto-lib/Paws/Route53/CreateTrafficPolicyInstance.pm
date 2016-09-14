
package Paws::Route53::CreateTrafficPolicyInstance;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyId => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyVersion => (is => 'ro', isa => 'Int', required => 1);
  has TTL => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrafficPolicyInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicyinstance');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateTrafficPolicyInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateTrafficPolicyInstance

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone in which you want Amazon Route 53 to create
resource record sets by using the configuration in a traffic policy.



=head2 B<REQUIRED> Name => Str

The domain name (such as example.com) or subdomain name (such as
www.example.com) for which Amazon Route 53 responds to DNS queries by
using the resource record sets that Amazon Route 53 creates for this
traffic policy instance.



=head2 B<REQUIRED> TrafficPolicyId => Str

The ID of the traffic policy that you want to use to create resource
record sets in the specified hosted zone.



=head2 B<REQUIRED> TrafficPolicyVersion => Int

The version of the traffic policy that you want to use to create
resource record sets in the specified hosted zone.



=head2 B<REQUIRED> TTL => Int

(Optional) The TTL that you want Amazon Route 53 to assign to all of
the resource record sets that it creates in the specified hosted zone.




=cut

