
package Paws::MQ::ListTagsResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::MQ::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListTagsResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::MQ::__mapOf__string>

The key-value pair for the resource tag.


=head2 _request_id => Str


=cut

