
package Paws::Rekognition::StopProjectVersionResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StopProjectVersionResponse

=head1 ATTRIBUTES


=head2 Status => Str

The current status of the stop operation.

Valid values are: C<"TRAINING_IN_PROGRESS">, C<"TRAINING_COMPLETED">, C<"TRAINING_FAILED">, C<"STARTING">, C<"RUNNING">, C<"FAILED">, C<"STOPPING">, C<"STOPPED">, C<"DELETING">
=head2 _request_id => Str


=cut

1;