
package Paws::RDS::DescribePendingMaintenanceActions;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ResourceIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePendingMaintenanceActions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::PendingMaintenanceActionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePendingMaintenanceActionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribePendingMaintenanceActions - Arguments for method DescribePendingMaintenanceActions on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePendingMaintenanceActions on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribePendingMaintenanceActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePendingMaintenanceActions.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To list information about pending maintenance actions
    # This example lists information for all pending maintenance actions for the
    # specified DB instance.
    my $PendingMaintenanceActionsMessage =
      $rds->DescribePendingMaintenanceActions(
      {
        'ResourceIdentifier' =>
          'arn:aws:rds:us-east-1:992648334831:db:mymysqlinstance'
      }
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribePendingMaintenanceActions>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more resources to return pending
maintenance actions for.

Supported filters:

=over

=item *

C<db-cluster-id> - Accepts DB cluster identifiers and DB cluster Amazon
Resource Names (ARNs). The results list will only include pending
maintenance actions for the DB clusters identified by these ARNs.

=item *

C<db-instance-id> - Accepts DB instance identifiers and DB instance
ARNs. The results list will only include pending maintenance actions
for the DB instances identified by these ARNs.

=back




=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribePendingMaintenanceActions> request. If this parameter is
specified, the response includes only records beyond the marker, up to
a number of records specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 ResourceIdentifier => Str

The ARN of a resource to return pending maintenance actions for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePendingMaintenanceActions in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

