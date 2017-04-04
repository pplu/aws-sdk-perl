
package Paws::Inspector::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Tag]', traits => ['NameInRequest'], request_name => 'tags' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::Inspector::Tag>]

A collection of key and value pairs.


=head2 _request_id => Str


=cut

1;