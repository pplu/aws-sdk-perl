
package Paws::IoT::CreateBillingGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has BillingGroupArn => (is => 'ro', isa => Str);
  has BillingGroupId => (is => 'ro', isa => Str);
  has BillingGroupName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BillingGroupName' => {
                                       'type' => 'Str'
                                     },
               'BillingGroupArn' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BillingGroupId' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'BillingGroupId' => 'billingGroupId',
                       'BillingGroupArn' => 'billingGroupArn',
                       'BillingGroupName' => 'billingGroupName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateBillingGroupResponse

=head1 ATTRIBUTES


=head2 BillingGroupArn => Str

The ARN of the billing group.


=head2 BillingGroupId => Str

The ID of the billing group.


=head2 BillingGroupName => Str

The name you gave to the billing group.


=head2 _request_id => Str


=cut

