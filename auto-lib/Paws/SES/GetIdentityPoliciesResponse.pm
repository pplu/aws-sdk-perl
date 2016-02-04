
package Paws::SES::GetIdentityPoliciesResponse;
  use Moose;
  has Policies => (is => 'ro', isa => 'HashRef[Str]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityPoliciesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policies => HashRef[Str]

A map of policy names to policies.




=cut

