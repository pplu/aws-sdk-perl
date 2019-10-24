# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::SearchDevicesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_DeviceData/;
  has Devices => (is => 'ro', isa => ArrayRef[AlexaForBusiness_DeviceData]);
  has NextToken => (is => 'ro', isa => Str);
  has TotalCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Devices' => {
                              'class' => 'Paws::AlexaForBusiness::DeviceData',
                              'type' => 'ArrayRef[AlexaForBusiness_DeviceData]'
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

Paws::AlexaForBusiness::SearchDevicesResponse

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[AlexaForBusiness_DeviceData]

The devices that meet the specified set of filter criteria, in sort
order.


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 TotalCount => Int

The total number of devices returned.


=head2 _request_id => Str


=cut

1;