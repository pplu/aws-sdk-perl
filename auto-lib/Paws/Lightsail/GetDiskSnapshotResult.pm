
package Paws::Lightsail::GetDiskSnapshotResult;
  use Moose;
  has DiskSnapshot => (is => 'ro', isa => 'Paws::Lightsail::DiskSnapshot', traits => ['NameInRequest'], request_name => 'diskSnapshot' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDiskSnapshotResult

=head1 ATTRIBUTES


=head2 DiskSnapshot => L<Paws::Lightsail::DiskSnapshot>

An object containing information about the disk snapshot.


=head2 _request_id => Str


=cut

1;