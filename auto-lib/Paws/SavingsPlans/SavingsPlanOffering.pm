package Paws::SavingsPlans::SavingsPlanOffering;
  use Moose;
  has Currency => (is => 'ro', isa => 'Str', request_name => 'currency', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DurationSeconds => (is => 'ro', isa => 'Int', request_name => 'durationSeconds', traits => ['NameInRequest']);
  has OfferingId => (is => 'ro', isa => 'Str', request_name => 'offeringId', traits => ['NameInRequest']);
  has Operation => (is => 'ro', isa => 'Str', request_name => 'operation', traits => ['NameInRequest']);
  has PaymentOption => (is => 'ro', isa => 'Str', request_name => 'paymentOption', traits => ['NameInRequest']);
  has PlanType => (is => 'ro', isa => 'Str', request_name => 'planType', traits => ['NameInRequest']);
  has ProductTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'productTypes', traits => ['NameInRequest']);
  has Properties => (is => 'ro', isa => 'ArrayRef[Paws::SavingsPlans::SavingsPlanOfferingProperty]', request_name => 'properties', traits => ['NameInRequest']);
  has ServiceCode => (is => 'ro', isa => 'Str', request_name => 'serviceCode', traits => ['NameInRequest']);
  has UsageType => (is => 'ro', isa => 'Str', request_name => 'usageType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::SavingsPlanOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SavingsPlans::SavingsPlanOffering object:

  $service_obj->Method(Att1 => { Currency => $value, ..., UsageType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SavingsPlans::SavingsPlanOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->Currency

=head1 DESCRIPTION

Information about a Savings Plan offering.

=head1 ATTRIBUTES


=head2 Currency => Str

  The currency.


=head2 Description => Str

  The description.


=head2 DurationSeconds => Int

  The duration, in seconds.


=head2 OfferingId => Str

  The ID of the offering.


=head2 Operation => Str

  The specific AWS operation for the line item in the billing report.


=head2 PaymentOption => Str

  The payment option.


=head2 PlanType => Str

  The plan type.


=head2 ProductTypes => ArrayRef[Str|Undef]

  The product type.


=head2 Properties => ArrayRef[L<Paws::SavingsPlans::SavingsPlanOfferingProperty>]

  The properties.


=head2 ServiceCode => Str

  The service.


=head2 UsageType => Str

  The usage details of the line item in the billing report.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

