
package Paws::SSM::CreateMaintenanceWindow;
  use Moose;
  has AllowUnassociatedTargets => (is => 'ro', isa => 'Bool', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has Cutoff => (is => 'ro', isa => 'Int', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Schedule => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMaintenanceWindow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateMaintenanceWindowResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateMaintenanceWindow - Arguments for method CreateMaintenanceWindow on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMaintenanceWindow on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method CreateMaintenanceWindow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMaintenanceWindow.

As an example:

  $service_obj->CreateMaintenanceWindow(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllowUnassociatedTargets => Bool

Enables a Maintenance Window task to execute on managed instances, even
if you have not registered those instances as targets. If enabled, then
you must specify the unregistered instances (by instance ID) when you
register a task with the Maintenance Window

If you don't enable this option, then you must specify
previously-registered targets when you register a task with the
Maintenance Window.



=head2 ClientToken => Str

User-provided idempotency token.



=head2 B<REQUIRED> Cutoff => Int

The number of hours before the end of the Maintenance Window that
Systems Manager stops scheduling new tasks for execution.



=head2 Description => Str

An optional description for the Maintenance Window. We recommend
specifying a description to help you organize your Maintenance Windows.



=head2 B<REQUIRED> Duration => Int

The duration of the Maintenance Window in hours.



=head2 B<REQUIRED> Name => Str

The name of the Maintenance Window.



=head2 B<REQUIRED> Schedule => Str

The schedule of the Maintenance Window in the form of a cron or rate
expression.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMaintenanceWindow in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

