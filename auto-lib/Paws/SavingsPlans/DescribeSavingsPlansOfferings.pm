
package Paws::SavingsPlans::DescribeSavingsPlansOfferings;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Int/;
  use Paws::SavingsPlans::Types qw/SavingsPlans_SavingsPlanOfferingFilterElement/;
  has Currencies => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Descriptions => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Durations => (is => 'ro', isa => ArrayRef[Int], predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[SavingsPlans_SavingsPlanOfferingFilterElement], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has OfferingIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Operations => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has PaymentOptions => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has PlanTypes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has ProductType => (is => 'ro', isa => Str, predicate => 1);
  has ServiceCodes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has UsageTypes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeSavingsPlansOfferings');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/DescribeSavingsPlansOfferings');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SavingsPlans::DescribeSavingsPlansOfferingsResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PlanTypes' => 'planTypes',
                       'ProductType' => 'productType',
                       'NextToken' => 'nextToken',
                       'Filters' => 'filters',
                       'Currencies' => 'currencies',
                       'ServiceCodes' => 'serviceCodes',
                       'PaymentOptions' => 'paymentOptions',
                       'Descriptions' => 'descriptions',
                       'MaxResults' => 'maxResults',
                       'Durations' => 'durations',
                       'Operations' => 'operations',
                       'OfferingIds' => 'offeringIds',
                       'UsageTypes' => 'usageTypes'
                     },
  'types' => {
               'Operations' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'UsageTypes' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'OfferingIds' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'Durations' => {
                                'type' => 'ArrayRef[Int]'
                              },
               'Descriptions' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'ServiceCodes' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'PaymentOptions' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'Currencies' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'type' => 'ArrayRef[SavingsPlans_SavingsPlanOfferingFilterElement]',
                              'class' => 'Paws::SavingsPlans::SavingsPlanOfferingFilterElement'
                            },
               'PlanTypes' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'ProductType' => {
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
      ],              # OPTIONAL
      Descriptions => [ 'MySavingsPlanDescription', ... ],    # OPTIONAL
      Durations    => [ 1,                          ... ],    # OPTIONAL
      Filters      => [
        {
          Name => 'region',    # values: region, instanceFamily; OPTIONAL
          Values => [ 'MyJsonSafeFilterValueString', ... ],    # OPTIONAL
        },
        ...
      ],                                                       # OPTIONAL
      MaxResults  => 1,                                        # OPTIONAL
      NextToken   => 'MyPaginationToken',                      # OPTIONAL
      OfferingIds => [ 'MyUUID', ... ],                        # OPTIONAL
      Operations  => [
        'MySavingsPlanOperation', ...                          # max: 255
      ],                                                       # OPTIONAL
      PaymentOptions => [
        'All Upfront', ...    # values: All Upfront, Partial Upfront, No Upfront
      ],                      # OPTIONAL
      PlanTypes => [
        'Compute', ...        # values: Compute, EC2Instance
      ],                      # OPTIONAL
      ProductType  => 'EC2',  # OPTIONAL
      ServiceCodes => [
        'MySavingsPlanServiceCode', ...    # max: 255
      ],                                   # OPTIONAL
      UsageTypes => [
        'MySavingsPlanUsageType', ...      # max: 255
      ],                                   # OPTIONAL
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



=head2 Filters => ArrayRef[SavingsPlans_SavingsPlanOfferingFilterElement]

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

Valid values are: C<"EC2">, C<"Fargate">

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

