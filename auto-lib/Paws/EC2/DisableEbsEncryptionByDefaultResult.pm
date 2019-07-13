
package Paws::EC2::DisableEbsEncryptionByDefaultResult;
  use Moose;
  has EbsEncryptionByDefault => (is => 'ro', isa => 'Bool', request_name => 'ebsEncryptionByDefault', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableEbsEncryptionByDefaultResult

=head1 ATTRIBUTES


=head2 EbsEncryptionByDefault => Bool

The updated status of encryption by default.


=head2 _request_id => Str


=cut

