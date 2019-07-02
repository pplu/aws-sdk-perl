
package Paws::Pinpoint::EventsResponse;
  use Moose;
  has Results => (is => 'ro', isa => 'Paws::Pinpoint::MapOfItemResponse');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EventsResponse

=head1 ATTRIBUTES


=head2 Results => L<Paws::Pinpoint::MapOfItemResponse>

A map that contains a multipart response for each endpoint. For each
item in this object, the endpoint ID is the key and the item response
is the value. If no item response exists, the value can also be one of
the following: 202, the request was processed successfully; or 400, the
payload wasn't valid or required fields were missing.


=head2 _request_id => Str


=cut

