
package Paws::ElastiCache::DescribeUserGroups;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has UserGroupId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUserGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DescribeUserGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeUserGroupsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeUserGroups - Arguments for method DescribeUserGroups on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUserGroups on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DescribeUserGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUserGroups.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DescribeUserGroupsResult = $elasticache->DescribeUserGroups(
      Marker      => 'MyString',    # OPTIONAL
      MaxRecords  => 1,             # OPTIONAL
      UserGroupId => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Marker     = $DescribeUserGroupsResult->Marker;
    my $UserGroups = $DescribeUserGroupsResult->UserGroups;

    # Returns a L<Paws::ElastiCache::DescribeUserGroupsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DescribeUserGroups>

=head1 ATTRIBUTES


=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by MaxRecords. E<gt>



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified MaxRecords value, a marker is included
in the response so that the remaining results can be retrieved.



=head2 UserGroupId => Str

The ID of the user group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUserGroups in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

