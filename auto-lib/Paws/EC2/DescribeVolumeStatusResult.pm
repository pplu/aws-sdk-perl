
package Paws::EC2::DescribeVolumeStatusResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has VolumeStatuses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VolumeStatusItem]', traits => ['Unwrapped'], xmlname => 'volumeStatusSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumeStatusResult

=head1 ATTRIBUTES

=head2 NextToken => Str

  

The next paginated set of results to return.









=head2 VolumeStatuses => ArrayRef[Paws::EC2::VolumeStatusItem]

  

A list of volumes.











=cut

