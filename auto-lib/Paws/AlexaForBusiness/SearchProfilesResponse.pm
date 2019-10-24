# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::SearchProfilesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_ProfileData/;
  has NextToken => (is => 'ro', isa => Str);
  has Profiles => (is => 'ro', isa => ArrayRef[AlexaForBusiness_ProfileData]);
  has TotalCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Profiles' => {
                               'class' => 'Paws::AlexaForBusiness::ProfileData',
                               'type' => 'ArrayRef[AlexaForBusiness_ProfileData]'
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

Paws::AlexaForBusiness::SearchProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 Profiles => ArrayRef[AlexaForBusiness_ProfileData]

The profiles that meet the specified set of filter criteria, in sort
order.


=head2 TotalCount => Int

The total number of room profiles returned.


=head2 _request_id => Str


=cut

1;