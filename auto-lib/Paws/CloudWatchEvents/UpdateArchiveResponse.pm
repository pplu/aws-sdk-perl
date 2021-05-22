
package Paws::CloudWatchEvents::UpdateArchiveResponse;
  use Moose;
  has ArchiveArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::UpdateArchiveResponse

=head1 ATTRIBUTES


=head2 ArchiveArn => Str

The ARN of the archive.


=head2 CreationTime => Str

The time at which the archive was updated.


=head2 State => Str

The state of the archive.

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"CREATING">, C<"UPDATING">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">
=head2 StateReason => Str

The reason that the archive is in the current state.


=head2 _request_id => Str


=cut

1;