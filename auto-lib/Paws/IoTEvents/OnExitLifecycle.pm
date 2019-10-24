# Generated from default/object.tt
package Paws::IoTEvents::OnExitLifecycle;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::IoTEvents::Types qw/IoTEvents_Event/;
  has Events => (is => 'ro', isa => ArrayRef[IoTEvents_Event]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Events' => {
                             'class' => 'Paws::IoTEvents::Event',
                             'type' => 'ArrayRef[IoTEvents_Event]'
                           }
             },
  'NameInRequest' => {
                       'Events' => 'events'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::OnExitLifecycle

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::OnExitLifecycle object:

  $service_obj->Method(Att1 => { Events => $value, ..., Events => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::OnExitLifecycle object:

  $result = $service_obj->Method(...);
  $result->Att1->Events

=head1 DESCRIPTION

When exiting this state, perform these C<actions> if the specified
C<condition> is TRUE.

=head1 ATTRIBUTES


=head2 Events => ArrayRef[IoTEvents_Event]

  Specifies the actions that are performed when the state is exited and
the C<condition> is TRUE.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

