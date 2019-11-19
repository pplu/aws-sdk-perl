# Generated from default/object.tt
package Paws::SavingsPlans::SavingsPlanRate;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SavingsPlans::Types qw/SavingsPlans_SavingsPlanRateProperty/;
  has Currency => (is => 'ro', isa => Str);
  has Operation => (is => 'ro', isa => Str);
  has ProductType => (is => 'ro', isa => Str);
  has Properties => (is => 'ro', isa => ArrayRef[SavingsPlans_SavingsPlanRateProperty]);
  has Rate => (is => 'ro', isa => Str);
  has ServiceCode => (is => 'ro', isa => Str);
  has Unit => (is => 'ro', isa => Str);
  has UsageType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UsageType' => {
                                'type' => 'Str'
                              },
               'Unit' => {
                           'type' => 'Str'
                         },
               'Operation' => {
                                'type' => 'Str'
                              },
               'ProductType' => {
                                  'type' => 'Str'
                                },
               'Rate' => {
                           'type' => 'Str'
                         },
               'ServiceCode' => {
                                  'type' => 'Str'
                                },
               'Properties' => {
                                 'class' => 'Paws::SavingsPlans::SavingsPlanRateProperty',
                                 'type' => 'ArrayRef[SavingsPlans_SavingsPlanRateProperty]'
                               },
               'Currency' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'ServiceCode' => 'serviceCode',
                       'Properties' => 'properties',
                       'Currency' => 'currency',
                       'Operation' => 'operation',
                       'UsageType' => 'usageType',
                       'Unit' => 'unit',
                       'Rate' => 'rate',
                       'ProductType' => 'productType'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::SavingsPlanRate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SavingsPlans::SavingsPlanRate object:

  $service_obj->Method(Att1 => { Currency => $value, ..., UsageType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SavingsPlans::SavingsPlanRate object:

  $result = $service_obj->Method(...);
  $result->Att1->Currency

=head1 DESCRIPTION

Information about a Savings Plan rate.

=head1 ATTRIBUTES


=head2 Currency => Str

  The currency.


=head2 Operation => Str

  The specific AWS operation for the line item in the billing report.


=head2 ProductType => Str

  The product type.


=head2 Properties => ArrayRef[SavingsPlans_SavingsPlanRateProperty]

  The properties.


=head2 Rate => Str

  The rate.


=head2 ServiceCode => Str

  The service.


=head2 Unit => Str

  The unit.


=head2 UsageType => Str

  The usage details of the line item in the billing report.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

