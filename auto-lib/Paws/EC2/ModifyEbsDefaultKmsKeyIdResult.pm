
package Paws::EC2::ModifyEbsDefaultKmsKeyIdResult;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyEbsDefaultKmsKeyIdResult

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

The Amazon Resource Name (ARN) of the default CMK for encryption by
default.


=head2 _request_id => Str


=cut

