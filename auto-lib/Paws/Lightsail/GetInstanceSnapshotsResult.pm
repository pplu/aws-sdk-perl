
package Paws::Lightsail::GetInstanceSnapshotsResult;
  use Moose;
  has InstanceSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::InstanceSnapshot]', traits => ['NameInRequest'], request_name => 'instanceSnapshots' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceSnapshotsResult

=head1 ATTRIBUTES


=head2 InstanceSnapshots => ArrayRef[L<Paws::Lightsail::InstanceSnapshot>]

An array of key-value pairs containing information about the results of
your get instance snapshots request.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
instance snapshots request.


=head2 _request_id => Str


=cut

1;