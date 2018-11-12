package Paws::OpsWorks::InstancesCount;
  use Moose;
  has Assigning => (is => 'ro', isa => 'Int');
  has Booting => (is => 'ro', isa => 'Int');
  has ConnectionLost => (is => 'ro', isa => 'Int');
  has Deregistering => (is => 'ro', isa => 'Int');
  has Online => (is => 'ro', isa => 'Int');
  has Pending => (is => 'ro', isa => 'Int');
  has Rebooting => (is => 'ro', isa => 'Int');
  has Registered => (is => 'ro', isa => 'Int');
  has Registering => (is => 'ro', isa => 'Int');
  has Requested => (is => 'ro', isa => 'Int');
  has RunningSetup => (is => 'ro', isa => 'Int');
  has SetupFailed => (is => 'ro', isa => 'Int');
  has ShuttingDown => (is => 'ro', isa => 'Int');
  has StartFailed => (is => 'ro', isa => 'Int');
  has StopFailed => (is => 'ro', isa => 'Int');
  has Stopped => (is => 'ro', isa => 'Int');
  has Stopping => (is => 'ro', isa => 'Int');
  has Terminated => (is => 'ro', isa => 'Int');
  has Terminating => (is => 'ro', isa => 'Int');
  has Unassigning => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::InstancesCount

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::InstancesCount object:

  $service_obj->Method(Att1 => { Assigning => $value, ..., Unassigning => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::InstancesCount object:

  $result = $service_obj->Method(...);
  $result->Att1->Assigning

=head1 DESCRIPTION

Describes how many instances a stack has for each status.

=head1 ATTRIBUTES


=head2 Assigning => Int

  The number of instances in the Assigning state.


=head2 Booting => Int

  The number of instances with C<booting> status.


=head2 ConnectionLost => Int

  The number of instances with C<connection_lost> status.


=head2 Deregistering => Int

  The number of instances in the Deregistering state.


=head2 Online => Int

  The number of instances with C<online> status.


=head2 Pending => Int

  The number of instances with C<pending> status.


=head2 Rebooting => Int

  The number of instances with C<rebooting> status.


=head2 Registered => Int

  The number of instances in the Registered state.


=head2 Registering => Int

  The number of instances in the Registering state.


=head2 Requested => Int

  The number of instances with C<requested> status.


=head2 RunningSetup => Int

  The number of instances with C<running_setup> status.


=head2 SetupFailed => Int

  The number of instances with C<setup_failed> status.


=head2 ShuttingDown => Int

  The number of instances with C<shutting_down> status.


=head2 StartFailed => Int

  The number of instances with C<start_failed> status.


=head2 StopFailed => Int

  The number of instances with C<stop_failed> status.


=head2 Stopped => Int

  The number of instances with C<stopped> status.


=head2 Stopping => Int

  The number of instances with C<stopping> status.


=head2 Terminated => Int

  The number of instances with C<terminated> status.


=head2 Terminating => Int

  The number of instances with C<terminating> status.


=head2 Unassigning => Int

  The number of instances in the Unassigning state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

