
package Paws::SavingsPlans::CreateSavingsPlan;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Commitment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitment', required => 1);
  has PurchaseTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'purchaseTime');
  has SavingsPlanOfferingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'savingsPlanOfferingId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SavingsPlans::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpfrontPaymentAmount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'upfrontPaymentAmount');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSavingsPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateSavingsPlan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SavingsPlans::CreateSavingsPlanResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::CreateSavingsPlan - Arguments for method CreateSavingsPlan on L<Paws::SavingsPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSavingsPlan on the
L<AWS Savings Plans|Paws::SavingsPlans> service. Use the attributes of this class
as arguments to method CreateSavingsPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSavingsPlan.

=head1 SYNOPSIS

    my $savingsplans = Paws->service('SavingsPlans');
    my $CreateSavingsPlanResponse = $savingsplans->CreateSavingsPlan(
      Commitment            => 'MyAmount',
      SavingsPlanOfferingId => 'MySavingsPlanOfferingId',
      ClientToken           => 'MyClientToken',                    # OPTIONAL
      PurchaseTime          => '1970-01-01T01:00:00',              # OPTIONAL
      Tags                  => { 'MyTagKey' => 'MyTagValue', },    # OPTIONAL
      UpfrontPaymentAmount  => 'MyAmount',                         # OPTIONAL
    );

    # Results:
    my $SavingsPlanId = $CreateSavingsPlanResponse->SavingsPlanId;

    # Returns a L<Paws::SavingsPlans::CreateSavingsPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/savingsplans/CreateSavingsPlan>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> Commitment => Str

The hourly commitment, in USD. This is a value between 0.001 and 1
million. You cannot specify more than three digits after the decimal
point.



=head2 PurchaseTime => Str

The time at which to purchase the Savings Plan, in UTC format
(YYYY-MM-DDTHH:MM:SSZ).



=head2 B<REQUIRED> SavingsPlanOfferingId => Str

The ID of the offering.



=head2 Tags => L<Paws::SavingsPlans::TagMap>

One or more tags.



=head2 UpfrontPaymentAmount => Str

The up-front payment amount. This is a whole number between 50 and 99
percent of the total value of the Savings Plan. This parameter is
supported only if the payment option is C<Partial Upfront>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSavingsPlan in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

