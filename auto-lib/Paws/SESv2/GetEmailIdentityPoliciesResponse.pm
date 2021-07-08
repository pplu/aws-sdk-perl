
package Paws::SESv2::GetEmailIdentityPoliciesResponse;
  use Moose;
  has Policies => (is => 'ro', isa => 'Paws::SESv2::PolicyMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetEmailIdentityPoliciesResponse

=head1 ATTRIBUTES


=head2 Policies => L<Paws::SESv2::PolicyMap>

A map of policy names to policies.


=head2 _request_id => Str


=cut

