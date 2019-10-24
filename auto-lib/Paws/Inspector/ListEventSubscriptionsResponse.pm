# Generated from json/callresult_class.tt

package Paws::Inspector::ListEventSubscriptionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_Subscription/;
  has NextToken => (is => 'ro', isa => Str);
  has Subscriptions => (is => 'ro', isa => ArrayRef[Inspector_Subscription], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Subscriptions' => {
                                    'class' => 'Paws::Inspector::Subscription',
                                    'type' => 'ArrayRef[Inspector_Subscription]'
                                  }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Subscriptions' => 'subscriptions'
                     },
  'IsRequired' => {
                    'Subscriptions' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListEventSubscriptionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to null.


=head2 B<REQUIRED> Subscriptions => ArrayRef[Inspector_Subscription]

Details of the returned event subscriptions.


=head2 _request_id => Str


=cut

1;