
package Paws::Comprehend::ListDocumentClassificationJobsResponse;
  use Moose;
  has DocumentClassificationJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DocumentClassificationJobProperties]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListDocumentClassificationJobsResponse

=head1 ATTRIBUTES


=head2 DocumentClassificationJobPropertiesList => ArrayRef[L<Paws::Comprehend::DocumentClassificationJobProperties>]

A list containing the properties of each job returned.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;