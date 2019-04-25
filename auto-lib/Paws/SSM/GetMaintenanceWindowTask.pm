
package Paws::SSM::GetMaintenanceWindowTask;
  use Moose;
  has WindowId => (is => 'ro', isa => 'Str', required => 1);
  has WindowTaskId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMaintenanceWindowTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetMaintenanceWindowTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowTask - Arguments for method GetMaintenanceWindowTask on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMaintenanceWindowTask on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetMaintenanceWindowTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMaintenanceWindowTask.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetMaintenanceWindowTaskResult = $ssm->GetMaintenanceWindowTask(
      WindowId     => 'MyMaintenanceWindowId',
      WindowTaskId => 'MyMaintenanceWindowTaskId',

    );

    # Results:
    my $Description    = $GetMaintenanceWindowTaskResult->Description;
    my $LoggingInfo    = $GetMaintenanceWindowTaskResult->LoggingInfo;
    my $MaxConcurrency = $GetMaintenanceWindowTaskResult->MaxConcurrency;
    my $MaxErrors      = $GetMaintenanceWindowTaskResult->MaxErrors;
    my $Name           = $GetMaintenanceWindowTaskResult->Name;
    my $Priority       = $GetMaintenanceWindowTaskResult->Priority;
    my $ServiceRoleArn = $GetMaintenanceWindowTaskResult->ServiceRoleArn;
    my $Targets        = $GetMaintenanceWindowTaskResult->Targets;
    my $TaskArn        = $GetMaintenanceWindowTaskResult->TaskArn;
    my $TaskInvocationParameters =
      $GetMaintenanceWindowTaskResult->TaskInvocationParameters;
    my $TaskParameters = $GetMaintenanceWindowTaskResult->TaskParameters;
    my $TaskType       = $GetMaintenanceWindowTaskResult->TaskType;
    my $WindowId       = $GetMaintenanceWindowTaskResult->WindowId;
    my $WindowTaskId   = $GetMaintenanceWindowTaskResult->WindowTaskId;

    # Returns a L<Paws::SSM::GetMaintenanceWindowTaskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetMaintenanceWindowTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WindowId => Str

The Maintenance Window ID that includes the task to retrieve.



=head2 B<REQUIRED> WindowTaskId => Str

The Maintenance Window task ID to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMaintenanceWindowTask in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

