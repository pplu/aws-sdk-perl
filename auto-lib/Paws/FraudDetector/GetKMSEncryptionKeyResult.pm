
package Paws::FraudDetector::GetKMSEncryptionKeyResult;
  use Moose;
  has KmsKey => (is => 'ro', isa => 'Paws::FraudDetector::KMSKey', traits => ['NameInRequest'], request_name => 'kmsKey' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetKMSEncryptionKeyResult

=head1 ATTRIBUTES


=head2 KmsKey => L<Paws::FraudDetector::KMSKey>

The KMS encryption key.


=head2 _request_id => Str


=cut

1;