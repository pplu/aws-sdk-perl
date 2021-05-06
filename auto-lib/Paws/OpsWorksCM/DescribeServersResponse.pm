
package Paws::OpsWorksCM::DescribeServersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Servers => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::Server]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeServersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

This is not currently implemented for C<DescribeServers> requests.


=head2 Servers => ArrayRef[L<Paws::OpsWorksCM::Server>]

Contains the response to a C<DescribeServers> request.

I<For Chef Automate servers:> If
C<DescribeServersResponse$Servers$EngineAttributes> includes
CHEF_MAJOR_UPGRADE_AVAILABLE, you can upgrade the Chef Automate server
to Chef Automate 2. To be eligible for upgrade, a server running Chef
Automate 1 must have had at least one successful maintenance run after
November 1, 2019.

I<For Puppet Server:>
C<DescribeServersResponse$Servers$EngineAttributes> contains
PUPPET_API_CA_CERT. This is the PEM-encoded CA certificate that is used
by the Puppet API over TCP port number 8140. The CA certificate is also
used to sign node certificates.


=head2 _request_id => Str


=cut

1;