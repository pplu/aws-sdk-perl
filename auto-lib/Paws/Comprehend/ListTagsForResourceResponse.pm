
package Paws::Comprehend::ListTagsForResourceResponse;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the given Amazon Comprehend resource
you are querying.


=head2 Tags => ArrayRef[L<Paws::Comprehend::Tag>]

Tags associated with the Amazon Comprehend resource being queried. A
tag is a key-value pair that adds as a metadata to a resource used by
Amazon Comprehend. For example, a tag with "Sales" as the key might be
added to a resource to indicate its use by the sales department.


=head2 _request_id => Str


=cut

1;