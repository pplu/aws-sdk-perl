
package Paws::EFS::DescribeAccessPointsResponse;
  use Moose;
  has AccessPoints => (is => 'ro', isa => 'ArrayRef[Paws::EFS::AccessPointDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeAccessPointsResponse

=head1 ATTRIBUTES


=head2 AccessPoints => ArrayRef[L<Paws::EFS::AccessPointDescription>]

An array of access point descriptions.


=head2 NextToken => Str

Present if there are more access points than returned in the response.
You can use the NextMarker in the subsequent request to fetch the
additional descriptions.


=head2 _request_id => Str


=cut

