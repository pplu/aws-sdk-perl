
package Paws::CostExplorer::GetReservationCoverage;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has Granularity => (is => 'ro', isa => 'Str');
  has GroupBy => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::GroupDefinition]');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReservationCoverage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetReservationCoverageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetReservationCoverage - Arguments for method GetReservationCoverage on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReservationCoverage on the 
AWS Cost Explorer Service service. Use the attributes of this class
as arguments to method GetReservationCoverage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReservationCoverage.

As an example:

  $service_obj->GetReservationCoverage(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filter => L<Paws::CostExplorer::Expression>

Filters utilization data by dimensions. You can filter by the following
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

C<GetReservationCoverage> uses the same C< Expression
(http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html)
> object as the other operations, but only C<AND> is supported among
each dimension. You can nest only one level deep. If there are multiple
values for a dimension, they are OR'd together.



=head2 Granularity => Str

The granularity of the AWS cost data for the reservation. Valid values
are C<MONTHLY> and C<DAILY>.

If C<GroupBy> is set, C<Granularity> can't be set. If C<Granularity>
isn't set, the response object doesn't include C<Granularity>, either
C<MONTHLY> or C<DAILY>.

Valid values are: C<"DAILY">, C<"MONTHLY">

=head2 GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>]

You can group the data by the following attributes:

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

TAG

=item *

TENANCY

=back




=head2 NextPageToken => Str

The token to retrieve the next set of results. AWS provides the token
when the response from a previous call has more results than the
maximum page size.



=head2 B<REQUIRED> TimePeriod => L<Paws::CostExplorer::DateInterval>

The start and end dates of the period for which you want to retrieve
data about reservation coverage. You can retrieve data for a maximum of
13 months: the last 12 months and the current month. The start date is
inclusive, but the end date is exclusive. For example, if C<start> is
C<2017-01-01> and C<end> is C<2017-05-01>, then the cost and usage data
is retrieved from C<2017-01-01> up to and including C<2017-04-30> but
not including C<2017-05-01>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReservationCoverage in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

