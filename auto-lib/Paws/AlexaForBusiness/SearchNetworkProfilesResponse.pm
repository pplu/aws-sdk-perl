
package Paws::AlexaForBusiness::SearchNetworkProfilesResponse;
  use Moose;
  has NetworkProfiles => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::NetworkProfileData]');
  has NextToken => (is => 'ro', isa => 'Str');
  has TotalCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchNetworkProfilesResponse

=head1 ATTRIBUTES


=head2 NetworkProfiles => ArrayRef[L<Paws::AlexaForBusiness::NetworkProfileData>]

The network profiles that meet the specified set of filter criteria, in
sort order. It is a list of NetworkProfileData objects.


=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by MaxResults.


=head2 TotalCount => Int

The total number of network profiles returned.


=head2 _request_id => Str


=cut

1;