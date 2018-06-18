
package Paws::DMS::DescribeTableStatistics;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReplicationTaskArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTableStatistics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeTableStatisticsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeTableStatistics - Arguments for method DescribeTableStatistics on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTableStatistics on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeTableStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTableStatistics.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeTableStatisticsResponse = $dms->DescribeTableStatistics(
      ReplicationTaskArn => 'MyString',
      Filters            => [
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
    my $Marker = $DescribeTableStatisticsResponse->Marker;
    my $ReplicationTaskArn =
      $DescribeTableStatisticsResponse->ReplicationTaskArn;
    my $TableStatistics = $DescribeTableStatisticsResponse->TableStatistics;

    # Returns a L<Paws::DMS::DescribeTableStatisticsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeTableStatistics>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::DMS::Filter>]

Filters applied to the describe table statistics action.

Valid filter names: schema-name | table-name | table-state

A combination of filters creates an AND condition where each record
matches all specified filters.



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

Constraints: Minimum 20, maximum 500.



=head2 B<REQUIRED> ReplicationTaskArn => Str

The Amazon Resource Name (ARN) of the replication task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTableStatistics in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

