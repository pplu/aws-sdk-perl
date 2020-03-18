package Paws::Schemas::UpdateSchemaInput;
  use Moose;
  has ClientTokenId => (is => 'ro', isa => 'Str');
  has Content => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::UpdateSchemaInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Schemas::UpdateSchemaInput object:

  $service_obj->Method(Att1 => { ClientTokenId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Schemas::UpdateSchemaInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientTokenId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ClientTokenId => Str

  The ID of the client token.


=head2 Content => Str

  The source of the schema definition.


=head2 Description => Str

  The description of the schema.


=head2 Type => Str

  The schema type for the events schema.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

