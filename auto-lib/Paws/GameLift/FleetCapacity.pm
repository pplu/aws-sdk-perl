package Paws::GameLift::FleetCapacity;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str');
  has InstanceCounts => (is => 'ro', isa => 'Paws::GameLift::EC2InstanceCounts');
  has InstanceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::FleetCapacity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::FleetCapacity object:

  $service_obj->Method(Att1 => { FleetId => $value, ..., InstanceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::FleetCapacity object:

  $result = $service_obj->Method(...);
  $result->Att1->FleetId

=head1 DESCRIPTION

Information about the fleet's capacity. Fleet capacity is measured in
EC2 instances. By default, new fleets have a capacity of one instance,
but can be updated as needed. The maximum number of instances for a
fleet is determined by the fleet's instance type.

=head1 ATTRIBUTES


=head2 FleetId => Str

  Unique identifier for a fleet.


=head2 InstanceCounts => L<Paws::GameLift::EC2InstanceCounts>

  Current status of fleet capacity.


=head2 InstanceType => Str

  Type of EC2 instances used in the fleet. EC2 instance types define the
CPU, memory, storage, and networking capacity of the fleetaposs hosts.
Amazon GameLift supports the EC2 instance types listed below. See
Amazon EC2 Instance Types for detailed descriptions of each.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

