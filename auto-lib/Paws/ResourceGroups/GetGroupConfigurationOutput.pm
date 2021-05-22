
package Paws::ResourceGroups::GetGroupConfigurationOutput;
  use Moose;
  has GroupConfiguration => (is => 'ro', isa => 'Paws::ResourceGroups::GroupConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetGroupConfigurationOutput

=head1 ATTRIBUTES


=head2 GroupConfiguration => L<Paws::ResourceGroups::GroupConfiguration>

The service configuration associated with the specified group. For
details about the service configuration syntax, see Service
configurations for resource groups
(https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).


=head2 _request_id => Str


=cut

