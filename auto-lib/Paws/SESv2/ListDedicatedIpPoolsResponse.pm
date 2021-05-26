
package Paws::SESv2::ListDedicatedIpPoolsResponse;
  use Moose;
  has DedicatedIpPools => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListDedicatedIpPoolsResponse

=head1 ATTRIBUTES


=head2 DedicatedIpPools => ArrayRef[Str|Undef]

A list of all of the dedicated IP pools that are associated with your
AWS account in the current Region.


=head2 NextToken => Str

A token that indicates that there are additional IP pools to list. To
view additional IP pools, issue another request to
C<ListDedicatedIpPools>, passing this token in the C<NextToken>
parameter.


=head2 _request_id => Str


=cut

