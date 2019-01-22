
package Paws::RedShift::DescribeClusterSnapshots;
  use Moose;
  has ClusterExists => (is => 'ro', isa => 'Bool');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');
  has SortingEntities => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::SnapshotSortingEntity]');
  has StartTime => (is => 'ro', isa => 'Str');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TagValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::SnapshotMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterSnapshotsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeClusterSnapshots - Arguments for method DescribeClusterSnapshots on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClusterSnapshots on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeClusterSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClusterSnapshots.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $SnapshotMessage = $redshift->DescribeClusterSnapshots(
      ClusterExists      => 1,                        # OPTIONAL
      ClusterIdentifier  => 'MyString',               # OPTIONAL
      EndTime            => '1970-01-01T01:00:00',    # OPTIONAL
      Marker             => 'MyString',               # OPTIONAL
      MaxRecords         => 1,                        # OPTIONAL
      OwnerAccount       => 'MyString',               # OPTIONAL
      SnapshotIdentifier => 'MyString',               # OPTIONAL
      SnapshotType       => 'MyString',               # OPTIONAL
      SortingEntities    => [
        {
          Attribute =>
            'SOURCE_TYPE',    # values: SOURCE_TYPE, TOTAL_SIZE, CREATE_TIME
          SortOrder => 'ASC', # values: ASC, DESC; OPTIONAL
        },
        ...
      ],                      # OPTIONAL
      StartTime => '1970-01-01T01:00:00',    # OPTIONAL
      TagKeys   => [ 'MyString', ... ],      # OPTIONAL
      TagValues => [ 'MyString', ... ],      # OPTIONAL
    );

    # Results:
    my $Marker    = $SnapshotMessage->Marker;
    my $Snapshots = $SnapshotMessage->Snapshots;

    # Returns a L<Paws::RedShift::SnapshotMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeClusterSnapshots>

=head1 ATTRIBUTES


=head2 ClusterExists => Bool

A value that indicates whether to return snapshots only for an existing
cluster. Table-level restore can be performed only using a snapshot of
an existing cluster, that is, a cluster that has not been deleted. If
C<ClusterExists> is set to C<true>, C<ClusterIdentifier> is required.



=head2 ClusterIdentifier => Str

The identifier of the cluster for which information about snapshots is
requested.



=head2 EndTime => Str

A time value that requests only snapshots created at or before the
specified time. The time value is specified in ISO 8601 format. For
more information about ISO 8601, go to the ISO8601 Wikipedia page.
(http://en.wikipedia.org/wiki/ISO_8601)

Example: C<2012-07-16T18:00:00Z>



=head2 Marker => Str

An optional parameter that specifies the starting point to return a set
of response records. When the results of a DescribeClusterSnapshots
request exceed the value specified in C<MaxRecords>, AWS returns a
value in the C<Marker> field of the response. You can retrieve the next
set of response records by providing the returned marker value in the
C<Marker> parameter and retrying the request.



=head2 MaxRecords => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified
C<MaxRecords> value, a value is returned in a C<marker> field of the
response. You can retrieve the next set of records by retrying the
command with the returned marker value.

Default: C<100>

Constraints: minimum 20, maximum 100.



=head2 OwnerAccount => Str

The AWS customer account used to create or copy the snapshot. Use this
field to filter the results to snapshots owned by a particular account.
To describe snapshots you own, either specify your AWS customer
account, or do not specify the parameter.



=head2 SnapshotIdentifier => Str

The snapshot identifier of the snapshot about which to return
information.



=head2 SnapshotType => Str

The type of snapshots for which you are requesting information. By
default, snapshots of all types are returned.

Valid Values: C<automated> | C<manual>



=head2 SortingEntities => ArrayRef[L<Paws::RedShift::SnapshotSortingEntity>]





=head2 StartTime => Str

A value that requests only snapshots created at or after the specified
time. The time value is specified in ISO 8601 format. For more
information about ISO 8601, go to the ISO8601 Wikipedia page.
(http://en.wikipedia.org/wiki/ISO_8601)

Example: C<2012-07-16T18:00:00Z>



=head2 TagKeys => ArrayRef[Str|Undef]

A tag key or keys for which you want to return all matching cluster
snapshots that are associated with the specified key or keys. For
example, suppose that you have snapshots that are tagged with keys
called C<owner> and C<environment>. If you specify both of these tag
keys in the request, Amazon Redshift returns a response with the
snapshots that have either or both of these tag keys associated with
them.



=head2 TagValues => ArrayRef[Str|Undef]

A tag value or values for which you want to return all matching cluster
snapshots that are associated with the specified tag value or values.
For example, suppose that you have snapshots that are tagged with
values called C<admin> and C<test>. If you specify both of these tag
values in the request, Amazon Redshift returns a response with the
snapshots that have either or both of these tag values associated with
them.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClusterSnapshots in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

