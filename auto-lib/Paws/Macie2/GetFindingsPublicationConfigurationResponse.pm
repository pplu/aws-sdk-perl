
package Paws::Macie2::GetFindingsPublicationConfigurationResponse;
  use Moose;
  has SecurityHubConfiguration => (is => 'ro', isa => 'Paws::Macie2::SecurityHubConfiguration', traits => ['NameInRequest'], request_name => 'securityHubConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetFindingsPublicationConfigurationResponse

=head1 ATTRIBUTES


=head2 SecurityHubConfiguration => L<Paws::Macie2::SecurityHubConfiguration>

The configuration settings that determine which findings are published
to Security Hub.


=head2 _request_id => Str


=cut

