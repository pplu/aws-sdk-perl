
package Paws::AppStream::UpdateFleet;
  use Moose;
  has ComputeCapacity => (is => 'ro', isa => 'Paws::AppStream::ComputeCapacity');
  has DeleteVpcConfig => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has DisconnectTimeoutInSeconds => (is => 'ro', isa => 'Int');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ImageName => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has MaxUserDurationInSeconds => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has VpcConfig => (is => 'ro', isa => 'Paws::AppStream::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::UpdateFleetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateFleet - Arguments for method UpdateFleet on Paws::AppStream

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFleet on the 
Amazon AppStream service. Use the attributes of this class
as arguments to method UpdateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFleet.

As an example:

  $service_obj->UpdateFleet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ComputeCapacity => L<Paws::AppStream::ComputeCapacity>

The parameters for the capacity allocated to the fleet.



=head2 DeleteVpcConfig => Bool

Delete the VPC association for the specified fleet.



=head2 Description => Str

The description displayed to end users on the AppStream 2.0 portal.



=head2 DisconnectTimeoutInSeconds => Int

The time after disconnection when a session is considered to have
ended. When the user reconnects after a disconnection, the user is
connected to the same instance within this time interval.



=head2 DisplayName => Str

The name displayed to end users on the AppStream 2.0 portal.



=head2 ImageName => Str

The image name from which a fleet is created.



=head2 InstanceType => Str

The instance type of compute resources for the fleet. Fleet instances
are launched from this instance type.



=head2 MaxUserDurationInSeconds => Int

The maximum time during which a streaming session can run.



=head2 B<REQUIRED> Name => Str

The name of the fleet.



=head2 VpcConfig => L<Paws::AppStream::VpcConfig>

The VPC configuration for the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFleet in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

