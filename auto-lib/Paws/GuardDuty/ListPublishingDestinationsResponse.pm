
package Paws::GuardDuty::ListPublishingDestinationsResponse;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::Destination]', traits => ['NameInRequest'], request_name => 'destinations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListPublishingDestinationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destinations => ArrayRef[L<Paws::GuardDuty::Destination>]

A C<Destinations> object that includes information about each
publishing destination returned.


=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the C<NextToken> value
returned from the previous request to continue listing results after
the first page.


=head2 _request_id => Str


=cut

