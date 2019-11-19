# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::SearchUsersResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_UserData/;
  has NextToken => (is => 'ro', isa => Str);
  has TotalCount => (is => 'ro', isa => Int);
  has Users => (is => 'ro', isa => ArrayRef[AlexaForBusiness_UserData]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TotalCount' => {
                                 'type' => 'Int'
                               },
               'Users' => {
                            'type' => 'ArrayRef[AlexaForBusiness_UserData]',
                            'class' => 'Paws::AlexaForBusiness::UserData'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 TotalCount => Int

The total number of users returned.


=head2 Users => ArrayRef[AlexaForBusiness_UserData]

The users that meet the specified set of filter criteria, in sort
order.


=head2 _request_id => Str


=cut

1;