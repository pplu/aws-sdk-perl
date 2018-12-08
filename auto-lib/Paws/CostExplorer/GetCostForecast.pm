
package Paws::CostExplorer::GetCostForecast;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has Granularity => (is => 'ro', isa => 'Str', required => 1);
  has Metric => (is => 'ro', isa => 'Str', required => 1);
  has PredictionIntervalLevel => (is => 'ro', isa => 'Int');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCostForecast');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetCostForecastResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetCostForecast - Arguments for method GetCostForecast on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCostForecast on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetCostForecast.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCostForecast.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetCostForecastResponse = $ce->GetCostForecast(
      Granularity => 'DAILY',
      Metric      => 'BLENDED_COST',
      TimePeriod  => {
        End   => 'MyYearMonthDay',
        Start => 'MyYearMonthDay',

      },
      Filter => {
        And => [ <Expression>, ... ],    # OPTIONAL
        Dimensions => {
          Key => 'AZ'
          , # values: AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID; OPTIONAL
          Values => [ 'MyValue', ... ],    # OPTIONAL
        },    # OPTIONAL
        Not  => <Expression>,
        Or   => [ <Expression>, ... ],    # OPTIONAL
        Tags => {
          Key => 'MyTagKey',               # OPTIONAL
          Values => [ 'MyValue', ... ],    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      PredictionIntervalLevel => 1,    # OPTIONAL
    );

    # Results:
    my $ForecastResultsByTime = $GetCostForecastResponse->ForecastResultsByTime;
    my $Total                 = $GetCostForecastResponse->Total;

    # Returns a L<Paws::CostExplorer::GetCostForecastResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetCostForecast>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::CostExplorer::Expression>

The filters that you want to use to filter your forecast. Cost Explorer
API supports all of the Cost Explorer filters.



=head2 B<REQUIRED> Granularity => Str

How granular you want the forecast to be. You can get 3 months of
C<DAILY> forecasts or 12 months of C<MONTHLY> forecasts.

The C<GetCostForecast> operation supports only C<DAILY> and C<MONTHLY>
granularities.

Valid values are: C<"DAILY">, C<"MONTHLY">, C<"HOURLY">

=head2 B<REQUIRED> Metric => Str

Which metric Cost Explorer uses to create your forecast. For more
information about blended and unblended rates, see Why does the
"blended" annotation appear on some line items in my bill?
(https://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/).

Valid values for a C<GetCostForecast> call are the following:

=over

=item *

AmortizedCost

=item *

BlendedCost

=item *

NetAmortizedCost

=item *

NetUnblendedCost

=item *

UnblendedCost

=back


Valid values are: C<"BLENDED_COST">, C<"UNBLENDED_COST">, C<"AMORTIZED_COST">, C<"NET_UNBLENDED_COST">, C<"NET_AMORTIZED_COST">, C<"USAGE_QUANTITY">, C<"NORMALIZED_USAGE_AMOUNT">

=head2 PredictionIntervalLevel => Int

Cost Explorer always returns the mean forecast as a single point. You
can request a prediction interval around the mean by specifying a
confidence level. The higher the confidence level, the more confident
Cost Explorer is about the actual value falling in the prediction
interval. Higher confidence levels result in wider prediction
intervals.



=head2 B<REQUIRED> TimePeriod => L<Paws::CostExplorer::DateInterval>

The period of time that you want the forecast to cover.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCostForecast in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

