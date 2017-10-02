package Paws::ECS::LinuxParameters;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'Paws::ECS::KernelCapabilities', request_name => 'capabilities', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::LinuxParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::LinuxParameters object:

  $service_obj->Method(Att1 => { Capabilities => $value, ..., Capabilities => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::LinuxParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Capabilities

=head1 DESCRIPTION

Linux-specific options that are applied to the container, such as Linux
KernelCapabilities.

=head1 ATTRIBUTES


=head2 Capabilities => L<Paws::ECS::KernelCapabilities>

  The Linux capabilities for the container that are added to or dropped
from the default configuration provided by Docker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

