# Generated from json/callresult_class.tt

package Paws::Config::DescribeDeliveryChannelsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_DeliveryChannel/;
  has DeliveryChannels => (is => 'ro', isa => ArrayRef[Config_DeliveryChannel]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeliveryChannels' => {
                                       'class' => 'Paws::Config::DeliveryChannel',
                                       'type' => 'ArrayRef[Config_DeliveryChannel]'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeDeliveryChannelsResponse

=head1 ATTRIBUTES


=head2 DeliveryChannels => ArrayRef[Config_DeliveryChannel]

A list that contains the descriptions of the specified delivery
channel.


=head2 _request_id => Str


=cut

1;