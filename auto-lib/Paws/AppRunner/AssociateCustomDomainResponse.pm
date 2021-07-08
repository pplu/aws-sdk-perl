
package Paws::AppRunner::AssociateCustomDomainResponse;
  use Moose;
  has CustomDomain => (is => 'ro', isa => 'Paws::AppRunner::CustomDomain', required => 1);
  has DNSTarget => (is => 'ro', isa => 'Str', required => 1);
  has ServiceArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::AssociateCustomDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomDomain => L<Paws::AppRunner::CustomDomain>

A description of the domain name that's being associated.


=head2 B<REQUIRED> DNSTarget => Str

The App Runner subdomain of the App Runner service. The custom domain
name is mapped to this target name.


=head2 B<REQUIRED> ServiceArn => Str

The Amazon Resource Name (ARN) of the App Runner service with which a
custom domain name is associated.


=head2 _request_id => Str


=cut

1;