package Paws::CostExplorer;
  use Moose;
  sub service { 'ce' }
  sub signing_name { 'ce' }
  sub version { '2017-10-25' }
  sub target_prefix { 'AWSInsightsIndexService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateAnomalyMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::CreateAnomalyMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAnomalySubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::CreateAnomalySubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCostCategoryDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::CreateCostCategoryDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAnomalyMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::DeleteAnomalyMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAnomalySubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::DeleteAnomalySubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCostCategoryDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::DeleteCostCategoryDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCostCategoryDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::DescribeCostCategoryDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnomalies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetAnomalies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnomalyMonitors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetAnomalyMonitors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnomalySubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetAnomalySubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCostAndUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetCostAndUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCostAndUsageWithResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetCostAndUsageWithResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCostCategories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetCostCategories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCostForecast {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetCostForecast', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDimensionValues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetDimensionValues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReservationCoverage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetReservationCoverage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReservationPurchaseRecommendation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetReservationPurchaseRecommendation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReservationUtilization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetReservationUtilization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRightsizingRecommendation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetRightsizingRecommendation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSavingsPlansCoverage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetSavingsPlansCoverage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSavingsPlansPurchaseRecommendation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetSavingsPlansPurchaseRecommendation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSavingsPlansUtilization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetSavingsPlansUtilization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSavingsPlansUtilizationDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetSavingsPlansUtilizationDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUsageForecast {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetUsageForecast', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCostCategoryDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::ListCostCategoryDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ProvideAnomalyFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::ProvideAnomalyFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAnomalyMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::UpdateAnomalyMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAnomalySubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::UpdateAnomalySubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCostCategoryDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::UpdateCostCategoryDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateAnomalyMonitor CreateAnomalySubscription CreateCostCategoryDefinition DeleteAnomalyMonitor DeleteAnomalySubscription DeleteCostCategoryDefinition DescribeCostCategoryDefinition GetAnomalies GetAnomalyMonitors GetAnomalySubscriptions GetCostAndUsage GetCostAndUsageWithResources GetCostCategories GetCostForecast GetDimensionValues GetReservationCoverage GetReservationPurchaseRecommendation GetReservationUtilization GetRightsizingRecommendation GetSavingsPlansCoverage GetSavingsPlansPurchaseRecommendation GetSavingsPlansUtilization GetSavingsPlansUtilizationDetails GetTags GetUsageForecast ListCostCategoryDefinitions ProvideAnomalyFeedback UpdateAnomalyMonitor UpdateAnomalySubscription UpdateCostCategoryDefinition / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer - Perl Interface to AWS AWS Cost Explorer Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CostExplorer');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The Cost Explorer API enables you to programmatically query your cost
and usage data. You can query for aggregated data such as total monthly
costs or total daily usage. You can also query for granular data, such
as the number of daily write operations for Amazon DynamoDB database
tables in your production environment.

Service Endpoint

The Cost Explorer API provides the following endpoint:

=over

=item *

C<https://ce.us-east-1.amazonaws.com>

=back

For information about costs associated with the Cost Explorer API, see
AWS Cost Management Pricing
(http://aws.amazon.com/aws-cost-management/pricing/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/account-billing/>


=head1 METHODS

=head2 CreateAnomalyMonitor

=over

=item AnomalyMonitor => L<Paws::CostExplorer::AnomalyMonitor>


=back

Each argument is described in detail in: L<Paws::CostExplorer::CreateAnomalyMonitor>

Returns: a L<Paws::CostExplorer::CreateAnomalyMonitorResponse> instance

Creates a new cost anomaly detection monitor with the requested type
and monitor specification.


=head2 CreateAnomalySubscription

=over

=item AnomalySubscription => L<Paws::CostExplorer::AnomalySubscription>


=back

Each argument is described in detail in: L<Paws::CostExplorer::CreateAnomalySubscription>

Returns: a L<Paws::CostExplorer::CreateAnomalySubscriptionResponse> instance

Adds a subscription to a cost anomaly detection monitor. You can use
each subscription to define subscribers with email or SNS
notifications. Email subscribers can set a dollar threshold and a time
frequency for receiving notifications.


=head2 CreateCostCategoryDefinition

=over

=item Name => Str

=item Rules => ArrayRef[L<Paws::CostExplorer::CostCategoryRule>]

=item RuleVersion => Str

=item [DefaultValue => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::CreateCostCategoryDefinition>

Returns: a L<Paws::CostExplorer::CreateCostCategoryDefinitionResponse> instance

Creates a new Cost Category with the requested name and rules.


=head2 DeleteAnomalyMonitor

=over

=item MonitorArn => Str


=back

Each argument is described in detail in: L<Paws::CostExplorer::DeleteAnomalyMonitor>

Returns: a L<Paws::CostExplorer::DeleteAnomalyMonitorResponse> instance

Deletes a cost anomaly monitor.


=head2 DeleteAnomalySubscription

=over

=item SubscriptionArn => Str


=back

Each argument is described in detail in: L<Paws::CostExplorer::DeleteAnomalySubscription>

Returns: a L<Paws::CostExplorer::DeleteAnomalySubscriptionResponse> instance

Deletes a cost anomaly subscription.


=head2 DeleteCostCategoryDefinition

=over

=item CostCategoryArn => Str


=back

Each argument is described in detail in: L<Paws::CostExplorer::DeleteCostCategoryDefinition>

Returns: a L<Paws::CostExplorer::DeleteCostCategoryDefinitionResponse> instance

Deletes a Cost Category. Expenses from this month going forward will no
longer be categorized with this Cost Category.


=head2 DescribeCostCategoryDefinition

=over

=item CostCategoryArn => Str

=item [EffectiveOn => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::DescribeCostCategoryDefinition>

Returns: a L<Paws::CostExplorer::DescribeCostCategoryDefinitionResponse> instance

Returns the name, ARN, rules, definition, and effective dates of a Cost
Category that's defined in the account.

You have the option to use C<EffectiveOn> to return a Cost Category
that is active on a specific date. If there is no C<EffectiveOn>
specified, youE<rsquo>ll see a Cost Category that is effective on the
current date. If Cost Category is still effective, C<EffectiveEnd> is
omitted in the response.


=head2 GetAnomalies

=over

=item DateInterval => L<Paws::CostExplorer::AnomalyDateInterval>

=item [Feedback => Str]

=item [MaxResults => Int]

=item [MonitorArn => Str]

=item [NextPageToken => Str]

=item [TotalImpact => L<Paws::CostExplorer::TotalImpactFilter>]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetAnomalies>

Returns: a L<Paws::CostExplorer::GetAnomaliesResponse> instance

Retrieves all of the cost anomalies detected on your account, during
the time period specified by the C<DateInterval> object.


=head2 GetAnomalyMonitors

=over

=item [MaxResults => Int]

=item [MonitorArnList => ArrayRef[Str|Undef]]

=item [NextPageToken => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetAnomalyMonitors>

Returns: a L<Paws::CostExplorer::GetAnomalyMonitorsResponse> instance

Retrieves the cost anomaly monitor definitions for your account. You
can filter using a list of cost anomaly monitor Amazon Resource Names
(ARNs).


=head2 GetAnomalySubscriptions

=over

=item [MaxResults => Int]

=item [MonitorArn => Str]

=item [NextPageToken => Str]

=item [SubscriptionArnList => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetAnomalySubscriptions>

Returns: a L<Paws::CostExplorer::GetAnomalySubscriptionsResponse> instance

Retrieves the cost anomaly subscription objects for your account. You
can filter using a list of cost anomaly monitor Amazon Resource Names
(ARNs).


=head2 GetCostAndUsage

=over

=item Granularity => Str

=item Metrics => ArrayRef[Str|Undef]

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>]]

=item [NextPageToken => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetCostAndUsage>

Returns: a L<Paws::CostExplorer::GetCostAndUsageResponse> instance

Retrieves cost and usage metrics for your account. You can specify
which cost and usage-related metric, such as C<BlendedCosts> or
C<UsageQuantity>, that you want the request to return. You can also
filter and group your data by various dimensions, such as C<SERVICE> or
C<AZ>, in a specific time range. For a complete list of valid
dimensions, see the GetDimensionValues
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html)
operation. Management account in an organization in AWS Organizations
have access to all member accounts.

For information about filter limitations, see Quotas and restrictions
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html)
in the I<Billing and Cost Management User Guide>.


=head2 GetCostAndUsageWithResources

=over

=item Filter => L<Paws::CostExplorer::Expression>

=item Granularity => Str

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>]]

=item [Metrics => ArrayRef[Str|Undef]]

=item [NextPageToken => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetCostAndUsageWithResources>

Returns: a L<Paws::CostExplorer::GetCostAndUsageWithResourcesResponse> instance

Retrieves cost and usage metrics with resources for your account. You
can specify which cost and usage-related metric, such as
C<BlendedCosts> or C<UsageQuantity>, that you want the request to
return. You can also filter and group your data by various dimensions,
such as C<SERVICE> or C<AZ>, in a specific time range. For a complete
list of valid dimensions, see the GetDimensionValues
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html)
operation. Management account in an organization in AWS Organizations
have access to all member accounts. This API is currently available for
the Amazon Elastic Compute Cloud E<ndash> Compute service only.

This is an opt-in only feature. You can enable this feature from the
Cost Explorer Settings page. For information on how to access the
Settings page, see Controlling Access for Cost Explorer
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html)
in the I<AWS Billing and Cost Management User Guide>.


=head2 GetCostCategories

=over

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [CostCategoryName => Str]

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [MaxResults => Int]

=item [NextPageToken => Str]

=item [SearchString => Str]

=item [SortBy => ArrayRef[L<Paws::CostExplorer::SortDefinition>]]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetCostCategories>

Returns: a L<Paws::CostExplorer::GetCostCategoriesResponse> instance

Retrieves an array of Cost Category names and values incurred cost.

If some Cost Category names and values are not associated with any
cost, they will not be returned by this API.


=head2 GetCostForecast

=over

=item Granularity => Str

=item Metric => Str

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [PredictionIntervalLevel => Int]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetCostForecast>

Returns: a L<Paws::CostExplorer::GetCostForecastResponse> instance

Retrieves a forecast for how much Amazon Web Services predicts that you
will spend over the forecast time period that you select, based on your
past costs.


=head2 GetDimensionValues

=over

=item Dimension => Str

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [Context => Str]

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [MaxResults => Int]

=item [NextPageToken => Str]

=item [SearchString => Str]

=item [SortBy => ArrayRef[L<Paws::CostExplorer::SortDefinition>]]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetDimensionValues>

Returns: a L<Paws::CostExplorer::GetDimensionValuesResponse> instance

Retrieves all available filter values for a specified filter over a
period of time. You can search the dimension values for an arbitrary
string.


=head2 GetReservationCoverage

=over

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [Granularity => Str]

=item [GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>]]

=item [MaxResults => Int]

=item [Metrics => ArrayRef[Str|Undef]]

=item [NextPageToken => Str]

=item [SortBy => L<Paws::CostExplorer::SortDefinition>]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetReservationCoverage>

Returns: a L<Paws::CostExplorer::GetReservationCoverageResponse> instance

Retrieves the reservation coverage for your account. This enables you
to see how much of your Amazon Elastic Compute Cloud, Amazon
ElastiCache, Amazon Relational Database Service, or Amazon Redshift
usage is covered by a reservation. An organization's management account
can see the coverage of the associated member accounts. This supports
dimensions, Cost Categories, and nested expressions. For any time
period, you can filter data about reservation usage by the following
dimensions:

=over

=item *

AZ

=item *

CACHE_ENGINE

=item *

DATABASE_ENGINE

=item *

DEPLOYMENT_OPTION

=item *

INSTANCE_TYPE

=item *

LINKED_ACCOUNT

=item *

OPERATING_SYSTEM

=item *

PLATFORM

=item *

REGION

=item *

SERVICE

=item *

TAG

=item *

TENANCY

=back

To determine valid values for a dimension, use the
C<GetDimensionValues> operation.


=head2 GetReservationPurchaseRecommendation

=over

=item Service => Str

=item [AccountId => Str]

=item [AccountScope => Str]

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [LookbackPeriodInDays => Str]

=item [NextPageToken => Str]

=item [PageSize => Int]

=item [PaymentOption => Str]

=item [ServiceSpecification => L<Paws::CostExplorer::ServiceSpecification>]

=item [TermInYears => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetReservationPurchaseRecommendation>

Returns: a L<Paws::CostExplorer::GetReservationPurchaseRecommendationResponse> instance

Gets recommendations for which reservations to purchase. These
recommendations could help you reduce your costs. Reservations provide
a discounted hourly rate (up to 75%) compared to On-Demand pricing.

AWS generates your recommendations by identifying your On-Demand usage
during a specific time period and collecting your usage into categories
that are eligible for a reservation. After AWS has these categories, it
simulates every combination of reservations in each category of usage
to identify the best number of each type of RI to purchase to maximize
your estimated savings.

For example, AWS automatically aggregates your Amazon EC2 Linux, shared
tenancy, and c4 family usage in the US West (Oregon) Region and
recommends that you buy size-flexible regional reservations to apply to
the c4 family usage. AWS recommends the smallest size instance in an
instance family. This makes it easier to purchase a size-flexible RI.
AWS also shows the equal number of normalized units so that you can
purchase any instance size that you want. For this example, your RI
recommendation would be for C<c4.large> because that is the smallest
size instance in the c4 instance family.


=head2 GetReservationUtilization

=over

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [Granularity => Str]

=item [GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>]]

=item [MaxResults => Int]

=item [NextPageToken => Str]

=item [SortBy => L<Paws::CostExplorer::SortDefinition>]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetReservationUtilization>

Returns: a L<Paws::CostExplorer::GetReservationUtilizationResponse> instance

Retrieves the reservation utilization for your account. Management
account in an organization have access to member accounts. You can
filter data by dimensions in a time period. You can use
C<GetDimensionValues> to determine the possible dimension values.
Currently, you can group only by C<SUBSCRIPTION_ID>.


=head2 GetRightsizingRecommendation

=over

=item Service => Str

=item [Configuration => L<Paws::CostExplorer::RightsizingRecommendationConfiguration>]

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [NextPageToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetRightsizingRecommendation>

Returns: a L<Paws::CostExplorer::GetRightsizingRecommendationResponse> instance

Creates recommendations that help you save cost by identifying idle and
underutilized Amazon EC2 instances.

Recommendations are generated to either downsize or terminate
instances, along with providing savings detail and metrics. For details
on calculation and function, see Optimizing Your Cost with Rightsizing
Recommendations
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html)
in the I<AWS Billing and Cost Management User Guide>.


=head2 GetSavingsPlansCoverage

=over

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [Granularity => Str]

=item [GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>]]

=item [MaxResults => Int]

=item [Metrics => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [SortBy => L<Paws::CostExplorer::SortDefinition>]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetSavingsPlansCoverage>

Returns: a L<Paws::CostExplorer::GetSavingsPlansCoverageResponse> instance

Retrieves the Savings Plans covered for your account. This enables you
to see how much of your cost is covered by a Savings Plan. An
organizationE<rsquo>s management account can see the coverage of the
associated member accounts. This supports dimensions, Cost Categories,
and nested expressions. For any time period, you can filter data for
Savings Plans usage with the following dimensions:

=over

=item *

C<LINKED_ACCOUNT>

=item *

C<REGION>

=item *

C<SERVICE>

=item *

C<INSTANCE_FAMILY>

=back

To determine valid values for a dimension, use the
C<GetDimensionValues> operation.


=head2 GetSavingsPlansPurchaseRecommendation

=over

=item LookbackPeriodInDays => Str

=item PaymentOption => Str

=item SavingsPlansType => Str

=item TermInYears => Str

=item [AccountScope => Str]

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [NextPageToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetSavingsPlansPurchaseRecommendation>

Returns: a L<Paws::CostExplorer::GetSavingsPlansPurchaseRecommendationResponse> instance

Retrieves your request parameters, Savings Plan Recommendations Summary
and Details.


=head2 GetSavingsPlansUtilization

=over

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [Granularity => Str]

=item [SortBy => L<Paws::CostExplorer::SortDefinition>]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetSavingsPlansUtilization>

Returns: a L<Paws::CostExplorer::GetSavingsPlansUtilizationResponse> instance

Retrieves the Savings Plans utilization for your account across date
ranges with daily or monthly granularity. Management account in an
organization have access to member accounts. You can use
C<GetDimensionValues> in C<SAVINGS_PLANS> to determine the possible
dimension values.

You cannot group by any dimension values for
C<GetSavingsPlansUtilization>.


=head2 GetSavingsPlansUtilizationDetails

=over

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [DataType => ArrayRef[Str|Undef]]

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::CostExplorer::SortDefinition>]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetSavingsPlansUtilizationDetails>

Returns: a L<Paws::CostExplorer::GetSavingsPlansUtilizationDetailsResponse> instance

Retrieves attribute data along with aggregate utilization and savings
data for a given time period. This doesn't support granular or grouped
data (daily/monthly) in response. You can't retrieve data by dates in a
single response similar to C<GetSavingsPlanUtilization>, but you have
the option to make multiple calls to
C<GetSavingsPlanUtilizationDetails> by providing individual dates. You
can use C<GetDimensionValues> in C<SAVINGS_PLANS> to determine the
possible dimension values.

C<GetSavingsPlanUtilizationDetails> internally groups data by
C<SavingsPlansArn>.


=head2 GetTags

=over

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [MaxResults => Int]

=item [NextPageToken => Str]

=item [SearchString => Str]

=item [SortBy => ArrayRef[L<Paws::CostExplorer::SortDefinition>]]

=item [TagKey => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetTags>

Returns: a L<Paws::CostExplorer::GetTagsResponse> instance

Queries for available tag keys and tag values for a specified period.
You can search the tag values for an arbitrary string.


=head2 GetUsageForecast

=over

=item Granularity => Str

=item Metric => Str

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [PredictionIntervalLevel => Int]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetUsageForecast>

Returns: a L<Paws::CostExplorer::GetUsageForecastResponse> instance

Retrieves a forecast for how much Amazon Web Services predicts that you
will use over the forecast time period that you select, based on your
past usage.


=head2 ListCostCategoryDefinitions

=over

=item [EffectiveOn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::ListCostCategoryDefinitions>

Returns: a L<Paws::CostExplorer::ListCostCategoryDefinitionsResponse> instance

Returns the name, ARN, C<NumberOfRules> and effective dates of all Cost
Categories defined in the account. You have the option to use
C<EffectiveOn> to return a list of Cost Categories that were active on
a specific date. If there is no C<EffectiveOn> specified, youE<rsquo>ll
see Cost Categories that are effective on the current date. If Cost
Category is still effective, C<EffectiveEnd> is omitted in the
response. C<ListCostCategoryDefinitions> supports pagination. The
request can have a C<MaxResults> range up to 100.


=head2 ProvideAnomalyFeedback

=over

=item AnomalyId => Str

=item Feedback => Str


=back

Each argument is described in detail in: L<Paws::CostExplorer::ProvideAnomalyFeedback>

Returns: a L<Paws::CostExplorer::ProvideAnomalyFeedbackResponse> instance

Modifies the feedback property of a given cost anomaly.


=head2 UpdateAnomalyMonitor

=over

=item MonitorArn => Str

=item [MonitorName => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::UpdateAnomalyMonitor>

Returns: a L<Paws::CostExplorer::UpdateAnomalyMonitorResponse> instance

Updates an existing cost anomaly monitor. The changes made are applied
going forward, and does not change anomalies detected in the past.


=head2 UpdateAnomalySubscription

=over

=item SubscriptionArn => Str

=item [Frequency => Str]

=item [MonitorArnList => ArrayRef[Str|Undef]]

=item [Subscribers => ArrayRef[L<Paws::CostExplorer::Subscriber>]]

=item [SubscriptionName => Str]

=item [Threshold => Num]


=back

Each argument is described in detail in: L<Paws::CostExplorer::UpdateAnomalySubscription>

Returns: a L<Paws::CostExplorer::UpdateAnomalySubscriptionResponse> instance

Updates an existing cost anomaly monitor subscription.


=head2 UpdateCostCategoryDefinition

=over

=item CostCategoryArn => Str

=item Rules => ArrayRef[L<Paws::CostExplorer::CostCategoryRule>]

=item RuleVersion => Str

=item [DefaultValue => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::UpdateCostCategoryDefinition>

Returns: a L<Paws::CostExplorer::UpdateCostCategoryDefinitionResponse> instance

Updates an existing Cost Category. Changes made to the Cost Category
rules will be used to categorize the current monthE<rsquo>s expenses
and future expenses. This wonE<rsquo>t change categorization for the
previous months.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

