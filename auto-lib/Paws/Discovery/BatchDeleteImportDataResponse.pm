
package Paws::Discovery::BatchDeleteImportDataResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::BatchDeleteImportDataError]', traits => ['NameInRequest'], request_name => 'errors' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::BatchDeleteImportDataResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Discovery::BatchDeleteImportDataError>]

Error messages returned for each import task that you deleted as a
response for this command.


=head2 _request_id => Str


=cut

1;