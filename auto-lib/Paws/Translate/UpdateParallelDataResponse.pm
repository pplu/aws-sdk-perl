
package Paws::Translate::UpdateParallelDataResponse;
  use Moose;
  has LatestUpdateAttemptAt => (is => 'ro', isa => 'Str');
  has LatestUpdateAttemptStatus => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::UpdateParallelDataResponse

=head1 ATTRIBUTES


=head2 LatestUpdateAttemptAt => Str

The time that the most recent update was attempted.


=head2 LatestUpdateAttemptStatus => Str

The status of the parallel data update attempt. When the updated
parallel data resource is ready for you to use, the status is
C<ACTIVE>.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">
=head2 Name => Str

The name of the parallel data resource being updated.


=head2 Status => Str

The status of the parallel data resource that you are attempting to
update. Your update request is accepted only if this status is either
C<ACTIVE> or C<FAILED>.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">
=head2 _request_id => Str


=cut

1;