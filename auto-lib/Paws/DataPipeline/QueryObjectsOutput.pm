
package Paws::DataPipeline::QueryObjectsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has hasMoreResults => (is => 'ro', isa => 'Bool');
  has ids => (is => 'ro', isa => 'ArrayRef[Str]');
  has marker => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::QueryObjectsOutput

=head1 ATTRIBUTES

=head2 hasMoreResults => Bool

  

If C<True>, there are more results that can be obtained by a subsequent
call to QueryObjects.









=head2 ids => ArrayRef[Str]

  

A list of identifiers that match the query selectors.









=head2 marker => Str

  

The starting point for the results to be returned. As long as the
action returns C<HasMoreResults> as C<True>, you can call QueryObjects
again and pass the marker value from the response to retrieve the next
set of results.











=cut

1;