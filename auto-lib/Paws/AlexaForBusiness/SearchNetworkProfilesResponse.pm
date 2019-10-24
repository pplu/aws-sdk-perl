# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::SearchNetworkProfilesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_NetworkProfileData/;
  has NetworkProfiles => (is => 'ro', isa => ArrayRef[AlexaForBusiness_NetworkProfileData]);
  has NextToken => (is => 'ro', isa => Str);
  has TotalCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkProfiles' => {
                                      'class' => 'Paws::AlexaForBusiness::NetworkProfileData',
                                      'type' => 'ArrayRef[AlexaForBusiness_NetworkProfileData]'
                                    },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TotalCount' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchNetworkProfilesResponse

=head1 ATTRIBUTES


=head2 NetworkProfiles => ArrayRef[AlexaForBusiness_NetworkProfileData]

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