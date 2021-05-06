
package Paws::MediaConnect::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::MediaConnect::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::MediaConnect::__mapOf__string>

A map from tag keys to values. Tag keys can have a maximum character
length of 128 characters, and tag values can have a maximum length of
256 characters.


=head2 _request_id => Str


=cut

