
package Paws::Transfer::ImportSshPublicKey;
  use Moose;
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has SshPublicKeyBody => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportSshPublicKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::ImportSshPublicKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ImportSshPublicKey - Arguments for method ImportSshPublicKey on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportSshPublicKey on the
L<AWS Transfer for SFTP|Paws::Transfer> service. Use the attributes of this class
as arguments to method ImportSshPublicKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportSshPublicKey.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ImportSshPublicKeyResponse = $transfer->ImportSshPublicKey(
      ServerId         => 'MyServerId',
      SshPublicKeyBody => 'MySshPublicKeyBody',
      UserName         => 'MyUserName',

    );

    # Results:
    my $ServerId       = $ImportSshPublicKeyResponse->ServerId;
    my $SshPublicKeyId = $ImportSshPublicKeyResponse->SshPublicKeyId;
    my $UserName       = $ImportSshPublicKeyResponse->UserName;

    # Returns a L<Paws::Transfer::ImportSshPublicKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ImportSshPublicKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server.



=head2 B<REQUIRED> SshPublicKeyBody => Str

The public key portion of an SSH key pair.



=head2 B<REQUIRED> UserName => Str

The name of the user account that is assigned to one or more servers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportSshPublicKey in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

