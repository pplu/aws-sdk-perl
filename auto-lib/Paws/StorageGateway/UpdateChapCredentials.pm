
package Paws::StorageGateway::UpdateChapCredentials;
  use Moose;
  has InitiatorName => (is => 'ro', isa => 'Str', required => 1);
  has SecretToAuthenticateInitiator => (is => 'ro', isa => 'Str', required => 1);
  has SecretToAuthenticateTarget => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChapCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateChapCredentialsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateChapCredentials - Arguments for method UpdateChapCredentials on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChapCredentials on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method UpdateChapCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChapCredentials.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To update CHAP credentials for an iSCSI target
    # Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials
    # for a specified iSCSI target.
    my $UpdateChapCredentialsOutput = $storagegateway->UpdateChapCredentials(
      {
        'InitiatorName' =>
          'iqn.1991-05.com.microsoft:computername.domain.example.com',
        'SecretToAuthenticateInitiator' => 111111111111,
        'SecretToAuthenticateTarget'    => 222222222222,
        'TargetARN' =>
'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume'
      }
    );

    # Results:
    my $InitiatorName = $UpdateChapCredentialsOutput->InitiatorName;
    my $TargetARN     = $UpdateChapCredentialsOutput->TargetARN;

    # Returns a L<Paws::StorageGateway::UpdateChapCredentialsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/UpdateChapCredentials>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InitiatorName => Str

The iSCSI initiator that connects to the target.



=head2 B<REQUIRED> SecretToAuthenticateInitiator => Str

The secret key that the initiator (for example, the Windows client)
must provide to participate in mutual CHAP with the target.

The secret key must be between 12 and 16 bytes when encoded in UTF-8.



=head2 SecretToAuthenticateTarget => Str

The secret key that the target must provide to participate in mutual
CHAP with the initiator (e.g. Windows client).

Byte constraints: Minimum bytes of 12. Maximum bytes of 16.

The secret key must be between 12 and 16 bytes when encoded in UTF-8.



=head2 B<REQUIRED> TargetARN => Str

The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
DescribeStorediSCSIVolumes operation to return the TargetARN for
specified VolumeARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChapCredentials in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

