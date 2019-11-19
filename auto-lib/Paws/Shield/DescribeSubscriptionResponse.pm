# Generated from json/callresult_class.tt

package Paws::Shield::DescribeSubscriptionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Shield::Types qw/Shield_Subscription/;
  has Subscription => (is => 'ro', isa => Shield_Subscription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Subscription' => {
                                   'type' => 'Shield_Subscription',
                                   'class' => 'Paws::Shield::Subscription'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeSubscriptionResponse

=head1 ATTRIBUTES


=head2 Subscription => Shield_Subscription

The AWS Shield Advanced subscription details for an account.


=head2 _request_id => Str


=cut

1;