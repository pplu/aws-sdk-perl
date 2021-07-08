
package Paws::CloudWatchEvents::DescribeArchiveResponse;
  use Moose;
  has ArchiveArn => (is => 'ro', isa => 'Str');
  has ArchiveName => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EventCount => (is => 'ro', isa => 'Int');
  has EventPattern => (is => 'ro', isa => 'Str');
  has EventSourceArn => (is => 'ro', isa => 'Str');
  has RetentionDays => (is => 'ro', isa => 'Int');
  has SizeBytes => (is => 'ro', isa => 'Int');
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeArchiveResponse

=head1 ATTRIBUTES


=head2 ArchiveArn => Str

The ARN of the archive.


=head2 ArchiveName => Str

The name of the archive.


=head2 CreationTime => Str

The time at which the archive was created.


=head2 Description => Str

The description of the archive.


=head2 EventCount => Int

The number of events in the archive.


=head2 EventPattern => Str

The event pattern used to filter events sent to the archive.


=head2 EventSourceArn => Str

The ARN of the event source associated with the archive.


=head2 RetentionDays => Int

The number of days to retain events for in the archive.


=head2 SizeBytes => Int

The size of the archive in bytes.


=head2 State => Str

The state of the archive.

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"CREATING">, C<"UPDATING">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">
=head2 StateReason => Str

The reason that the archive is in the state.


=head2 _request_id => Str


=cut

1;