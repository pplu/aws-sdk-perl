# Generated from default/object.tt
package Paws::Personalize::DatasetSchema;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has CreationDateTime => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Schema => (is => 'ro', isa => Str);
  has SchemaArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Schema' => {
                             'type' => 'Str'
                           },
               'SchemaArn' => {
                                'type' => 'Str'
                              },
               'LastUpdatedDateTime' => {
                                          'type' => 'Str'
                                        },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Schema' => 'schema',
                       'SchemaArn' => 'schemaArn',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime',
                       'CreationDateTime' => 'creationDateTime',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DatasetSchema

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::DatasetSchema object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., SchemaArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::DatasetSchema object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Describes the schema for a dataset. For more information on schemas,
see CreateSchema.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The date and time (in Unix time) that the schema was created.


=head2 LastUpdatedDateTime => Str

  The date and time (in Unix time) that the schema was last updated.


=head2 Name => Str

  The name of the schema.


=head2 Schema => Str

  The schema.


=head2 SchemaArn => Str

  The Amazon Resource Name (ARN) of the schema.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

