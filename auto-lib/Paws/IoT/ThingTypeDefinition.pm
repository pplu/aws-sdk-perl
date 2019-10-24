# Generated from default/object.tt
package Paws::IoT::ThingTypeDefinition;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_ThingTypeMetadata IoT_ThingTypeProperties/;
  has ThingTypeArn => (is => 'ro', isa => Str);
  has ThingTypeMetadata => (is => 'ro', isa => IoT_ThingTypeMetadata);
  has ThingTypeName => (is => 'ro', isa => Str);
  has ThingTypeProperties => (is => 'ro', isa => IoT_ThingTypeProperties);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThingTypeProperties' => {
                                          'class' => 'Paws::IoT::ThingTypeProperties',
                                          'type' => 'IoT_ThingTypeProperties'
                                        },
               'ThingTypeArn' => {
                                   'type' => 'Str'
                                 },
               'ThingTypeName' => {
                                    'type' => 'Str'
                                  },
               'ThingTypeMetadata' => {
                                        'class' => 'Paws::IoT::ThingTypeMetadata',
                                        'type' => 'IoT_ThingTypeMetadata'
                                      }
             },
  'NameInRequest' => {
                       'ThingTypeProperties' => 'thingTypeProperties',
                       'ThingTypeArn' => 'thingTypeArn',
                       'ThingTypeName' => 'thingTypeName',
                       'ThingTypeMetadata' => 'thingTypeMetadata'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingTypeDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingTypeDefinition object:

  $service_obj->Method(Att1 => { ThingTypeArn => $value, ..., ThingTypeProperties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingTypeDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->ThingTypeArn

=head1 DESCRIPTION

The definition of the thing type, including thing type name and
description.

=head1 ATTRIBUTES


=head2 ThingTypeArn => Str

  The thing type ARN.


=head2 ThingTypeMetadata => IoT_ThingTypeMetadata

  The ThingTypeMetadata contains additional information about the thing
type including: creation date and time, a value indicating whether the
thing type is deprecated, and a date and time when it was deprecated.


=head2 ThingTypeName => Str

  The name of the thing type.


=head2 ThingTypeProperties => IoT_ThingTypeProperties

  The ThingTypeProperties for the thing type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

