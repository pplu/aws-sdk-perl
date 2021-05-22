
package Paws::Route53::GetDNSSECResponse;
  use Moose;
  has KeySigningKeys => (is => 'ro', isa => 'ArrayRef[Paws::Route53::KeySigningKey]', required => 1);
  has Status => (is => 'ro', isa => 'Paws::Route53::DNSSECStatus', required => 1);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetDNSSECResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeySigningKeys => ArrayRef[L<Paws::Route53::KeySigningKey>]

The key-signing keys (KSKs) in your account.



=head2 B<REQUIRED> Status => L<Paws::Route53::DNSSECStatus>

A string repesenting the status of DNSSEC.




=cut

