
package Paws::SSM::GetMaintenanceWindowExecution;
  use Moose;
  has WindowExecutionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMaintenanceWindowExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetMaintenanceWindowExecutionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowExecution - Arguments for method GetMaintenanceWindowExecution on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMaintenanceWindowExecution on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetMaintenanceWindowExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMaintenanceWindowExecution.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetMaintenanceWindowExecutionResult =
      $ssm->GetMaintenanceWindowExecution(
      WindowExecutionId => 'MyMaintenanceWindowExecutionId',

      );

    # Results:
    my $EndTime       = $GetMaintenanceWindowExecutionResult->EndTime;
    my $StartTime     = $GetMaintenanceWindowExecutionResult->StartTime;
    my $Status        = $GetMaintenanceWindowExecutionResult->Status;
    my $StatusDetails = $GetMaintenanceWindowExecutionResult->StatusDetails;
    my $TaskIds       = $GetMaintenanceWindowExecutionResult->TaskIds;
    my $WindowExecutionId =
      $GetMaintenanceWindowExecutionResult->WindowExecutionId;

    # Returns a L<Paws::SSM::GetMaintenanceWindowExecutionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetMaintenanceWindowExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WindowExecutionId => Str

The ID of the Maintenance Window execution that includes the task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMaintenanceWindowExecution in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

