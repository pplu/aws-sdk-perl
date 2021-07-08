
package Paws::Route53::CreateKeySigningKeyResponse;
  use Moose;
  has ChangeInfo => (is => 'ro', isa => 'Paws::Route53::ChangeInfo', required => 1);
  has KeySigningKey => (is => 'ro', isa => 'Paws::Route53::KeySigningKey', required => 1);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader'], required => 1);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateKeySigningKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeInfo => L<Paws::Route53::ChangeInfo>





=head2 B<REQUIRED> KeySigningKey => L<Paws::Route53::KeySigningKey>

The key-signing key (KSK) that the request creates.



=head2 B<REQUIRED> Location => Str

The unique URL representing the new key-signing key (KSK).




=cut

