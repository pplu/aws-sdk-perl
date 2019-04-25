
package Paws::Datasync::DescribeTask;
  use Moose;
  has TaskArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeTask - Arguments for method DescribeTask on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTask on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTask.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeTaskResponse = $datasync->DescribeTask(
      TaskArn => 'MyTaskArn',

    );

    # Results:
    my $CloudWatchLogGroupArn = $DescribeTaskResponse->CloudWatchLogGroupArn;
    my $CreationTime          = $DescribeTaskResponse->CreationTime;
    my $CurrentTaskExecutionArn =
      $DescribeTaskResponse->CurrentTaskExecutionArn;
    my $DestinationLocationArn = $DescribeTaskResponse->DestinationLocationArn;
    my $ErrorCode              = $DescribeTaskResponse->ErrorCode;
    my $ErrorDetail            = $DescribeTaskResponse->ErrorDetail;
    my $Name                   = $DescribeTaskResponse->Name;
    my $Options                = $DescribeTaskResponse->Options;
    my $SourceLocationArn      = $DescribeTaskResponse->SourceLocationArn;
    my $Status                 = $DescribeTaskResponse->Status;
    my $TaskArn                = $DescribeTaskResponse->TaskArn;

    # Returns a L<Paws::Datasync::DescribeTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskArn => Str

The Amazon Resource Name (ARN) of the task to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTask in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

