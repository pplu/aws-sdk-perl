
package Paws::OpsWorks::RegisterVolumeResult;
  use Moose;
  has VolumeId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterVolumeResult

=head1 ATTRIBUTES


=head2 VolumeId => Str

The volume ID.


=head2 _request_id => Str


=cut

1;