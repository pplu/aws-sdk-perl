
package Paws::DynamoDB::ListTagsOfResourceOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListTagsOfResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If this value is returned, there are additional results to be
displayed. To retrieve them, call ListTagsOfResource again, with
NextToken set to this value.


=head2 Tags => ArrayRef[L<Paws::DynamoDB::Tag>]

The tags currently associated with the Amazon DynamoDB resource.


=head2 _request_id => Str


=cut

1;