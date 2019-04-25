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

  
  sub GetCostAndUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetCostAndUsage', @_);
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
  sub GetTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetCostAndUsage GetCostForecast GetDimensionValues GetReservationCoverage GetReservationPurchaseRecommendation GetReservationUtilization GetTags / }

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
(https://aws.amazon.com/aws-cost-management/pricing/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/account-billing/>


=head1 METHODS

=head2 GetCostAndUsage

=over

=item [Filter => L<Paws::CostExplorer::Expression>]

=item [Granularity => Str]

=item [GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>]]

=item [Metrics => ArrayRef[Str|Undef]]

=item [NextPageToken => Str]

=item [TimePeriod => L<Paws::CostExplorer::DateInterval>]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetCostAndUsage>

Returns: a L<Paws::CostExplorer::GetCostAndUsageResponse> instance

Retrieves cost and usage metrics for your account. You can specify
which cost and usage-related metric, such as C<BlendedCosts> or
C<UsageQuantity>, that you want the request to return. You can also
filter and group your data by various dimensions, such as C<SERVICE> or
C<AZ>, in a specific time range. For a complete list of valid
dimensions, see the GetDimensionValues
(http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html)
operation. Master accounts in an organization in AWS Organizations have
access to all member accounts.


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

=item [NextPageToken => Str]

=item [SearchString => Str]


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

=item [Metrics => ArrayRef[Str|Undef]]

=item [NextPageToken => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetReservationCoverage>

Returns: a L<Paws::CostExplorer::GetReservationCoverageResponse> instance

Retrieves the reservation coverage for your account. This enables you
to see how much of your Amazon Elastic Compute Cloud, Amazon
ElastiCache, Amazon Relational Database Service, or Amazon Redshift
usage is covered by a reservation. An organization's master account can
see the coverage of the associated member accounts. For any time
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

=item [NextPageToken => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetReservationUtilization>

Returns: a L<Paws::CostExplorer::GetReservationUtilizationResponse> instance

Retrieves the reservation utilization for your account. Master accounts
in an organization have access to member accounts. You can filter data
by dimensions in a time period. You can use C<GetDimensionValues> to
determine the possible dimension values. Currently, you can group only
by C<SUBSCRIPTION_ID>.


=head2 GetTags

=over

=item TimePeriod => L<Paws::CostExplorer::DateInterval>

=item [NextPageToken => Str]

=item [SearchString => Str]

=item [TagKey => Str]


=back

Each argument is described in detail in: L<Paws::CostExplorer::GetTags>

Returns: a L<Paws::CostExplorer::GetTagsResponse> instance

Queries for available tag keys and tag values for a specified period.
You can search the tag values for an arbitrary string.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

