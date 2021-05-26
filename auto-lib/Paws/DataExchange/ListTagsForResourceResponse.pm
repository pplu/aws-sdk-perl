
package Paws::DataExchange::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::DataExchange::MapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::DataExchange::MapOf__string>

A label that consists of a customer-defined key and an optional value.


=head2 _request_id => Str


=cut

