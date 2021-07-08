
package Paws::LexModels::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::LexModels::Tag>]

The tags associated with a resource.


=head2 _request_id => Str


=cut

