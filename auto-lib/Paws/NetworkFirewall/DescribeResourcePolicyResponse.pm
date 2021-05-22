
package Paws::NetworkFirewall::DescribeResourcePolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DescribeResourcePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The AWS Identity and Access Management policy for the resource.


=head2 _request_id => Str


=cut

1;