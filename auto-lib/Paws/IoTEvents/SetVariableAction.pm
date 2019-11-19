# Generated from default/object.tt
package Paws::IoTEvents::SetVariableAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw//;
  has Value => (is => 'ro', isa => Str, required => 1);
  has VariableName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'VariableName' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'VariableName' => 1,
                    'Value' => 1
                  },
  'NameInRequest' => {
                       'VariableName' => 'variableName',
                       'Value' => 'value'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::SetVariableAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::SetVariableAction object:

  $service_obj->Method(Att1 => { Value => $value, ..., VariableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::SetVariableAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Value

=head1 DESCRIPTION

Information about the variable and its new value.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Value => Str

  The new value of the variable.


=head2 B<REQUIRED> VariableName => Str

  The name of the variable.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

