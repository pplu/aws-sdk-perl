
package Paws::Comprehend::ListDocumentClassifiersResponse;
  use Moose;
  has DocumentClassifierPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DocumentClassifierProperties]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListDocumentClassifiersResponse

=head1 ATTRIBUTES


=head2 DocumentClassifierPropertiesList => ArrayRef[L<Paws::Comprehend::DocumentClassifierProperties>]

A list containing the properties of each job returned.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;