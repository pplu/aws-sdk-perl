
package Paws::SageMaker::ListTagsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTagsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If response is truncated, Amazon SageMaker includes a token in the
response. You can use this token in your subsequent request to fetch
next set of tokens.


=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of C<Tag> objects, each with a tag key and a value.


=head2 _request_id => Str


=cut

1;