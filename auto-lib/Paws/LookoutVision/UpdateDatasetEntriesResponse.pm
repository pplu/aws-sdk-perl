
package Paws::LookoutVision::UpdateDatasetEntriesResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::UpdateDatasetEntriesResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of the dataset update.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"CREATE_COMPLETE">, C<"CREATE_FAILED">, C<"UPDATE_IN_PROGRESS">, C<"UPDATE_COMPLETE">, C<"UPDATE_FAILED_ROLLBACK_IN_PROGRESS">, C<"UPDATE_FAILED_ROLLBACK_COMPLETE">, C<"DELETE_IN_PROGRESS">, C<"DELETE_COMPLETE">, C<"DELETE_FAILED">
=head2 _request_id => Str


=cut

