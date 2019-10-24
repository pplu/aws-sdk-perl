# Generated from json/callresult_class.tt

package Paws::Shield::GetSubscriptionStateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Shield::Types qw//;
  has SubscriptionState => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SubscriptionState' => {
                                        'type' => 'Str'
                                      }
             },
  'IsRequired' => {
                    'SubscriptionState' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Shield::GetSubscriptionStateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubscriptionState => Str

The status of the subscription.

Valid values are: C<"ACTIVE">, C<"INACTIVE">
=head2 _request_id => Str


=cut

1;