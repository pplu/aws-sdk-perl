
package Paws::Braket::CancelQuantumTaskResponse;
  use Moose;
  has CancellationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cancellationStatus', required => 1);
  has QuantumTaskArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'quantumTaskArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::CancelQuantumTaskResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CancellationStatus => Str

The status of the cancellation request.

Valid values are: C<"CANCELLING">, C<"CANCELLED">
=head2 B<REQUIRED> QuantumTaskArn => Str

The ARN of the task.


=head2 _request_id => Str


=cut

