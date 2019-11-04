# Generated from json/callargs_class.tt

package Paws::CostExplorer::GetReservationUtilization;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_DateInterval CostExplorer_GroupDefinition CostExplorer_Expression/;
  has Filter => (is => 'ro', isa => CostExplorer_Expression, predicate => 1);
  has Granularity => (is => 'ro', isa => Str, predicate => 1);
  has GroupBy => (is => 'ro', isa => ArrayRef[CostExplorer_GroupDefinition], predicate => 1);
  has NextPageToken => (is => 'ro', isa => Str, predicate => 1);
  has TimePeriod => (is => 'ro', isa => CostExplorer_DateInterval, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetReservationUtilization');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CostExplorer::GetReservationUtilizationResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupBy' => {
                              'class' => 'Paws::CostExplorer::GroupDefinition',
                              'type' => 'ArrayRef[CostExplorer_GroupDefinition]'
                            },
               'Filter' => {
                             'class' => 'Paws::CostExplorer::Expression',
                             'type' => 'CostExplorer_Expression'
                           },
               'Granularity' => {
                                  'type' => 'Str'
                                },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'TimePeriod' => {
                                 'class' => 'Paws::CostExplorer::DateInterval',
                                 'type' => 'CostExplorer_DateInterval'
                               }
             },
  'IsRequired' => {
                    'TimePeriod' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetReservationUtilization - Arguments for method GetReservationUtilization on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReservationUtilization on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetReservationUtilization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReservationUtilization.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetReservationUtilizationResponse = $ce->GetReservationUtilization(
      TimePeriod => {
        End   => 'MyYearMonthDay',
        Start => 'MyYearMonthDay',

      },
      Filter => {
        And => [ <Expression>, ... ],    # OPTIONAL
        Dimensions => {
          Key => 'AZ'
          , # values: AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RIGHTSIZING_TYPE; OPTIONAL
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
      GroupBy     => [
        {
          Key  => 'MyGroupDefinitionKey',    # OPTIONAL
          Type => 'DIMENSION',               # values: DIMENSION, TAG; OPTIONAL
        },
        ...
      ],                                     # OPTIONAL
      NextPageToken => 'MyNextPageToken',    # OPTIONAL
    );

    # Results:
    my $NextPageToken = $GetReservationUtilizationResponse->NextPageToken;
    my $Total         = $GetReservationUtilizationResponse->Total;
    my $UtilizationsByTime =
      $GetReservationUtilizationResponse->UtilizationsByTime;

    # Returns a L<Paws::CostExplorer::GetReservationUtilizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetReservationUtilization>

=head1 ATTRIBUTES


=head2 Filter => CostExplorer_Expression

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

SCOPE

=item *

TENANCY

=back

C<GetReservationUtilization> uses the same Expression
(http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html)
object as the other operations, but only C<AND> is supported among each
dimension, and nesting is supported up to only one level deep. If there
are multiple values for a dimension, they are OR'd together.



=head2 Granularity => Str

If C<GroupBy> is set, C<Granularity> can't be set. If C<Granularity>
isn't set, the response object doesn't include C<Granularity>, either
C<MONTHLY> or C<DAILY>. If both C<GroupBy> and C<Granularity> aren't
set, C<GetReservationUtilization> defaults to C<DAILY>.

The C<GetReservationUtilization> operation supports only C<DAILY> and
C<MONTHLY> granularities.

Valid values are: C<"DAILY">, C<"MONTHLY">, C<"HOURLY">

=head2 GroupBy => ArrayRef[CostExplorer_GroupDefinition]

Groups only by C<SUBSCRIPTION_ID>. Metadata is included.



=head2 NextPageToken => Str

The token to retrieve the next set of results. AWS provides the token
when the response from a previous call has more results than the
maximum page size.



=head2 B<REQUIRED> TimePeriod => CostExplorer_DateInterval

Sets the start and end dates for retrieving RI utilization. The start
date is inclusive, but the end date is exclusive. For example, if
C<start> is C<2017-01-01> and C<end> is C<2017-05-01>, then the cost
and usage data is retrieved from C<2017-01-01> up to and including
C<2017-04-30> but not including C<2017-05-01>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReservationUtilization in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

