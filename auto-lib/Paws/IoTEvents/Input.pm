# Generated from default/object.tt
package Paws::IoTEvents::Input;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoTEvents::Types qw/IoTEvents_InputDefinition IoTEvents_InputConfiguration/;
  has InputConfiguration => (is => 'ro', isa => IoTEvents_InputConfiguration);
  has InputDefinition => (is => 'ro', isa => IoTEvents_InputDefinition);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'InputDefinition' => 'inputDefinition',
                       'InputConfiguration' => 'inputConfiguration'
                     },
  'types' => {
               'InputDefinition' => {
                                      'type' => 'IoTEvents_InputDefinition',
                                      'class' => 'Paws::IoTEvents::InputDefinition'
                                    },
               'InputConfiguration' => {
                                         'class' => 'Paws::IoTEvents::InputConfiguration',
                                         'type' => 'IoTEvents_InputConfiguration'
                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::Input

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::Input object:

  $service_obj->Method(Att1 => { InputConfiguration => $value, ..., InputDefinition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::Input object:

  $result = $service_obj->Method(...);
  $result->Att1->InputConfiguration

=head1 DESCRIPTION

Information about the input.

=head1 ATTRIBUTES


=head2 InputConfiguration => IoTEvents_InputConfiguration

  Information about the configuration of an input.


=head2 InputDefinition => IoTEvents_InputDefinition

  The definition of the input.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

