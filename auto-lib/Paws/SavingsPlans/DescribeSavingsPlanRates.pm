
package Paws::SavingsPlans::DescribeSavingsPlanRates;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::SavingsPlans::Types qw/SavingsPlans_SavingsPlanRateFilter/;
  has Filters => (is => 'ro', isa => ArrayRef[SavingsPlans_SavingsPlanRateFilter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has SavingsPlanId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeSavingsPlanRates');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/DescribeSavingsPlanRates');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SavingsPlans::DescribeSavingsPlanRatesResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'Filters' => {
                              'class' => 'Paws::SavingsPlans::SavingsPlanRateFilter',
                              'type' => 'ArrayRef[SavingsPlans_SavingsPlanRateFilter]'
                            },
               'SavingsPlanId' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'SavingsPlanId' => 1
                  },
  'NameInRequest' => {
                       'Filters' => 'filters',
                       'MaxResults' => 'maxResults',
                       'NextToken' => 'nextToken',
                       'SavingsPlanId' => 'savingsPlanId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::DescribeSavingsPlanRates - Arguments for method DescribeSavingsPlanRates on L<Paws::SavingsPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSavingsPlanRates on the
L<AWS Savings Plans|Paws::SavingsPlans> service. Use the attributes of this class
as arguments to method DescribeSavingsPlanRates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSavingsPlanRates.

=head1 SYNOPSIS

    my $savingsplans = Paws->service('SavingsPlans');
    my $DescribeSavingsPlanRatesResponse =
      $savingsplans->DescribeSavingsPlanRates(
      SavingsPlanId => 'MySavingsPlanId',
      Filters       => [
        {
          Name => 'region'
          , # values: region, instanceType, productDescription, tenancy, productType, serviceCode, usageType, operation; OPTIONAL
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $NextToken     = $DescribeSavingsPlanRatesResponse->NextToken;
    my $SavingsPlanId = $DescribeSavingsPlanRatesResponse->SavingsPlanId;
    my $SearchResults = $DescribeSavingsPlanRatesResponse->SearchResults;

    # Returns a L<Paws::SavingsPlans::DescribeSavingsPlanRatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/savingsplans/DescribeSavingsPlanRates>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[SavingsPlans_SavingsPlanRateFilter]

The filters.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
additional results, make another call with the returned token value.



=head2 NextToken => Str

The token for the next page of results.



=head2 B<REQUIRED> SavingsPlanId => Str

The ID of the Savings Plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSavingsPlanRates in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

