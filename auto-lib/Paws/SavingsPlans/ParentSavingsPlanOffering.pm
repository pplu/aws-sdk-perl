# Generated from default/object.tt
package Paws::SavingsPlans::ParentSavingsPlanOffering;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SavingsPlans::Types qw//;
  has Currency => (is => 'ro', isa => Str);
  has DurationSeconds => (is => 'ro', isa => Int);
  has OfferingId => (is => 'ro', isa => Str);
  has PaymentOption => (is => 'ro', isa => Str);
  has PlanDescription => (is => 'ro', isa => Str);
  has PlanType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DurationSeconds' => 'durationSeconds',
                       'OfferingId' => 'offeringId',
                       'PlanType' => 'planType',
                       'Currency' => 'currency',
                       'PlanDescription' => 'planDescription',
                       'PaymentOption' => 'paymentOption'
                     },
  'types' => {
               'Currency' => {
                               'type' => 'Str'
                             },
               'PlanType' => {
                               'type' => 'Str'
                             },
               'OfferingId' => {
                                 'type' => 'Str'
                               },
               'DurationSeconds' => {
                                      'type' => 'Int'
                                    },
               'PaymentOption' => {
                                    'type' => 'Str'
                                  },
               'PlanDescription' => {
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

Paws::SavingsPlans::ParentSavingsPlanOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SavingsPlans::ParentSavingsPlanOffering object:

  $service_obj->Method(Att1 => { Currency => $value, ..., PlanType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SavingsPlans::ParentSavingsPlanOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->Currency

=head1 DESCRIPTION

Information about a Savings Plan offering.

=head1 ATTRIBUTES


=head2 Currency => Str

  The currency.


=head2 DurationSeconds => Int

  The duration, in seconds.


=head2 OfferingId => Str

  The ID of the offering.


=head2 PaymentOption => Str

  The payment option.


=head2 PlanDescription => Str

  The description.


=head2 PlanType => Str

  The plan type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

