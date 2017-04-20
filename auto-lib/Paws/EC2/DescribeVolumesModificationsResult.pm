
package Paws::EC2::DescribeVolumesModificationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has VolumesModifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VolumeModification]', request_name => 'volumeModificationSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumesModificationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for pagination, null if there are no more results


=head2 VolumesModifications => ArrayRef[L<Paws::EC2::VolumeModification>]

A list of returned VolumeModification objects.


=head2 _request_id => Str


=cut

