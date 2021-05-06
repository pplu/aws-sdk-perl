
package Paws::ResourceGroups::CreateGroupOutput;
  use Moose;
  has Group => (is => 'ro', isa => 'Paws::ResourceGroups::Group');
  has ResourceQuery => (is => 'ro', isa => 'Paws::ResourceGroups::ResourceQuery');
  has Tags => (is => 'ro', isa => 'Paws::ResourceGroups::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::CreateGroupOutput

=head1 ATTRIBUTES


=head2 Group => L<Paws::ResourceGroups::Group>

A full description of the resource group after it is created.


=head2 ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>

The resource query associated with the group.


=head2 Tags => L<Paws::ResourceGroups::Tags>

The tags associated with the group.


=head2 _request_id => Str


=cut

