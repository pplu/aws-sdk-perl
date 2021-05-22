
package Paws::ResourceGroups::CreateGroupOutput;
  use Moose;
  has Group => (is => 'ro', isa => 'Paws::ResourceGroups::Group');
  has GroupConfiguration => (is => 'ro', isa => 'Paws::ResourceGroups::GroupConfiguration');
  has ResourceQuery => (is => 'ro', isa => 'Paws::ResourceGroups::ResourceQuery');
  has Tags => (is => 'ro', isa => 'Paws::ResourceGroups::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::CreateGroupOutput

=head1 ATTRIBUTES


=head2 Group => L<Paws::ResourceGroups::Group>

The description of the resource group.


=head2 GroupConfiguration => L<Paws::ResourceGroups::GroupConfiguration>

The service configuration associated with the resource group. For
details about the syntax of a service configuration, see Service
configurations for resource groups
(https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).


=head2 ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>

The resource query associated with the group. For more information
about resource queries, see Create a tag-based group in Resource Groups
(https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag).


=head2 Tags => L<Paws::ResourceGroups::Tags>

The tags associated with the group.


=head2 _request_id => Str


=cut

