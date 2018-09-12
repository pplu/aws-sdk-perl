
package Paws::RedShift::DescribeResize;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeResize');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ResizeProgressMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeResizeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeResize - Arguments for method DescribeResize on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeResize on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeResize.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeResize.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ResizeProgressMessage = $redshift->DescribeResize(
      ClusterIdentifier => 'MyString',

    );

    # Results:
    my $AvgResizeRateInMegaBytesPerSecond =
      $ResizeProgressMessage->AvgResizeRateInMegaBytesPerSecond;
    my $ElapsedTimeInSeconds = $ResizeProgressMessage->ElapsedTimeInSeconds;
    my $EstimatedTimeToCompletionInSeconds =
      $ResizeProgressMessage->EstimatedTimeToCompletionInSeconds;
    my $ImportTablesCompleted  = $ResizeProgressMessage->ImportTablesCompleted;
    my $ImportTablesInProgress = $ResizeProgressMessage->ImportTablesInProgress;
    my $ImportTablesNotStarted = $ResizeProgressMessage->ImportTablesNotStarted;
    my $Message                = $ResizeProgressMessage->Message;
    my $ProgressInMegaBytes    = $ResizeProgressMessage->ProgressInMegaBytes;
    my $ResizeType             = $ResizeProgressMessage->ResizeType;
    my $Status                 = $ResizeProgressMessage->Status;
    my $TargetClusterType      = $ResizeProgressMessage->TargetClusterType;
    my $TargetEncryptionType   = $ResizeProgressMessage->TargetEncryptionType;
    my $TargetNodeType         = $ResizeProgressMessage->TargetNodeType;
    my $TargetNumberOfNodes    = $ResizeProgressMessage->TargetNumberOfNodes;
    my $TotalResizeDataInMegaBytes =
      $ResizeProgressMessage->TotalResizeDataInMegaBytes;

    # Returns a L<Paws::RedShift::ResizeProgressMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeResize>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The unique identifier of a cluster whose resize progress you are
requesting. This parameter is case-sensitive.

By default, resize operations for all clusters defined for an AWS
account are returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeResize in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

