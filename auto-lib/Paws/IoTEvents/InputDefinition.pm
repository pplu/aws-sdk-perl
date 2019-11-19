# Generated from default/object.tt
package Paws::IoTEvents::InputDefinition;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::IoTEvents::Types qw/IoTEvents_Attribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[IoTEvents_Attribute], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::IoTEvents::Attribute',
                                 'type' => 'ArrayRef[IoTEvents_Attribute]'
                               }
             },
  'NameInRequest' => {
                       'Attributes' => 'attributes'
                     },
  'IsRequired' => {
                    'Attributes' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::InputDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::InputDefinition object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Attributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::InputDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

The definition of the input.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[IoTEvents_Attribute]

  The attributes from the JSON payload that are made available by the
input. Inputs are derived from messages sent to the AWS IoT Events
system using C<BatchPutMessage>. Each such message contains a JSON
payload, and those attributes (and their paired values) specified here
are available for use in the C<"condition"> expressions used by
detectors that monitor this input.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

