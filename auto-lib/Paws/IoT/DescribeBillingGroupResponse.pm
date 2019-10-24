
package Paws::IoT::DescribeBillingGroupResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw/IoT_BillingGroupProperties IoT_BillingGroupMetadata/;
  has BillingGroupArn => (is => 'ro', isa => Str);
  has BillingGroupId => (is => 'ro', isa => Str);
  has BillingGroupMetadata => (is => 'ro', isa => IoT_BillingGroupMetadata);
  has BillingGroupName => (is => 'ro', isa => Str);
  has BillingGroupProperties => (is => 'ro', isa => IoT_BillingGroupProperties);
  has Version => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BillingGroupProperties' => {
                                             'class' => 'Paws::IoT::BillingGroupProperties',
                                             'type' => 'IoT_BillingGroupProperties'
                                           },
               'BillingGroupName' => {
                                       'type' => 'Str'
                                     },
               'Version' => {
                              'type' => 'Int'
                            },
               'BillingGroupMetadata' => {
                                           'class' => 'Paws::IoT::BillingGroupMetadata',
                                           'type' => 'IoT_BillingGroupMetadata'
                                         },
               'BillingGroupId' => {
                                     'type' => 'Str'
                                   },
               'BillingGroupArn' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'BillingGroupProperties' => 'billingGroupProperties',
                       'BillingGroupName' => 'billingGroupName',
                       'Version' => 'version',
                       'BillingGroupMetadata' => 'billingGroupMetadata',
                       'BillingGroupId' => 'billingGroupId',
                       'BillingGroupArn' => 'billingGroupArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeBillingGroupResponse

=head1 ATTRIBUTES


=head2 BillingGroupArn => Str

The ARN of the billing group.


=head2 BillingGroupId => Str

The ID of the billing group.


=head2 BillingGroupMetadata => IoT_BillingGroupMetadata

Additional information about the billing group.


=head2 BillingGroupName => Str

The name of the billing group.


=head2 BillingGroupProperties => IoT_BillingGroupProperties

The properties of the billing group.


=head2 Version => Int

The version of the billing group.


=head2 _request_id => Str


=cut

