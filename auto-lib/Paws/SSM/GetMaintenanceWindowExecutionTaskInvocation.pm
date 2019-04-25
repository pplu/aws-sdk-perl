
package Paws::SSM::GetMaintenanceWindowExecutionTaskInvocation;
  use Moose;
  has InvocationId => (is => 'ro', isa => 'Str', required => 1);
  has TaskId => (is => 'ro', isa => 'Str', required => 1);
  has WindowExecutionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMaintenanceWindowExecutionTaskInvocation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetMaintenanceWindowExecutionTaskInvocationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowExecutionTaskInvocation - Arguments for method GetMaintenanceWindowExecutionTaskInvocation on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMaintenanceWindowExecutionTaskInvocation on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetMaintenanceWindowExecutionTaskInvocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMaintenanceWindowExecutionTaskInvocation.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetMaintenanceWindowExecutionTaskInvocationResult =
      $ssm->GetMaintenanceWindowExecutionTaskInvocation(
      InvocationId      => 'MyMaintenanceWindowExecutionTaskInvocationId',
      TaskId            => 'MyMaintenanceWindowExecutionTaskId',
      WindowExecutionId => 'MyMaintenanceWindowExecutionId',

      );

    # Results:
    my $EndTime = $GetMaintenanceWindowExecutionTaskInvocationResult->EndTime;
    my $ExecutionId =
      $GetMaintenanceWindowExecutionTaskInvocationResult->ExecutionId;
    my $InvocationId =
      $GetMaintenanceWindowExecutionTaskInvocationResult->InvocationId;
    my $OwnerInformation =
      $GetMaintenanceWindowExecutionTaskInvocationResult->OwnerInformation;
    my $Parameters =
      $GetMaintenanceWindowExecutionTaskInvocationResult->Parameters;
    my $StartTime =
      $GetMaintenanceWindowExecutionTaskInvocationResult->StartTime;
    my $Status = $GetMaintenanceWindowExecutionTaskInvocationResult->Status;
    my $StatusDetails =
      $GetMaintenanceWindowExecutionTaskInvocationResult->StatusDetails;
    my $TaskExecutionId =
      $GetMaintenanceWindowExecutionTaskInvocationResult->TaskExecutionId;
    my $TaskType = $GetMaintenanceWindowExecutionTaskInvocationResult->TaskType;
    my $WindowExecutionId =
      $GetMaintenanceWindowExecutionTaskInvocationResult->WindowExecutionId;
    my $WindowTargetId =
      $GetMaintenanceWindowExecutionTaskInvocationResult->WindowTargetId;

# Returns a L<Paws::SSM::GetMaintenanceWindowExecutionTaskInvocationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetMaintenanceWindowExecutionTaskInvocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InvocationId => Str

The invocation ID to retrieve.



=head2 B<REQUIRED> TaskId => Str

The ID of the specific task in the Maintenance Window task that should
be retrieved.



=head2 B<REQUIRED> WindowExecutionId => Str

The ID of the Maintenance Window execution for which the task is a
part.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMaintenanceWindowExecutionTaskInvocation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

