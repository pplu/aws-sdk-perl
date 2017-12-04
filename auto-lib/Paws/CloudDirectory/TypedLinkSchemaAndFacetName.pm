package Paws::CloudDirectory::TypedLinkSchemaAndFacetName;
  use Moose;
  has SchemaArn => (is => 'ro', isa => 'Str', required => 1);
  has TypedLinkName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::TypedLinkSchemaAndFacetName

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::TypedLinkSchemaAndFacetName object:

  $service_obj->Method(Att1 => { SchemaArn => $value, ..., TypedLinkName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::TypedLinkSchemaAndFacetName object:

  $result = $service_obj->Method(...);
  $result->Att1->SchemaArn

=head1 DESCRIPTION

Identifies the schema Amazon Resource Name (ARN) and facet name for the
typed link.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SchemaArn => Str

  The Amazon Resource Name (ARN) that is associated with the schema. For
more information, see arns.


=head2 B<REQUIRED> TypedLinkName => Str

  The unique name of the typed link facet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

