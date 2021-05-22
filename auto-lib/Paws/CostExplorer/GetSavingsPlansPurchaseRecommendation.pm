
package Paws::CostExplorer::GetSavingsPlansPurchaseRecommendation;
  use Moose;
  has AccountScope => (is => 'ro', isa => 'Str');
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has LookbackPeriodInDays => (is => 'ro', isa => 'Str', required => 1);
  has NextPageToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');
  has PaymentOption => (is => 'ro', isa => 'Str', required => 1);
  has SavingsPlansType => (is => 'ro', isa => 'Str', required => 1);
  has TermInYears => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSavingsPlansPurchaseRecommendation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetSavingsPlansPurchaseRecommendationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlansPurchaseRecommendation - Arguments for method GetSavingsPlansPurchaseRecommendation on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSavingsPlansPurchaseRecommendation on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetSavingsPlansPurchaseRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSavingsPlansPurchaseRecommendation.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetSavingsPlansPurchaseRecommendationResponse =
      $ce->GetSavingsPlansPurchaseRecommendation(
      LookbackPeriodInDays => 'SEVEN_DAYS',
      PaymentOption        => 'NO_UPFRONT',
      SavingsPlansType     => 'COMPUTE_SP',
      TermInYears          => 'ONE_YEAR',
      AccountScope         => 'PAYER',        # OPTIONAL
      Filter               => {
        And            => [ <Expression>, ... ],    # OPTIONAL
        CostCategories => {
          Key          => 'MyCostCategoryName',     # min: 1, max: 50; OPTIONAL
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
          ],    # OPTIONAL
          Values => [
            'MyValue', ...    # max: 1024
          ],                  # OPTIONAL
        },    # OPTIONAL
        Dimensions => {
          Key => 'AZ'
          , # values: AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE; OPTIONAL
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
          ],    # OPTIONAL
          Values => [
            'MyValue', ...    # max: 1024
          ],                  # OPTIONAL
        },    # OPTIONAL
        Not  => <Expression>,
        Or   => [ <Expression>, ... ],    # OPTIONAL
        Tags => {
          Key          => 'MyTagKey',     # max: 1024; OPTIONAL
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
          ],    # OPTIONAL
          Values => [
            'MyValue', ...    # max: 1024
          ],                  # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      NextPageToken => 'MyNextPageToken',    # OPTIONAL
      PageSize      => 1,                    # OPTIONAL
      );

    # Results:
    my $Metadata = $GetSavingsPlansPurchaseRecommendationResponse->Metadata;
    my $NextPageToken =
      $GetSavingsPlansPurchaseRecommendationResponse->NextPageToken;
    my $SavingsPlansPurchaseRecommendation =
      $GetSavingsPlansPurchaseRecommendationResponse
      ->SavingsPlansPurchaseRecommendation;

# Returns a L<Paws::CostExplorer::GetSavingsPlansPurchaseRecommendationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetSavingsPlansPurchaseRecommendation>

=head1 ATTRIBUTES


=head2 AccountScope => Str

The account scope that you want your recommendations for. Amazon Web
Services calculates recommendations including the management account
and member accounts if the value is set to C<PAYER>. If the value is
C<LINKED>, recommendations are calculated for individual member
accounts only.

Valid values are: C<"PAYER">, C<"LINKED">

=head2 Filter => L<Paws::CostExplorer::Expression>

You can filter your recommendations by Account ID with the
C<LINKED_ACCOUNT> dimension. To filter your recommendations by Account
ID, specify C<Key> as C<LINKED_ACCOUNT> and C<Value> as the
comma-separated Acount ID(s) for which you want to see Savings Plans
purchase recommendations.

For GetSavingsPlansPurchaseRecommendation, the C<Filter> does not
include C<CostCategories> or C<Tags>. It only includes C<Dimensions>.
With C<Dimensions>, C<Key> must be C<LINKED_ACCOUNT> and C<Value> can
be a single Account ID or multiple comma-separated Account IDs for
which you want to see Savings Plans Purchase Recommendations. C<AND>
and C<OR> operators are not supported.



=head2 B<REQUIRED> LookbackPeriodInDays => Str

The lookback period used to generate the recommendation.

Valid values are: C<"SEVEN_DAYS">, C<"THIRTY_DAYS">, C<"SIXTY_DAYS">

=head2 NextPageToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.



=head2 PageSize => Int

The number of recommendations that you want returned in a single
response object.



=head2 B<REQUIRED> PaymentOption => Str

The payment option used to generate these recommendations.

Valid values are: C<"NO_UPFRONT">, C<"PARTIAL_UPFRONT">, C<"ALL_UPFRONT">, C<"LIGHT_UTILIZATION">, C<"MEDIUM_UTILIZATION">, C<"HEAVY_UTILIZATION">

=head2 B<REQUIRED> SavingsPlansType => Str

The Savings Plans recommendation type requested.

Valid values are: C<"COMPUTE_SP">, C<"EC2_INSTANCE_SP">, C<"SAGEMAKER_SP">

=head2 B<REQUIRED> TermInYears => Str

The savings plan recommendation term used to generate these
recommendations.

Valid values are: C<"ONE_YEAR">, C<"THREE_YEARS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSavingsPlansPurchaseRecommendation in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

