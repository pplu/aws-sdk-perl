# Generated from callresult_class.tt

package Paws::SNS::ListSubscriptionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SNS::Types qw/SNS_Subscription/;
  has NextToken => (is => 'ro', isa => Str);
  has Subscriptions => (is => 'ro', isa => ArrayRef[SNS_Subscription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Subscriptions' => {
                                    'class' => 'Paws::SNS::Subscription',
                                    'type' => 'ArrayRef[SNS_Subscription]'
                                  }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListSubscriptionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token to pass along to the next C<ListSubscriptions> request. This
element is returned if there are more subscriptions to retrieve.


=head2 Subscriptions => ArrayRef[SNS_Subscription]

A list of subscriptions.


=head2 _request_id => Str


=cut

