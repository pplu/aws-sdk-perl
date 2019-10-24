# Generated from default/object.tt
package Paws::IoTThingsGraph::Thing;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw//;
  has ThingArn => (is => 'ro', isa => Str);
  has ThingName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThingArn' => {
                               'type' => 'Str'
                             },
               'ThingName' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'ThingArn' => 'thingArn',
                       'ThingName' => 'thingName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::Thing

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::Thing object:

  $service_obj->Method(Att1 => { ThingArn => $value, ..., ThingName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::Thing object:

  $result = $service_obj->Method(...);
  $result->Att1->ThingArn

=head1 DESCRIPTION

An AWS IoT thing.

=head1 ATTRIBUTES


=head2 ThingArn => Str

  The ARN of the thing.


=head2 ThingName => Str

  The name of the thing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

