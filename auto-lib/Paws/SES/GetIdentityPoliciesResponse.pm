
package Paws::SES::GetIdentityPoliciesResponse;
  use Moose;
  has Policies => (is => 'ro', isa => 'Paws::SES::PolicyMap', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityPoliciesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policies => L<Paws::SES::PolicyMap>

A map of policy names to policies.


=head2 _request_id => Str


=cut

