
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

As an example:

  $service_obj->GetMaintenanceWindowExecutionTaskInvocation(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

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

