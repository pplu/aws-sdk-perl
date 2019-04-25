
package Paws::Comprehend::DescribeDocumentClassificationJobResponse;
  use Moose;
  has DocumentClassificationJobProperties => (is => 'ro', isa => 'Paws::Comprehend::DocumentClassificationJobProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeDocumentClassificationJobResponse

=head1 ATTRIBUTES


=head2 DocumentClassificationJobProperties => L<Paws::Comprehend::DocumentClassificationJobProperties>

An object that describes the properties associated with the document
classification job.


=head2 _request_id => Str


=cut

1;