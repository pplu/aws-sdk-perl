
package Paws::Braket::CreateQuantumTaskResponse;
  use Moose;
  has QuantumTaskArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'quantumTaskArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::CreateQuantumTaskResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> QuantumTaskArn => Str

The ARN of the task created by the request.


=head2 _request_id => Str


=cut

