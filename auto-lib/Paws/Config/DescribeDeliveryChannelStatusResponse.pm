# Generated from json/callresult_class.tt

package Paws::Config::DescribeDeliveryChannelStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_DeliveryChannelStatus/;
  has DeliveryChannelsStatus => (is => 'ro', isa => ArrayRef[Config_DeliveryChannelStatus]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeliveryChannelsStatus' => {
                                             'type' => 'ArrayRef[Config_DeliveryChannelStatus]',
                                             'class' => 'Paws::Config::DeliveryChannelStatus'
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

Paws::Config::DescribeDeliveryChannelStatusResponse

=head1 ATTRIBUTES


=head2 DeliveryChannelsStatus => ArrayRef[Config_DeliveryChannelStatus]

A list that contains the status of a specified delivery channel.


=head2 _request_id => Str


=cut

1;