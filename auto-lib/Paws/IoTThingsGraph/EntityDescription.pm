# Generated from default/object.tt
package Paws::IoTThingsGraph::EntityDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_DefinitionDocument/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has Definition => (is => 'ro', isa => IoTThingsGraph_DefinitionDocument);
  has Id => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'Definition' => {
                                 'class' => 'Paws::IoTThingsGraph::DefinitionDocument',
                                 'type' => 'IoTThingsGraph_DefinitionDocument'
                               },
               'Id' => {
                         'type' => 'Str'
                       },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'Definition' => 'definition',
                       'Id' => 'id',
                       'CreatedAt' => 'createdAt',
                       'Arn' => 'arn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::EntityDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::EntityDescription object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::EntityDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes the properties of an entity.

=head1 ATTRIBUTES


=head2 Arn => Str

  The entity ARN.


=head2 CreatedAt => Str

  The time at which the entity was created.


=head2 Definition => IoTThingsGraph_DefinitionDocument

  The definition document of the entity.


=head2 Id => Str

  The entity ID.


=head2 Type => Str

  The entity type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

