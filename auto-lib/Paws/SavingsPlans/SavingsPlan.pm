# Generated from default/object.tt
package Paws::SavingsPlans::SavingsPlan;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::SavingsPlans::Types qw/SavingsPlans_TagMap/;
  has Commitment => (is => 'ro', isa => Str);
  has Currency => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Ec2InstanceFamily => (is => 'ro', isa => Str);
  has End => (is => 'ro', isa => Str);
  has OfferingId => (is => 'ro', isa => Str);
  has PaymentOption => (is => 'ro', isa => Str);
  has ProductTypes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has RecurringPaymentAmount => (is => 'ro', isa => Str);
  has Region => (is => 'ro', isa => Str);
  has SavingsPlanArn => (is => 'ro', isa => Str);
  has SavingsPlanId => (is => 'ro', isa => Str);
  has SavingsPlanType => (is => 'ro', isa => Str);
  has Start => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => SavingsPlans_TagMap);
  has TermDurationInSeconds => (is => 'ro', isa => Int);
  has UpfrontPaymentAmount => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'UpfrontPaymentAmount' => 'upfrontPaymentAmount',
                       'SavingsPlanArn' => 'savingsPlanArn',
                       'SavingsPlanId' => 'savingsPlanId',
                       'OfferingId' => 'offeringId',
                       'State' => 'state',
                       'Ec2InstanceFamily' => 'ec2InstanceFamily',
                       'PaymentOption' => 'paymentOption',
                       'ProductTypes' => 'productTypes',
                       'Region' => 'region',
                       'Start' => 'start',
                       'SavingsPlanType' => 'savingsPlanType',
                       'RecurringPaymentAmount' => 'recurringPaymentAmount',
                       'TermDurationInSeconds' => 'termDurationInSeconds',
                       'Tags' => 'tags',
                       'Currency' => 'currency',
                       'End' => 'end',
                       'Description' => 'description',
                       'Commitment' => 'commitment'
                     },
  'types' => {
               'Region' => {
                             'type' => 'Str'
                           },
               'Start' => {
                            'type' => 'Str'
                          },
               'RecurringPaymentAmount' => {
                                             'type' => 'Str'
                                           },
               'SavingsPlanType' => {
                                      'type' => 'Str'
                                    },
               'TermDurationInSeconds' => {
                                            'type' => 'Int'
                                          },
               'Ec2InstanceFamily' => {
                                        'type' => 'Str'
                                      },
               'PaymentOption' => {
                                    'type' => 'Str'
                                  },
               'ProductTypes' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'State' => {
                            'type' => 'Str'
                          },
               'UpfrontPaymentAmount' => {
                                           'type' => 'Str'
                                         },
               'OfferingId' => {
                                 'type' => 'Str'
                               },
               'SavingsPlanId' => {
                                    'type' => 'Str'
                                  },
               'SavingsPlanArn' => {
                                     'type' => 'Str'
                                   },
               'Commitment' => {
                                 'type' => 'Str'
                               },
               'Description' => {
                                  'type' => 'Str'
                                },
               'End' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'type' => 'SavingsPlans_TagMap',
                           'class' => 'Paws::SavingsPlans::TagMap'
                         },
               'Currency' => {
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

Paws::SavingsPlans::SavingsPlan

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SavingsPlans::SavingsPlan object:

  $service_obj->Method(Att1 => { Commitment => $value, ..., UpfrontPaymentAmount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SavingsPlans::SavingsPlan object:

  $result = $service_obj->Method(...);
  $result->Att1->Commitment

=head1 DESCRIPTION

Information about a Savings Plan.

=head1 ATTRIBUTES


=head2 Commitment => Str

  The hourly commitment, in USD.


=head2 Currency => Str

  The currency.


=head2 Description => Str

  The description.


=head2 Ec2InstanceFamily => Str

  The EC2 instance family.


=head2 End => Str

  The end time.


=head2 OfferingId => Str

  The ID of the offering.


=head2 PaymentOption => Str

  The payment option.


=head2 ProductTypes => ArrayRef[Str|Undef]

  The product types.


=head2 RecurringPaymentAmount => Str

  The recurring payment amount.


=head2 Region => Str

  The AWS Region.


=head2 SavingsPlanArn => Str

  The Amazon Resource Name (ARN) of the Savings Plan.


=head2 SavingsPlanId => Str

  The ID of the Savings Plan.


=head2 SavingsPlanType => Str

  The plan type.


=head2 Start => Str

  The start time.


=head2 State => Str

  The state.


=head2 Tags => SavingsPlans_TagMap

  One or more tags.


=head2 TermDurationInSeconds => Int

  The duration of the term, in seconds.


=head2 UpfrontPaymentAmount => Str

  The up-front payment amount.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

