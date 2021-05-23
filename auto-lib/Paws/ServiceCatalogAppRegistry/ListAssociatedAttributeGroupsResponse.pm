
package Paws::ServiceCatalogAppRegistry::ListAssociatedAttributeGroupsResponse;
  use Moose;
  has AttributeGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'attributeGroups');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::ListAssociatedAttributeGroupsResponse

=head1 ATTRIBUTES


=head2 AttributeGroups => ArrayRef[Str|Undef]

A list of attribute group IDs.


=head2 NextToken => Str

The token to use to get the next page of results after a previous API
call.


=head2 _request_id => Str


=cut

