# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::SearchRoomsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_RoomData/;
  has NextToken => (is => 'ro', isa => Str);
  has Rooms => (is => 'ro', isa => ArrayRef[AlexaForBusiness_RoomData]);
  has TotalCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Rooms' => {
                            'type' => 'ArrayRef[AlexaForBusiness_RoomData]',
                            'class' => 'Paws::AlexaForBusiness::RoomData'
                          },
               'TotalCount' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchRoomsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 Rooms => ArrayRef[AlexaForBusiness_RoomData]

The rooms that meet the specified set of filter criteria, in sort
order.


=head2 TotalCount => Int

The total number of rooms returned.


=head2 _request_id => Str


=cut

1;