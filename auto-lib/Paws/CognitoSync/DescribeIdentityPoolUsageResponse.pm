
package Paws::CognitoSync::DescribeIdentityPoolUsageResponse;
  use Moose;
  has IdentityPoolUsage => (is => 'ro', isa => 'Paws::CognitoSync::IdentityPoolUsage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::DescribeIdentityPoolUsageResponse

=head1 ATTRIBUTES


=head2 IdentityPoolUsage => L<Paws::CognitoSync::IdentityPoolUsage>

Information about the usage of the identity pool.


=head2 _request_id => Str


=cut

