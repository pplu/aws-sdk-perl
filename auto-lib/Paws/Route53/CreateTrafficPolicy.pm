
package Paws::Route53::CreateTrafficPolicy;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has Document => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrafficPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateTrafficPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateTrafficPolicyResponse

=head1 ATTRIBUTES


=head2 Comment => Str

(Optional) Any comments that you want to include about the traffic
policy.



=head2 B<REQUIRED> Document => Str

The definition of this traffic policy in JSON format. For more
information, see Traffic Policy Document Format in the I<Amazon Route
53 API Reference>.



=head2 B<REQUIRED> Name => Str

The name of the traffic policy.




=cut

