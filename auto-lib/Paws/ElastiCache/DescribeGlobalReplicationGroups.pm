
package Paws::ElastiCache::DescribeGlobalReplicationGroups;
  use Moose;
  has GlobalReplicationGroupId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ShowMemberInfo => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGlobalReplicationGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DescribeGlobalReplicationGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeGlobalReplicationGroupsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeGlobalReplicationGroups - Arguments for method DescribeGlobalReplicationGroups on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGlobalReplicationGroups on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DescribeGlobalReplicationGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGlobalReplicationGroups.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DescribeGlobalReplicationGroupsResult =
      $elasticache->DescribeGlobalReplicationGroups(
      GlobalReplicationGroupId => 'MyString',    # OPTIONAL
      Marker                   => 'MyString',    # OPTIONAL
      MaxRecords               => 1,             # OPTIONAL
      ShowMemberInfo           => 1,             # OPTIONAL
      );

    # Results:
    my $GlobalReplicationGroups =
      $DescribeGlobalReplicationGroupsResult->GlobalReplicationGroups;
    my $Marker = $DescribeGlobalReplicationGroupsResult->Marker;

 # Returns a L<Paws::ElastiCache::DescribeGlobalReplicationGroupsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DescribeGlobalReplicationGroups>

=head1 ATTRIBUTES


=head2 GlobalReplicationGroupId => Str

The name of the Global datastore



=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified MaxRecords value, a marker is included
in the response so that the remaining results can be retrieved.



=head2 ShowMemberInfo => Bool

Returns the list of members that comprise the Global datastore.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGlobalReplicationGroups in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

