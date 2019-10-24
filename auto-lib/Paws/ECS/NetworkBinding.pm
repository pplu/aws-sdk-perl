# Generated from default/object.tt
package Paws::ECS::NetworkBinding;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ECS::Types qw//;
  has BindIP => (is => 'ro', isa => Str);
  has ContainerPort => (is => 'ro', isa => Int);
  has HostPort => (is => 'ro', isa => Int);
  has Protocol => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContainerPort' => {
                                    'type' => 'Int'
                                  },
               'HostPort' => {
                               'type' => 'Int'
                             },
               'Protocol' => {
                               'type' => 'Str'
                             },
               'BindIP' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'ContainerPort' => 'containerPort',
                       'HostPort' => 'hostPort',
                       'Protocol' => 'protocol',
                       'BindIP' => 'bindIP'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::NetworkBinding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::NetworkBinding object:

  $service_obj->Method(Att1 => { BindIP => $value, ..., Protocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::NetworkBinding object:

  $result = $service_obj->Method(...);
  $result->Att1->BindIP

=head1 DESCRIPTION

Details on the network bindings between a container and its host
container instance. After a task reaches the C<RUNNING> status, manual
and automatic host and container port assignments are visible in the
C<networkBindings> section of DescribeTasks API responses.

=head1 ATTRIBUTES


=head2 BindIP => Str

  The IP address that the container is bound to on the container
instance.


=head2 ContainerPort => Int

  The port number on the container that is used with the network binding.


=head2 HostPort => Int

  The port number on the host that is used with the network binding.


=head2 Protocol => Str

  The protocol used for the network binding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

