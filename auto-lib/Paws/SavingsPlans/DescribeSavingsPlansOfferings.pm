
package Paws::SavingsPlans::DescribeSavingsPlansOfferings;
  use Moose;
  has Currencies => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'currencies');
  has Descriptions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'descriptions');
  has Durations => (is => 'ro', isa => 'ArrayRef[Int]', traits => ['NameInRequest'], request_name => 'durations');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SavingsPlans::SavingsPlanOfferingFilterElement]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has OfferingIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'offeringIds');
  has Operations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'operations');
  has PaymentOptions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'paymentOptions');
  has PlanTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'planTypes');
  has ProductType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'productType');
  has ServiceCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'serviceCodes');
  has UsageTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'usageTypes');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSavingsPlansOfferings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeSavingsPlansOfferings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SavingsPlans::DescribeSavingsPlansOfferingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::DescribeSavingsPlansOfferings - Arguments for method DescribeSavingsPlansOfferings on L<Paws::SavingsPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSavingsPlansOfferings on the
L<AWS Savings Plans|Paws::SavingsPlans> service. Use the attributes of this class
as arguments to method DescribeSavingsPlansOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSavingsPlansOfferings.

=head1 SYNOPSIS

    my $savingsplans = Paws->service('SavingsPlans');
    my $DescribeSavingsPlansOfferingsResponse =
      $savingsplans->DescribeSavingsPlansOfferings(
      Currencies => [
        'CNY', ...    # values: CNY, USD
      ],    # OPTIONAL
      Descriptions => [ 'MySavingsPlanDescription', ... ],    # OPTIONAL
      Durations    => [ 1,                          ... ],    # OPTIONAL
      Filters      => [
        {
          Name   => 'region',    # values: region, instanceFamily; OPTIONAL
          Values => [ 'MyJsonSafeFilterValueString', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults  => 1,                      # OPTIONAL
      NextToken   => 'MyPaginationToken',    # OPTIONAL
      OfferingIds => [ 'MyUUID', ... ],      # OPTIONAL
      Operations  => [
        'MySavingsPlanOperation', ...        # max: 255
      ],    # OPTIONAL
      PaymentOptions => [
        'All Upfront', ...    # values: All Upfront, Partial Upfront, No Upfront
      ],    # OPTIONAL
      PlanTypes => [
        'Compute', ...    # values: Compute, EC2Instance, SageMaker
      ],    # OPTIONAL
      ProductType  => 'EC2',    # OPTIONAL
      ServiceCodes => [
        'MySavingsPlanServiceCode', ...    # max: 255
      ],    # OPTIONAL
      UsageTypes => [
        'MySavingsPlanUsageType', ...    # max: 255
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken     = $DescribeSavingsPlansOfferingsResponse->NextToken;
    my $SearchResults = $DescribeSavingsPlansOfferingsResponse->SearchResults;

# Returns a L<Paws::SavingsPlans::DescribeSavingsPlansOfferingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/savingsplans/DescribeSavingsPlansOfferings>

=head1 ATTRIBUTES


=head2 Currencies => ArrayRef[Str|Undef]

The currencies.



=head2 Descriptions => ArrayRef[Str|Undef]

The descriptions.



=head2 Durations => ArrayRef[Int]

The durations, in seconds.



=head2 Filters => ArrayRef[L<Paws::SavingsPlans::SavingsPlanOfferingFilterElement>]

The filters.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
additional results, make another call with the returned token value.



=head2 NextToken => Str

The token for the next page of results.



=head2 OfferingIds => ArrayRef[Str|Undef]

The IDs of the offerings.



=head2 Operations => ArrayRef[Str|Undef]

The specific AWS operation for the line item in the billing report.



=head2 PaymentOptions => ArrayRef[Str|Undef]

The payment options.



=head2 PlanTypes => ArrayRef[Str|Undef]

The plan type.



=head2 ProductType => Str

The product type.

Valid values are: C<"EC2">, C<"Fargate">, C<"Lambda">, C<"SageMaker">

=head2 ServiceCodes => ArrayRef[Str|Undef]

The services.



=head2 UsageTypes => ArrayRef[Str|Undef]

The usage details of the line item in the billing report.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSavingsPlansOfferings in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

