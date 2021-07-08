
package Paws::CodeStarConnections::GetHostOutput;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has ProviderEndpoint => (is => 'ro', isa => 'Str');
  has ProviderType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::CodeStarConnections::VpcConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::GetHostOutput

=head1 ATTRIBUTES


=head2 Name => Str

The name of the requested host.


=head2 ProviderEndpoint => Str

The endpoint of the infrastructure represented by the requested host.


=head2 ProviderType => Str

The provider type of the requested host, such as GitHub Enterprise
Server.

Valid values are: C<"Bitbucket">, C<"GitHub">, C<"GitHubEnterpriseServer">
=head2 Status => Str

The status of the requested host.


=head2 VpcConfiguration => L<Paws::CodeStarConnections::VpcConfiguration>

The VPC configuration of the requested host.


=head2 _request_id => Str


=cut

1;