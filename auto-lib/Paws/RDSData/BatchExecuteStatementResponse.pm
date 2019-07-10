
package Paws::RDSData::BatchExecuteStatementResponse;
  use Moose;
  has UpdateResults => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::UpdateResult]', traits => ['NameInRequest'], request_name => 'updateResults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::BatchExecuteStatementResponse

=head1 ATTRIBUTES


=head2 UpdateResults => ArrayRef[L<Paws::RDSData::UpdateResult>]

The execution results of each batch entry.


=head2 _request_id => Str


=cut

