
package Paws::CustomerProfiles::ListProfileObjectTypeTemplatesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::ListProfileObjectTypeTemplateItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListProfileObjectTypeTemplatesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::ListProfileObjectTypeTemplateItem>]

The list of ListProfileObjectType template instances.


=head2 NextToken => Str

The pagination token from the previous ListObjectTypeTemplates API
call.


=head2 _request_id => Str


=cut

