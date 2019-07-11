
package Paws::Kafka::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Kafka::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Kafka::__mapOf__string>

The key-value pair for the resource tag.


=head2 _request_id => Str


=cut

