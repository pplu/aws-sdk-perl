
package Paws::RedShift::DescribeSnapshotSchedules;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ScheduleIdentifier => (is => 'ro', isa => 'Str');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TagValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotSchedules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::DescribeSnapshotSchedulesOutputMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotSchedulesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeSnapshotSchedules - Arguments for method DescribeSnapshotSchedules on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSnapshotSchedules on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeSnapshotSchedules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSnapshotSchedules.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $DescribeSnapshotSchedulesOutputMessage =
      $redshift->DescribeSnapshotSchedules(
      ClusterIdentifier  => 'MyString',             # OPTIONAL
      Marker             => 'MyString',             # OPTIONAL
      MaxRecords         => 1,                      # OPTIONAL
      ScheduleIdentifier => 'MyString',             # OPTIONAL
      TagKeys            => [ 'MyString', ... ],    # OPTIONAL
      TagValues          => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $Marker = $DescribeSnapshotSchedulesOutputMessage->Marker;
    my $SnapshotSchedules =
      $DescribeSnapshotSchedulesOutputMessage->SnapshotSchedules;

   # Returns a L<Paws::RedShift::DescribeSnapshotSchedulesOutputMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeSnapshotSchedules>

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

The unique identifier for the cluster whose snapshot schedules you want
to view.



=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<marker> parameter and retrying the command. If
the C<marker> field is empty, all response records have been retrieved
for the request.



=head2 MaxRecords => Int

The maximum number or response records to return in each call. If the
number of remaining response records exceeds the specified
C<MaxRecords> value, a value is returned in a C<marker> field of the
response. You can retrieve the next set of records by retrying the
command with the returned C<marker> value.



=head2 ScheduleIdentifier => Str

A unique identifier for a snapshot schedule.



=head2 TagKeys => ArrayRef[Str|Undef]

The key value for a snapshot schedule tag.



=head2 TagValues => ArrayRef[Str|Undef]

The value corresponding to the key of the snapshot schedule tag.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSnapshotSchedules in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

