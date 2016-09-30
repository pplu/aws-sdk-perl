package Paws::EC2::ReservedInstancesConfiguration;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', xmlname => 'availabilityZone', traits => ['Unwrapped']);
  has InstanceCount => (is => 'ro', isa => 'Int', xmlname => 'instanceCount', traits => ['Unwrapped']);
  has InstanceType => (is => 'ro', isa => 'Str', xmlname => 'instanceType', traits => ['Unwrapped']);
  has Platform => (is => 'ro', isa => 'Str', xmlname => 'platform', traits => ['Unwrapped']);
  has Scope => (is => 'ro', isa => 'Str', xmlname => 'scope', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReservedInstancesConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReservedInstancesConfiguration object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Scope => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReservedInstancesConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone for the modified Reserved Instances.


=head2 InstanceCount => Int

  The number of modified Reserved Instances.


=head2 InstanceType => Str

  The instance type for the modified Reserved Instances.


=head2 Platform => Str

  The network platform of the modified Reserved Instances, which is
either EC2-Classic or EC2-VPC.


=head2 Scope => Str

  Whether the Reserved Instance is C<standard> or C<convertible>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
