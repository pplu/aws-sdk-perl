
package Paws::Comprehend::CreateDocumentClassifierResponse;
  use Moose;
  has DocumentClassifierArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateDocumentClassifierResponse

=head1 ATTRIBUTES


=head2 DocumentClassifierArn => Str

The Amazon Resource Name (ARN) that identifies the document classifier.


=head2 _request_id => Str


=cut

1;