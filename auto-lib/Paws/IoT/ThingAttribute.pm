# Generated from default/object.tt
package Paws::IoT::ThingAttribute;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw/IoT_Attributes/;
  has Attributes => (is => 'ro', isa => IoT_Attributes);
  has ThingArn => (is => 'ro', isa => Str);
  has ThingName => (is => 'ro', isa => Str);
  has ThingTypeName => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Version' => {
                              'type' => 'Int'
                            },
               'ThingArn' => {
                               'type' => 'Str'
                             },
               'Attributes' => {
                                 'class' => 'Paws::IoT::Attributes',
                                 'type' => 'IoT_Attributes'
                               },
               'ThingName' => {
                                'type' => 'Str'
                              },
               'ThingTypeName' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'Version' => 'version',
                       'ThingArn' => 'thingArn',
                       'Attributes' => 'attributes',
                       'ThingName' => 'thingName',
                       'ThingTypeName' => 'thingTypeName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingAttribute object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

The properties of the thing, including thing name, thing type name, and
a list of thing attributes.

=head1 ATTRIBUTES


=head2 Attributes => IoT_Attributes

  A list of thing attributes which are name-value pairs.


=head2 ThingArn => Str

  The thing ARN.


=head2 ThingName => Str

  The name of the thing.


=head2 ThingTypeName => Str

  The name of the thing type, if the thing has been associated with a
type.


=head2 Version => Int

  The version of the thing record in the registry.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

