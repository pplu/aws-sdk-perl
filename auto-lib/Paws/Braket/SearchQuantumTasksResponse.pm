
package Paws::Braket::SearchQuantumTasksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has QuantumTasks => (is => 'ro', isa => 'ArrayRef[Paws::Braket::QuantumTaskSummary]', traits => ['NameInRequest'], request_name => 'quantumTasks', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::SearchQuantumTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used for pagination of results, or null if there are no
additional results. Use the token value in a subsequent request to
continue results where the previous request ended.


=head2 B<REQUIRED> QuantumTasks => ArrayRef[L<Paws::Braket::QuantumTaskSummary>]

An array of C<QuantumTaskSummary> objects for tasks that match the
specified filters.


=head2 _request_id => Str


=cut

