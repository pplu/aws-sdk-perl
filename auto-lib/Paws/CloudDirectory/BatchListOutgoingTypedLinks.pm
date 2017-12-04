package Paws::CloudDirectory::BatchListOutgoingTypedLinks;
  use Moose;
  has FilterAttributeRanges => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::TypedLinkAttributeRange]');
  has FilterTypedLink => (is => 'ro', isa => 'Paws::CloudDirectory::TypedLinkSchemaAndFacetName');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchListOutgoingTypedLinks

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchListOutgoingTypedLinks object:

  $service_obj->Method(Att1 => { FilterAttributeRanges => $value, ..., ObjectReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchListOutgoingTypedLinks object:

  $result = $service_obj->Method(...);
  $result->Att1->FilterAttributeRanges

=head1 DESCRIPTION

Returns a paginated list of all the outgoing TypedLinkSpecifier
information for an object inside a BatchRead operation. For more
information, see ListOutgoingTypedLinks and
BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 FilterAttributeRanges => ArrayRef[L<Paws::CloudDirectory::TypedLinkAttributeRange>]

  Provides range filters for multiple attributes. When providing ranges
to typed link selection, any inexact ranges must be specified at the
end. Any attributes that do not have a range specified are presumed to
match the entire range.


=head2 FilterTypedLink => L<Paws::CloudDirectory::TypedLinkSchemaAndFacetName>

  Filters are interpreted in the order of the attributes defined on the
typed link facet, not the order they are supplied to any API calls.


=head2 MaxResults => Int

  The maximum number of results to retrieve.


=head2 NextToken => Str

  The pagination token.


=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

  The reference that identifies the object whose attributes will be
listed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

