
package Paws::RDS::DescribeExportTasks;
  use Moose;
  has ExportTaskIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExportTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ExportTasksMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeExportTasksResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeExportTasks - Arguments for method DescribeExportTasks on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExportTasks on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeExportTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExportTasks.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $ExportTasksMessage = $rds->DescribeExportTasks(
      ExportTaskIdentifier => 'MyString',    # OPTIONAL
      Filters              => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                     # OPTIONAL
      Marker     => 'MyString',              # OPTIONAL
      MaxRecords => 'MyString',              # OPTIONAL
      SourceArn  => 'MyString',              # OPTIONAL
    );

    # Results:
    my $ExportTasks = $ExportTasksMessage->ExportTasks;
    my $Marker      = $ExportTasksMessage->Marker;

    # Returns a L<Paws::RDS::ExportTasksMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeExportTasks>

=head1 ATTRIBUTES


=head2 ExportTaskIdentifier => Str

The identifier of the snapshot export task to be described.



=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

Filters specify one or more snapshot exports to describe. The filters
are specified as name-value pairs that define what to include in the
output.

Supported filters include the following:

=over

=item *

C<export-task-identifier> - An identifier for the snapshot export task.

=item *

C<s3-bucket> - The Amazon S3 bucket the snapshot is exported to.

=item *

C<source-arn> - The Amazon Resource Name (ARN) of the snapshot exported
to Amazon S3

=item *

C<status> - The status of the export task.

=back




=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeExportTasks> request. If you specify this parameter, the
response includes only records beyond the marker, up to the value
specified by the C<MaxRecords> parameter.



=head2 MaxRecords => Str

The maximum number of records to include in the response. If more
records exist than the specified value, a pagination token called a
marker is included in the response. You can use the marker in a later
C<DescribeExportTasks> request to retrieve the remaining results.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 SourceArn => Str

The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExportTasks in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

