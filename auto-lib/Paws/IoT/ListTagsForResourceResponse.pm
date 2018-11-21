
package Paws::IoT::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

The list of tags assigned to the resource.


=head2 _request_id => Str


=cut

