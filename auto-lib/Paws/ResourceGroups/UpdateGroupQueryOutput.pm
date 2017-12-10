
package Paws::ResourceGroups::UpdateGroupQueryOutput;
  use Moose;
  has GroupQuery => (is => 'ro', isa => 'Paws::ResourceGroups::GroupQuery');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::UpdateGroupQueryOutput

=head1 ATTRIBUTES


=head2 GroupQuery => L<Paws::ResourceGroups::GroupQuery>

The resource query associated with the resource group after the update.


=head2 _request_id => Str


=cut

