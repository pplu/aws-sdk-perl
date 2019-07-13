
package Paws::Greengrass::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Greengrass::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Greengrass::__mapOf__string>

A map of the key-value pairs for the resource tag.


=head2 _request_id => Str


=cut

