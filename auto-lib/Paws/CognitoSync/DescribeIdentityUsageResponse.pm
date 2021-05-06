
package Paws::CognitoSync::DescribeIdentityUsageResponse;
  use Moose;
  has IdentityUsage => (is => 'ro', isa => 'Paws::CognitoSync::IdentityUsage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::DescribeIdentityUsageResponse

=head1 ATTRIBUTES


=head2 IdentityUsage => L<Paws::CognitoSync::IdentityUsage>

Usage information for the identity.


=head2 _request_id => Str


=cut

