
package Paws::Quicksight::ListTagsForResourceResponse;
  use Moose;
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 Tags => ArrayRef[L<Paws::Quicksight::Tag>]

Contains a map of the key-value pairs for the resource tag or tags
assigned to the resource.


=head2 _request_id => Str


=cut

