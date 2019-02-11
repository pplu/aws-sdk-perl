
package Paws::Transfer::UpdateServer;
  use Moose;
  has IdentityProviderDetails => (is => 'ro', isa => 'Paws::Transfer::IdentityProviderDetails');
  has LoggingRole => (is => 'ro', isa => 'Str');
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::UpdateServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateServer - Arguments for method UpdateServer on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServer on the
L<AWS Transfer for SFTP|Paws::Transfer> service. Use the attributes of this class
as arguments to method UpdateServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServer.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $UpdateServerResponse = $transfer->UpdateServer(
      ServerId                => 'MyServerId',
      IdentityProviderDetails => {
        InvocationRole => 'MyRole',    # OPTIONAL
        Url            => 'MyUrl',     # OPTIONAL
      },    # OPTIONAL
      LoggingRole => 'MyNullableRole',    # OPTIONAL
    );

    # Results:
    my $ServerId = $UpdateServerResponse->ServerId;

    # Returns a L<Paws::Transfer::UpdateServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/UpdateServer>

=head1 ATTRIBUTES


=head2 IdentityProviderDetails => L<Paws::Transfer::IdentityProviderDetails>

This response parameter is an array containing all of the information
required to call a customer's authentication API method.



=head2 LoggingRole => Str

Changes the AWS Identity and Access Management (IAM) role that allows
Amazon S3 events to be logged in Amazon CloudWatch, turning logging on
or off.



=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server instance that
the user account is assigned to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServer in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

