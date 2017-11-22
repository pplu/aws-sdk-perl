
package Paws::Lightsail::GetDiskSnapshotsResult;
  use Moose;
  has DiskSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::DiskSnapshot]', traits => ['NameInRequest'], request_name => 'diskSnapshots' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDiskSnapshotsResult

=head1 ATTRIBUTES


=head2 DiskSnapshots => ArrayRef[L<Paws::Lightsail::DiskSnapshot>]

An array of objects containing information about all block storage disk
snapshots.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your
GetDiskSnapshots request.


=head2 _request_id => Str


=cut

1;