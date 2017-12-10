
package Paws::SSM::GetMaintenanceWindowExecutionTask;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', required => 1);
  has WindowExecutionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMaintenanceWindowExecutionTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetMaintenanceWindowExecutionTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowExecutionTask - Arguments for method GetMaintenanceWindowExecutionTask on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMaintenanceWindowExecutionTask on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method GetMaintenanceWindowExecutionTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMaintenanceWindowExecutionTask.

As an example:

  $service_obj->GetMaintenanceWindowExecutionTask(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskId => Str

The ID of the specific task execution in the Maintenance Window task
that should be retrieved.



=head2 B<REQUIRED> WindowExecutionId => Str

The ID of the Maintenance Window execution that includes the task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMaintenanceWindowExecutionTask in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

