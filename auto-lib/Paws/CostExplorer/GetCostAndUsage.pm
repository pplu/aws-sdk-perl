
package Paws::CostExplorer::GetCostAndUsage;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has Granularity => (is => 'ro', isa => 'Str');
  has GroupBy => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::GroupDefinition]');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCostAndUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetCostAndUsageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetCostAndUsage - Arguments for method GetCostAndUsage on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCostAndUsage on the 
AWS Cost Explorer Service service. Use the attributes of this class
as arguments to method GetCostAndUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCostAndUsage.

As an example:

  $service_obj->GetCostAndUsage(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filter => L<Paws::CostExplorer::Expression>

Filters AWS costs by different dimensions. For example, you can specify
C<Service> and C<Linked Account> and get the costs associated with that
account's usage of that service. You can nest C<Expression> objects to
define any combination of dimension filters. For more information, see
the C<Expression> object or C<More Examples>.



=head2 Granularity => Str

Sets the AWS cost granularity to C<MONTHLY> or C<DAILY>.

Valid values are: C<"DAILY">, C<"MONTHLY">

=head2 GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>]

You can group AWS costs using up to two different groups, either
dimensions, tag keys, or both.

When you group by tag key, you get all tag values, including empty
strings.

Valid values are: C<AZ>, C<INSTANCE_TYPE>, C<LINKED_ACCCOUNT>,
C<OPERATION>, C<PURCHASE_TYPE>, C<SERVICE>, C<USAGE_TYPE>, C<TAGS>, and
C<PLATFORM>.



=head2 Metrics => ArrayRef[Str|Undef]

Which metrics are returned in the query. For more information about
blended and unblended rates, see
https://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/.

Valid values are C<BlendedCost>, C<UnblendedCost>, and
C<UsageQuantity>.

If you return the C<UsageQuantity> metric, the service aggregates all
usage numbers without taking into account the units. For example, if
you aggregate C<usageQuantity> across all of EC2, the results aren't
meaningful because EC2 compute hours and data transfer are measured in
different units (for example, hours vs. GB). To get more meaningful
C<UsageQuantity> metrics, filter by C<UsageType> or C<UsageTypeGroups>.



=head2 NextPageToken => Str

The token to retrieve the next set of results. AWS provides the token
when the response from a previous call has more results than the
maximum page size.



=head2 TimePeriod => L<Paws::CostExplorer::DateInterval>

Sets the start and end dates for retrieving AWS costs. The start date
is inclusive, but the end date is exclusive. For example, if C<start>
is C<2017-01-01> and C<end> is C<2017-05-01>, then the cost and usage
data is retrieved from C<2017-01-01> up to and including C<2017-04-30>
but not including C<2017-05-01>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCostAndUsage in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

