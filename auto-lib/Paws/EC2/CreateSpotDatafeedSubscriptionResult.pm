
package Paws::EC2::CreateSpotDatafeedSubscriptionResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_SpotDatafeedSubscription/;
  has SpotDatafeedSubscription => (is => 'ro', isa => EC2_SpotDatafeedSubscription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SpotDatafeedSubscription' => {
                                               'type' => 'EC2_SpotDatafeedSubscription',
                                               'class' => 'Paws::EC2::SpotDatafeedSubscription'
                                             }
             },
  'NameInRequest' => {
                       'SpotDatafeedSubscription' => 'spotDatafeedSubscription'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSpotDatafeedSubscriptionResult

=head1 ATTRIBUTES


=head2 SpotDatafeedSubscription => EC2_SpotDatafeedSubscription

The Spot Instance data feed subscription.


=head2 _request_id => Str


=cut

