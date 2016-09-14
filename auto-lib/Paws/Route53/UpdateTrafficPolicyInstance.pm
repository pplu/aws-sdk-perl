
package Paws::Route53::UpdateTrafficPolicyInstance;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id' , required => 1);
  has TrafficPolicyId => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyVersion => (is => 'ro', isa => 'Int', required => 1);
  has TTL => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrafficPolicyInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicyinstance/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::UpdateTrafficPolicyInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::UpdateTrafficPolicyInstance

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the traffic policy instance that you want to update.



=head2 B<REQUIRED> TrafficPolicyId => Str

The ID of the traffic policy that you want Amazon Route 53 to use to
update resource record sets for the specified traffic policy instance.



=head2 B<REQUIRED> TrafficPolicyVersion => Int

The version of the traffic policy that you want Amazon Route 53 to use
to update resource record sets for the specified traffic policy
instance.



=head2 B<REQUIRED> TTL => Int

The TTL that you want Amazon Route 53 to assign to all of the updated
resource record sets.




=cut

