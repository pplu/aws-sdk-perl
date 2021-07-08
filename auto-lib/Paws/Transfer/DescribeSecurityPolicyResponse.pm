
package Paws::Transfer::DescribeSecurityPolicyResponse;
  use Moose;
  has SecurityPolicy => (is => 'ro', isa => 'Paws::Transfer::DescribedSecurityPolicy', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeSecurityPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityPolicy => L<Paws::Transfer::DescribedSecurityPolicy>

An array containing the properties of the security policy.


=head2 _request_id => Str


=cut

1;