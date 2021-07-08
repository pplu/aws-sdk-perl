
package Paws::Translate::DeleteParallelDataResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::DeleteParallelDataResponse

=head1 ATTRIBUTES


=head2 Name => Str

The name of the parallel data resource that is being deleted.


=head2 Status => Str

The status of the parallel data deletion.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">
=head2 _request_id => Str


=cut

1;