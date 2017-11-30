
package Paws::ResourceGroups::GetGroupQueryOutput;
  use Moose;
  has GroupQuery => (is => 'ro', isa => 'Paws::ResourceGroups::GroupQuery');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetGroupQueryOutput

=head1 ATTRIBUTES


=head2 GroupQuery => L<Paws::ResourceGroups::GroupQuery>

The resource query associated with the specified group.


=head2 _request_id => Str


=cut

