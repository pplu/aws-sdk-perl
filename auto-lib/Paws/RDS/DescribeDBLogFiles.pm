
package Paws::RDS::DescribeDBLogFiles;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FileLastWritten => (is => 'ro', isa => 'Int');
  has FilenameContains => (is => 'ro', isa => 'Str');
  has FileSize => (is => 'ro', isa => 'Int');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBLogFiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DescribeDBLogFilesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBLogFilesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBLogFiles - Arguments for method DescribeDBLogFiles on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBLogFiles on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBLogFiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBLogFiles.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To list DB log file names
    # This example lists matching log file names for the specified DB instance,
    # file name pattern, last write date in POSIX time with milleseconds, and
    # minimum file size.
    my $DescribeDBLogFilesResponse = $rds->DescribeDBLogFiles(
      {
        'DBInstanceIdentifier' => 'mymysqlinstance',
        'FileLastWritten'      => 1470873600000,
        'FileSize'             => 0,
        'FilenameContains'     => 'error'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBLogFiles>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBInstanceIdentifier => Str

The customer-assigned name of the DB instance that contains the log
files you want to list.

Constraints:

=over

=item *

Must match the identifier of an existing DBInstance.

=back




=head2 FileLastWritten => Int

Filters the available log files for files written since the specified
date, in POSIX timestamp format with milliseconds.



=head2 FilenameContains => Str

Filters the available log files for log file names that contain the
specified string.



=head2 FileSize => Int

Filters the available log files for files larger than the specified
size.



=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

This parameter is not currently supported.



=head2 Marker => Str

The pagination token provided in the previous request. If this
parameter is specified the response includes only records beyond the
marker, up to MaxRecords.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified MaxRecords value, a pagination token
called a marker is included in the response so that the remaining
results can be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBLogFiles in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

