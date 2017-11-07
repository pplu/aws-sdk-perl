package Paws::CloudDirectory::TypedLinkFacet;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::TypedLinkAttributeDefinition]', required => 1);
  has IdentityAttributeOrder => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::TypedLinkFacet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::TypedLinkFacet object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::TypedLinkFacet object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Defines the typed links structure and its attributes. To create a typed
link facet, use the CreateTypedLinkFacet API.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::CloudDirectory::TypedLinkAttributeDefinition>]

  A set of key-value pairs associated with the typed link. Typed link
attributes are used when you have data values that are related to the
link itself, and not to one of the two objects being linked. Identity
attributes also serve to distinguish the link from others of the same
type between the same objects.


=head2 B<REQUIRED> IdentityAttributeOrder => ArrayRef[Str|Undef]

  The set of attributes that distinguish links made from this facet from
each other, in the order of significance. Listing typed links can
filter on the values of these attributes. See ListOutgoingTypedLinks
and ListIncomingTypedLinks for details.


=head2 B<REQUIRED> Name => Str

  The unique name of the typed link facet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

