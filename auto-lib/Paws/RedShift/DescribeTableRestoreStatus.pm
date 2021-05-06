
package Paws::RedShift::DescribeTableRestoreStatus;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has TableRestoreRequestId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTableRestoreStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::TableRestoreStatusMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTableRestoreStatusResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeTableRestoreStatus - Arguments for method DescribeTableRestoreStatus on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTableRestoreStatus on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeTableRestoreStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTableRestoreStatus.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $TableRestoreStatusMessage = $redshift->DescribeTableRestoreStatus(
      ClusterIdentifier     => 'MyString',    # OPTIONAL
      Marker                => 'MyString',    # OPTIONAL
      MaxRecords            => 1,             # OPTIONAL
      TableRestoreRequestId => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Marker = $TableRestoreStatusMessage->Marker;
    my $TableRestoreStatusDetails =
      $TableRestoreStatusMessage->TableRestoreStatusDetails;

    # Returns a L<Paws::RedShift::TableRestoreStatusMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeTableRestoreStatus>

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

The Amazon Redshift cluster that the table is being restored to.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeTableRestoreStatus> request. If this parameter is specified,
the response includes only records beyond the marker, up to the value
specified by the C<MaxRecords> parameter.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.



=head2 TableRestoreRequestId => Str

The identifier of the table restore request to return status for. If
you don't specify a C<TableRestoreRequestId> value, then
C<DescribeTableRestoreStatus> returns the status of all in-progress
table restore requests.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTableRestoreStatus in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

