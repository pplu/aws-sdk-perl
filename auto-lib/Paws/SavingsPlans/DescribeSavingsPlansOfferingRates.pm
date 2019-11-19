
package Paws::SavingsPlans::DescribeSavingsPlansOfferingRates;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int Undef/;
  use Paws::SavingsPlans::Types qw/SavingsPlans_SavingsPlanOfferingRateFilterElement/;
  has Filters => (is => 'ro', isa => ArrayRef[SavingsPlans_SavingsPlanOfferingRateFilterElement], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Operations => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Products => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SavingsPlanOfferingIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SavingsPlanPaymentOptions => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SavingsPlanTypes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has ServiceCodes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has UsageTypes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeSavingsPlansOfferingRates');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/DescribeSavingsPlansOfferingRates');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SavingsPlans::DescribeSavingsPlansOfferingRatesResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'MaxResults' => 'maxResults',
                       'NextToken' => 'nextToken',
                       'SavingsPlanOfferingIds' => 'savingsPlanOfferingIds',
                       'Products' => 'products',
                       'Filters' => 'filters',
                       'SavingsPlanPaymentOptions' => 'savingsPlanPaymentOptions',
                       'Operations' => 'operations',
                       'UsageTypes' => 'usageTypes',
                       'ServiceCodes' => 'serviceCodes',
                       'SavingsPlanTypes' => 'savingsPlanTypes'
                     },
  'types' => {
               'Filters' => {
                              'class' => 'Paws::SavingsPlans::SavingsPlanOfferingRateFilterElement',
                              'type' => 'ArrayRef[SavingsPlans_SavingsPlanOfferingRateFilterElement]'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'SavingsPlanOfferingIds' => {
                                             'type' => 'ArrayRef[Str|Undef]'
                                           },
               'Products' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               'UsageTypes' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'SavingsPlanPaymentOptions' => {
                                                'type' => 'ArrayRef[Str|Undef]'
                                              },
               'Operations' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'SavingsPlanTypes' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'ServiceCodes' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::DescribeSavingsPlansOfferingRates - Arguments for method DescribeSavingsPlansOfferingRates on L<Paws::SavingsPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSavingsPlansOfferingRates on the
L<AWS Savings Plans|Paws::SavingsPlans> service. Use the attributes of this class
as arguments to method DescribeSavingsPlansOfferingRates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSavingsPlansOfferingRates.

=head1 SYNOPSIS

    my $savingsplans = Paws->service('SavingsPlans');
    my $DescribeSavingsPlansOfferingRatesResponse =
      $savingsplans->DescribeSavingsPlansOfferingRates(
      Filters => [
        {
          Name => 'region'
          , # values: region, instanceFamily, instanceType, productDescription, tenancy, productId; OPTIONAL
          Values => [ 'MyJsonSafeFilterValueString', ... ],    # OPTIONAL
        },
        ...
      ],                                                       # OPTIONAL
      MaxResults => 1,                                         # OPTIONAL
      NextToken  => 'MyPaginationToken',                       # OPTIONAL
      Operations => [
        'MySavingsPlanRateOperation', ...                      # max: 255
      ],                                                       # OPTIONAL
      Products => [
        'EC2', ...    # values: EC2, Fargate
      ],              # OPTIONAL
      SavingsPlanOfferingIds    => [ 'MyUUID', ... ],    # OPTIONAL
      SavingsPlanPaymentOptions => [
        'All Upfront', ...    # values: All Upfront, Partial Upfront, No Upfront
      ],                      # OPTIONAL
      SavingsPlanTypes => [
        'Compute', ...        # values: Compute, EC2Instance
      ],                      # OPTIONAL
      ServiceCodes => [
        'AmazonEC2', ...      # values: AmazonEC2, AmazonECS
      ],                      # OPTIONAL
      UsageTypes => [
        'MySavingsPlanRateUsageType', ...    # max: 255
      ],                                     # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeSavingsPlansOfferingRatesResponse->NextToken;
    my $SearchResults =
      $DescribeSavingsPlansOfferingRatesResponse->SearchResults;

# Returns a L<Paws::SavingsPlans::DescribeSavingsPlansOfferingRatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/savingsplans/DescribeSavingsPlansOfferingRates>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[SavingsPlans_SavingsPlanOfferingRateFilterElement]

The filters.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
additional results, make another call with the returned token value.



=head2 NextToken => Str

The token for the next page of results.



=head2 Operations => ArrayRef[Str|Undef]

The specific AWS operation for the line item in the billing report.



=head2 Products => ArrayRef[Str|Undef]

The AWS products.



=head2 SavingsPlanOfferingIds => ArrayRef[Str|Undef]

The IDs of the offerings.



=head2 SavingsPlanPaymentOptions => ArrayRef[Str|Undef]

The payment options.



=head2 SavingsPlanTypes => ArrayRef[Str|Undef]

The plan types.



=head2 ServiceCodes => ArrayRef[Str|Undef]

The services.



=head2 UsageTypes => ArrayRef[Str|Undef]

The usage details of the line item in the billing report.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSavingsPlansOfferingRates in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

