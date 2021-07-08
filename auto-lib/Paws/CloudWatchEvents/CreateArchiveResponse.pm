
package Paws::CloudWatchEvents::CreateArchiveResponse;
  use Moose;
  has ArchiveArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreateArchiveResponse

=head1 ATTRIBUTES


=head2 ArchiveArn => Str

The ARN of the archive that was created.


=head2 CreationTime => Str

The time at which the archive was created.


=head2 State => Str

The state of the archive that was created.

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"CREATING">, C<"UPDATING">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">
=head2 StateReason => Str

The reason that the archive is in the state.


=head2 _request_id => Str


=cut

1;