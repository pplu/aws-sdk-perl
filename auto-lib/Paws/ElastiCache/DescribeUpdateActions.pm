
package Paws::ElastiCache::DescribeUpdateActions;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReplicationGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServiceUpdateName => (is => 'ro', isa => 'Str');
  has ServiceUpdateStatus => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServiceUpdateTimeRange => (is => 'ro', isa => 'Paws::ElastiCache::TimeRangeFilter');
  has ShowNodeLevelUpdateStatus => (is => 'ro', isa => 'Bool');
  has UpdateActionStatus => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUpdateActions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::UpdateActionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeUpdateActionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeUpdateActions - Arguments for method DescribeUpdateActions on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUpdateActions on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DescribeUpdateActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUpdateActions.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $UpdateActionsMessage = $elasticache->DescribeUpdateActions(
      Marker              => 'MyString',             # OPTIONAL
      MaxRecords          => 1,                      # OPTIONAL
      ReplicationGroupIds => [ 'MyString', ... ],    # OPTIONAL
      ServiceUpdateName   => 'MyString',             # OPTIONAL
      ServiceUpdateStatus => [
        'available', ...    # values: available, cancelled, expired
      ],                    # OPTIONAL
      ServiceUpdateTimeRange => {
        EndTime   => '1970-01-01T01:00:00',    # OPTIONAL
        StartTime => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      ShowNodeLevelUpdateStatus => 1,    # OPTIONAL
      UpdateActionStatus        => [
        'not-applied',
        ... # values: not-applied, waiting-to-start, in-progress, stopping, stopped, complete
      ],    # OPTIONAL
    );

    # Results:
    my $Marker        = $UpdateActionsMessage->Marker;
    my $UpdateActions = $UpdateActionsMessage->UpdateActions;

    # Returns a L<Paws::ElastiCache::UpdateActionsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DescribeUpdateActions>

=head1 ATTRIBUTES


=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response



=head2 ReplicationGroupIds => ArrayRef[Str|Undef]

The replication group IDs



=head2 ServiceUpdateName => Str

The unique ID of the service update



=head2 ServiceUpdateStatus => ArrayRef[Str|Undef]

The status of the service update



=head2 ServiceUpdateTimeRange => L<Paws::ElastiCache::TimeRangeFilter>

The range of time specified to search for service updates that are in
available status



=head2 ShowNodeLevelUpdateStatus => Bool

Dictates whether to include node level update status in the response



=head2 UpdateActionStatus => ArrayRef[Str|Undef]

The status of the update action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUpdateActions in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

