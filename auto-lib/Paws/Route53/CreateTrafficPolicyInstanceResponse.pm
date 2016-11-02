
package Paws::Route53::CreateTrafficPolicyInstanceResponse;
  use Moose;
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location', required => 1);
  has TrafficPolicyInstance => (is => 'ro', isa => 'Paws::Route53::TrafficPolicyInstance', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateTrafficPolicyInstanceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Location => Str

A unique URL that represents a new traffic policy instance.



=head2 B<REQUIRED> TrafficPolicyInstance => L<Paws::Route53::TrafficPolicyInstance>

A complex type that contains settings for the new traffic policy
instance.




=cut

