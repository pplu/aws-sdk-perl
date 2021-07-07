
package Paws::DocDB::DescribeGlobalClusters;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Filter]');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGlobalClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::GlobalClustersMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeGlobalClustersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DescribeGlobalClusters - Arguments for method DescribeGlobalClusters on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGlobalClusters on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method DescribeGlobalClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGlobalClusters.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $GlobalClustersMessage = $rds->DescribeGlobalClusters(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      GlobalClusterIdentifier => 'MyGlobalClusterIdentifier',    # OPTIONAL
      Marker                  => 'MyString',                     # OPTIONAL
      MaxRecords              => 1,                              # OPTIONAL
    );

    # Results:
    my $GlobalClusters = $GlobalClustersMessage->GlobalClusters;
    my $Marker         = $GlobalClustersMessage->Marker;

    # Returns a L<Paws::DocDB::GlobalClustersMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeGlobalClusters>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::DocDB::Filter>]

A filter that specifies one or more global DB clusters to describe.

Supported filters: C<db-cluster-id> accepts cluster identifiers and
cluster Amazon Resource Names (ARNs). The results list will only
include information about the clusters identified by these ARNs.



=head2 GlobalClusterIdentifier => Str

The user-supplied cluster identifier. If this parameter is specified,
information from only the specific cluster is returned. This parameter
isn't case-sensitive.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeGlobalClusters> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that you can
retrieve the remaining results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGlobalClusters in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

