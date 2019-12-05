package Paws::Schemas::SearchSchemaSummary;
  use Moose;
  has RegistryName => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str');
  has SchemaName => (is => 'ro', isa => 'Str');
  has SchemaVersions => (is => 'ro', isa => 'ArrayRef[Paws::Schemas::SearchSchemaVersionSummary]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::SearchSchemaSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Schemas::SearchSchemaSummary object:

  $service_obj->Method(Att1 => { RegistryName => $value, ..., SchemaVersions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Schemas::SearchSchemaSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->RegistryName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 RegistryName => Str

  The name of the registry.


=head2 SchemaArn => Str

  The ARN of the schema.


=head2 SchemaName => Str

  The name of the schema.


=head2 SchemaVersions => ArrayRef[L<Paws::Schemas::SearchSchemaVersionSummary>]

  An array of schema version summaries.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

