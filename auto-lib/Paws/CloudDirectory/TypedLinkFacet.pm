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

  An ordered set of attributes that are associate with the typed link.
You can use typed link attributes when you need to represent the
relationship between two objects or allow for quick filtering of
incoming or outgoing typed links.


=head2 B<REQUIRED> IdentityAttributeOrder => ArrayRef[Str|Undef]

  A range filter that you provide for multiple attributes. The ability to
filter typed links considers the order that the attributes are defined
on the typed link facet. When providing ranges to typed link selection,
any inexact ranges must be specified at the end. Any attributes that do
not have a range specified are presumed to match the entire range.
Filters are interpreted in the order of the attributes on the typed
link facet, not the order in which they are supplied to any API calls.


=head2 B<REQUIRED> Name => Str

  The unique name of the typed link facet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

