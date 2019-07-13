package Paws::Personalize::DatasetSchema;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', request_name => 'creationDateTime', traits => ['NameInRequest']);
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedDateTime', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Schema => (is => 'ro', isa => 'Str', request_name => 'schema', traits => ['NameInRequest']);
  has SchemaArn => (is => 'ro', isa => 'Str', request_name => 'schemaArn', traits => ['NameInRequest']);
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

