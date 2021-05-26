
package Paws::FSX::CreateDataRepositoryTaskResponse;
  use Moose;
  has DataRepositoryTask => (is => 'ro', isa => 'Paws::FSX::DataRepositoryTask');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateDataRepositoryTaskResponse

=head1 ATTRIBUTES


=head2 DataRepositoryTask => L<Paws::FSX::DataRepositoryTask>

The description of the data repository task that you just created.


=head2 _request_id => Str


=cut

1;