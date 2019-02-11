
package Paws::EC2::ModifyVolumeResult;
  use Moose;
  has VolumeModification => (is => 'ro', isa => 'Paws::EC2::VolumeModification', request_name => 'volumeModification', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVolumeResult

=head1 ATTRIBUTES


=head2 VolumeModification => L<Paws::EC2::VolumeModification>

Information about the volume modification.


=head2 _request_id => Str


=cut

