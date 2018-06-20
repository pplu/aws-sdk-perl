
package Paws::DMS::DescribeReplicationTasks;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReplicationTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeReplicationTasksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeReplicationTasks - Arguments for method DescribeReplicationTasks on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReplicationTasks on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeReplicationTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReplicationTasks.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeReplicationTasksResponse = $dms->DescribeReplicationTasks(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      Marker     => 'MyString',    # OPTIONAL
      MaxRecords => 1,             # OPTIONAL
    );

    # Results:
    my $Marker           = $DescribeReplicationTasksResponse->Marker;
    my $ReplicationTasks = $DescribeReplicationTasksResponse->ReplicationTasks;

    # Returns a L<Paws::DMS::DescribeReplicationTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeReplicationTasks>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::DMS::Filter>]

Filters applied to the describe action.

Valid filter names: replication-task-arn | replication-task-id |
migration-type | endpoint-arn | replication-instance-arn



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReplicationTasks in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

