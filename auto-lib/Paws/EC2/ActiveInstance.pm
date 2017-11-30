package Paws::EC2::ActiveInstance;
  use Moose;
  has InstanceHealth => (is => 'ro', isa => 'Str', request_name => 'instanceHealth', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', request_name => 'spotInstanceRequestId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ActiveInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ActiveInstance object:

  $service_obj->Method(Att1 => { InstanceHealth => $value, ..., SpotInstanceRequestId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ActiveInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceHealth

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 InstanceHealth => Str

  The health status of the instance. If the status of either the instance
status check or the system status check is C<impaired>, the health
status of the instance is C<unhealthy>. Otherwise, the health status is
C<healthy>.


=head2 InstanceId => Str

  The ID of the instance.


=head2 InstanceType => Str

  The instance type.


=head2 SpotInstanceRequestId => Str

  The ID of the Spot Instance request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
