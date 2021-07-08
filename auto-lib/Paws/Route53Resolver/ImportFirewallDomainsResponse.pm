
package Paws::Route53Resolver::ImportFirewallDomainsResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ImportFirewallDomainsResponse

=head1 ATTRIBUTES


=head2 Id => Str

The Id of the firewall domain list that DNS Firewall just updated.


=head2 Name => Str

The name of the domain list.


=head2 Status => Str



Valid values are: C<"COMPLETE">, C<"COMPLETE_IMPORT_FAILED">, C<"IMPORTING">, C<"DELETING">, C<"UPDATING">
=head2 StatusMessage => Str

Additional information about the status of the list, if available.


=head2 _request_id => Str


=cut

1;