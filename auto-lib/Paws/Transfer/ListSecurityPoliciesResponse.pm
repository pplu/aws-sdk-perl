
package Paws::Transfer::ListSecurityPoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SecurityPolicyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListSecurityPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When you can get additional results from the C<ListSecurityPolicies>
operation, a C<NextToken> parameter is returned in the output. In a
following command, you can pass in the C<NextToken> parameter to
continue listing security policies.


=head2 B<REQUIRED> SecurityPolicyNames => ArrayRef[Str|Undef]

An array of security policies that were listed.


=head2 _request_id => Str


=cut

1;