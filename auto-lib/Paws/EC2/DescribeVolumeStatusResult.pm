
package Paws::EC2::DescribeVolumeStatusResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has VolumeStatuses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VolumeStatusItem]', request_name => 'volumeStatusSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumeStatusResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 VolumeStatuses => ArrayRef[L<Paws::EC2::VolumeStatusItem>]

A list of volumes.


=head2 _request_id => Str


=cut

