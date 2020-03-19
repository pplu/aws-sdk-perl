
package Paws::CostExplorer::GetSavingsPlansUtilization;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has Granularity => (is => 'ro', isa => 'Str');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSavingsPlansUtilization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetSavingsPlansUtilizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlansUtilization - Arguments for method GetSavingsPlansUtilization on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSavingsPlansUtilization on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetSavingsPlansUtilization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSavingsPlansUtilization.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetSavingsPlansUtilizationResponse = $ce->GetSavingsPlansUtilization(
      TimePeriod => {
        End   => 'MyYearMonthDay',
        Start => 'MyYearMonthDay',

      },
      Filter => {
        And => [ <Expression>, ... ],    # OPTIONAL
        CostCategories => {
          Key => 'MyCostCategoryName',     # min: 1, max: 255; OPTIONAL
          Values => [ 'MyValue', ... ],    # OPTIONAL
        },    # OPTIONAL
        Dimensions => {
          Key => 'AZ'
          , # values: AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION; OPTIONAL
          Values => [ 'MyValue', ... ],    # OPTIONAL
        },    # OPTIONAL
        Not  => <Expression>,
        Or   => [ <Expression>, ... ],    # OPTIONAL
        Tags => {
          Key => 'MyTagKey',               # OPTIONAL
          Values => [ 'MyValue', ... ],    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Granularity => 'DAILY',    # OPTIONAL
    );

    # Results:
    my $SavingsPlansUtilizationsByTime =
      $GetSavingsPlansUtilizationResponse->SavingsPlansUtilizationsByTime;
    my $Total = $GetSavingsPlansUtilizationResponse->Total;

   # Returns a L<Paws::CostExplorer::GetSavingsPlansUtilizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetSavingsPlansUtilization>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::CostExplorer::Expression>

Filters Savings Plans utilization coverage data for active Savings
Plans dimensions. You can filter data with the following dimensions:

=over

=item *

C<LINKED_ACCOUNT>

=item *

C<SAVINGS_PLAN_ARN>

=item *

C<SAVINGS_PLANS_TYPE>

=item *

C<REGION>

=item *

C<PAYMENT_OPTION>

=item *

C<INSTANCE_TYPE_FAMILY>

=back

C<GetSavingsPlansUtilization> uses the same Expression
(http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html)
object as the other operations, but only C<AND> is supported among each
dimension.



=head2 Granularity => Str

The granularity of the Amazon Web Services utillization data for your
Savings Plans.

The C<GetSavingsPlansUtilization> operation supports only C<DAILY> and
C<MONTHLY> granularities.

Valid values are: C<"DAILY">, C<"MONTHLY">, C<"HOURLY">

=head2 B<REQUIRED> TimePeriod => L<Paws::CostExplorer::DateInterval>

The time period that you want the usage and costs for. The C<Start>
date must be within 13 months. The C<End> date must be after the
C<Start> date, and before the current date. Future dates can't be used
as an C<End> date.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSavingsPlansUtilization in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

