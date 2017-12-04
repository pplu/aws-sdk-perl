package Paws::EMR::InstanceFleetStatus;
  use Moose;
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Paws::EMR::InstanceFleetStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Paws::EMR::InstanceFleetTimeline');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceFleetStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceFleetStatus object:

  $service_obj->Method(Att1 => { State => $value, ..., Timeline => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceFleetStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->State

=head1 DESCRIPTION

The status of the instance fleet.

The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.

=head1 ATTRIBUTES


=head2 State => Str

  A code representing the instance fleet status.

=over

=item *

C<PROVISIONING>E<mdash>The instance fleet is provisioning EC2 resources
and is not yet ready to run jobs.

=item *

C<BOOTSTRAPPING>E<mdash>EC2 instances and other resources have been
provisioned and the bootstrap actions specified for the instances are
underway.

=item *

C<RUNNING>E<mdash>EC2 instances and other resources are running. They
are either executing jobs or waiting to execute jobs.

=item *

C<RESIZING>E<mdash>A resize operation is underway. EC2 instances are
either being added or removed.

=item *

C<SUSPENDED>E<mdash>A resize operation could not complete. Existing EC2
instances are running, but instances can't be added or removed.

=item *

C<TERMINATING>E<mdash>The instance fleet is terminating EC2 instances.

=item *

C<TERMINATED>E<mdash>The instance fleet is no longer active, and all
EC2 instances have been terminated.

=back



=head2 StateChangeReason => L<Paws::EMR::InstanceFleetStateChangeReason>

  Provides status change reason details for the instance fleet.


=head2 Timeline => L<Paws::EMR::InstanceFleetTimeline>

  Provides historical timestamps for the instance fleet, including the
time of creation, the time it became ready to run jobs, and the time of
termination.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

