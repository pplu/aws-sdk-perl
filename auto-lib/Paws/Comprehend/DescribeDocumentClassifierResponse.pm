
package Paws::Comprehend::DescribeDocumentClassifierResponse;
  use Moose;
  has DocumentClassifierProperties => (is => 'ro', isa => 'Paws::Comprehend::DocumentClassifierProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeDocumentClassifierResponse

=head1 ATTRIBUTES


=head2 DocumentClassifierProperties => L<Paws::Comprehend::DocumentClassifierProperties>

An object that contains the properties associated with a document
classifier.


=head2 _request_id => Str


=cut

1;