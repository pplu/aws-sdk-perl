
package Paws::MediaLive::ListOfferingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Offerings => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::Offering]', traits => ['NameInRequest'], request_name => 'offerings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListOfferingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token to retrieve the next page of results


=head2 Offerings => ArrayRef[L<Paws::MediaLive::Offering>]

List of offerings


=head2 _request_id => Str


=cut

