
package Paws::Datasync::DescribeTaskExecution;
  use Moose;
  has TaskExecutionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTaskExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeTaskExecutionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeTaskExecution - Arguments for method DescribeTaskExecution on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTaskExecution on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeTaskExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTaskExecution.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeTaskExecutionResponse = $datasync->DescribeTaskExecution(
      TaskExecutionArn => 'MyTaskExecutionArn',

    );

    # Results:
    my $BytesTransferred = $DescribeTaskExecutionResponse->BytesTransferred;
    my $BytesWritten     = $DescribeTaskExecutionResponse->BytesWritten;
    my $EstimatedBytesToTransfer =
      $DescribeTaskExecutionResponse->EstimatedBytesToTransfer;
    my $EstimatedFilesToTransfer =
      $DescribeTaskExecutionResponse->EstimatedFilesToTransfer;
    my $FilesTransferred = $DescribeTaskExecutionResponse->FilesTransferred;
    my $Options          = $DescribeTaskExecutionResponse->Options;
    my $Result           = $DescribeTaskExecutionResponse->Result;
    my $StartTime        = $DescribeTaskExecutionResponse->StartTime;
    my $Status           = $DescribeTaskExecutionResponse->Status;
    my $TaskExecutionArn = $DescribeTaskExecutionResponse->TaskExecutionArn;

    # Returns a L<Paws::Datasync::DescribeTaskExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeTaskExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskExecutionArn => Str

The Amazon Resource Name (ARN) of the task that is being executed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTaskExecution in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

