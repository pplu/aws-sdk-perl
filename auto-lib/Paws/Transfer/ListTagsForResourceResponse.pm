
package Paws::Transfer::ListTagsForResourceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

This value is the ARN you specified to list the tags of.


=head2 NextToken => Str




=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs that are assigned to a resource, usually for the
purpose of grouping and searching for items. Tags are metadata that you
define that you can use for any purpose.


=head2 _request_id => Str


=cut

1;