
package Paws::IoT::DescribeThingRegistrationTask;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeThingRegistrationTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-registration-tasks/{taskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeThingRegistrationTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingRegistrationTask - Arguments for method DescribeThingRegistrationTask on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeThingRegistrationTask on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeThingRegistrationTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeThingRegistrationTask.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeThingRegistrationTaskResponse =
      $iot->DescribeThingRegistrationTask(
      TaskId => 'MyTaskId',

      );

    # Results:
    my $CreationDate = $DescribeThingRegistrationTaskResponse->CreationDate;
    my $FailureCount = $DescribeThingRegistrationTaskResponse->FailureCount;
    my $InputFileBucket =
      $DescribeThingRegistrationTaskResponse->InputFileBucket;
    my $InputFileKey = $DescribeThingRegistrationTaskResponse->InputFileKey;
    my $LastModifiedDate =
      $DescribeThingRegistrationTaskResponse->LastModifiedDate;
    my $Message = $DescribeThingRegistrationTaskResponse->Message;
    my $PercentageProgress =
      $DescribeThingRegistrationTaskResponse->PercentageProgress;
    my $RoleArn      = $DescribeThingRegistrationTaskResponse->RoleArn;
    my $Status       = $DescribeThingRegistrationTaskResponse->Status;
    my $SuccessCount = $DescribeThingRegistrationTaskResponse->SuccessCount;
    my $TaskId       = $DescribeThingRegistrationTaskResponse->TaskId;
    my $TemplateBody = $DescribeThingRegistrationTaskResponse->TemplateBody;

    # Returns a L<Paws::IoT::DescribeThingRegistrationTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeThingRegistrationTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskId => Str

The task ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeThingRegistrationTask in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

