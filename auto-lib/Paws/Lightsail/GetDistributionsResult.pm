
package Paws::Lightsail::GetDistributionsResult;
  use Moose;
  has Distributions => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::LightsailDistribution]', traits => ['NameInRequest'], request_name => 'distributions' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDistributionsResult

=head1 ATTRIBUTES


=head2 Distributions => ArrayRef[L<Paws::Lightsail::LightsailDistribution>]

An array of objects that describe your distributions.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetDistributions>
request and specify the next page token using the C<pageToken>
parameter.


=head2 _request_id => Str


=cut

1;