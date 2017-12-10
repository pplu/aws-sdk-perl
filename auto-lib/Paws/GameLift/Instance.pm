package Paws::GameLift::Instance;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::Instance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::Instance object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::Instance object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Properties that describe an instance of a virtual computing resource
that hosts one or more game servers. A fleet may contain zero or more
instances.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  Time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 FleetId => Str

  Unique identifier for a fleet that the instance is in.


=head2 InstanceId => Str

  Unique identifier for an instance.


=head2 IpAddress => Str

  IP address assigned to the instance.


=head2 OperatingSystem => Str

  Operating system that is running on this instance.


=head2 Status => Str

  Current status of the instance. Possible statuses include the
following:

=over

=item *

B<PENDING> -- The instance is in the process of being created and
launching server processes as defined in the fleet's run-time
configuration.

=item *

B<ACTIVE> -- The instance has been successfully created and at least
one server process has successfully launched and reported back to
Amazon GameLift that it is ready to host a game session. The instance
is now considered ready to host game sessions.

=item *

B<TERMINATING> -- The instance is in the process of shutting down. This
may happen to reduce capacity during a scaling down event or to recycle
resources in the event of a problem.

=back



=head2 Type => Str

  EC2 instance type that defines the computing resources of this
instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

