package Paws::GlobalAccelerator::Listener;
  use Moose;
  has ClientAffinity => (is => 'ro', isa => 'Str');
  has ListenerArn => (is => 'ro', isa => 'Str');
  has PortRanges => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::PortRange]');
  has Protocol => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::Listener

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlobalAccelerator::Listener object:

  $service_obj->Method(Att1 => { ClientAffinity => $value, ..., Protocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlobalAccelerator::Listener object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientAffinity

=head1 DESCRIPTION

A complex type for a listener.

=head1 ATTRIBUTES


=head2 ClientAffinity => Str

  The client properties that Global Accelerator uses to select an
endpoint so that you can choose to route traffic from users to their
original endpoint. The default value is C<NONE>.


=head2 ListenerArn => Str

  The Amazon Resource Name (ARN) of the listener.


=head2 PortRanges => ArrayRef[L<Paws::GlobalAccelerator::PortRange>]

  The list of port ranges for the connections from clients to the
accelerator.


=head2 Protocol => Str

  The protocol for the connections from clients to the accelerator.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

