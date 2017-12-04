package Paws::CloudDirectory::TypedLinkFacetAttributeUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has Attribute => (is => 'ro', isa => 'Paws::CloudDirectory::TypedLinkAttributeDefinition', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::TypedLinkFacetAttributeUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::TypedLinkFacetAttributeUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., Attribute => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::TypedLinkFacetAttributeUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

A typed link facet attribute update.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  The action to perform when updating the attribute.


=head2 B<REQUIRED> Attribute => L<Paws::CloudDirectory::TypedLinkAttributeDefinition>

  The attribute to update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

