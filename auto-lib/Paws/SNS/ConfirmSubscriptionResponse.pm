# Generated from callresult_class.tt

package Paws::SNS::ConfirmSubscriptionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SNS::Types qw//;
  has SubscriptionArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SubscriptionArn' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ConfirmSubscriptionResponse

=head1 ATTRIBUTES


=head2 SubscriptionArn => Str

The ARN of the created subscription.


=head2 _request_id => Str


=cut

