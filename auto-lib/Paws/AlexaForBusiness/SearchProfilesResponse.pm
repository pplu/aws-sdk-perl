
package Paws::AlexaForBusiness::SearchProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Profiles => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::ProfileData]');
  has TotalCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 Profiles => ArrayRef[L<Paws::AlexaForBusiness::ProfileData>]

The profiles that meet the specified set of filter criteria, in sort
order.


=head2 TotalCount => Int

The total number of room profiles returned.


=head2 _request_id => Str


=cut

1;