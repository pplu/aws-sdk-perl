
package Paws::EC2::DescribeSpotDatafeedSubscriptionResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_SpotDatafeedSubscription/;
  has SpotDatafeedSubscription => (is => 'ro', isa => EC2_SpotDatafeedSubscription);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'SpotDatafeedSubscription' => {
                                               'class' => 'Paws::EC2::SpotDatafeedSubscription',
                                               'type' => 'EC2_SpotDatafeedSubscription'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::EC2::DescribeSpotDatafeedSubscriptionResult

=head1 ATTRIBUTES


=head2 SpotDatafeedSubscription => EC2_SpotDatafeedSubscription

The Spot Instance data feed subscription.


=head2 _request_id => Str


=cut

