
package Paws::Datasync::UpdateLocationObjectStorage;
  use Moose;
  has AccessKey => (is => 'ro', isa => 'Str');
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has SecretKey => (is => 'ro', isa => 'Str');
  has ServerPort => (is => 'ro', isa => 'Int');
  has ServerProtocol => (is => 'ro', isa => 'Str');
  has Subdirectory => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationObjectStorage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationObjectStorageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationObjectStorage - Arguments for method UpdateLocationObjectStorage on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationObjectStorage on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationObjectStorage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationObjectStorage.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationObjectStorageResponse =
      $datasync->UpdateLocationObjectStorage(
      LocationArn => 'MyLocationArn',
      AccessKey   => 'MyObjectStorageAccessKey',    # OPTIONAL
      AgentArns   => [
        'MyAgentArn', ...                           # max: 128
      ],    # OPTIONAL
      SecretKey      => 'MyObjectStorageSecretKey',    # OPTIONAL
      ServerPort     => 1,                             # OPTIONAL
      ServerProtocol => 'HTTPS',                       # OPTIONAL
      Subdirectory   => 'MyS3Subdirectory',            # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationObjectStorage>

=head1 ATTRIBUTES


=head2 AccessKey => Str

Optional. The access key is used if credentials are required to access
the self-managed object storage server. If your object storage requires
a user name and password to authenticate, use C<AccessKey> and
C<SecretKey> to provide the user name and password, respectively.



=head2 AgentArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the agents associated with the
self-managed object storage server location.



=head2 B<REQUIRED> LocationArn => Str

The Amazon Resource Name (ARN) of the self-managed object storage
server location to be updated.



=head2 SecretKey => Str

Optional. The secret key is used if credentials are required to access
the self-managed object storage server. If your object storage requires
a user name and password to authenticate, use C<AccessKey> and
C<SecretKey> to provide the user name and password, respectively.



=head2 ServerPort => Int

The port that your self-managed object storage server accepts inbound
network traffic on. The server port is set by default to TCP 80 (HTTP)
or TCP 443 (HTTPS). You can specify a custom port if your self-managed
object storage server requires one.



=head2 ServerProtocol => Str

The protocol that the object storage server uses to communicate. Valid
values are C<HTTP> or C<HTTPS>.

Valid values are: C<"HTTPS">, C<"HTTP">

=head2 Subdirectory => Str

The subdirectory in the self-managed object storage server that is used
to read data from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationObjectStorage in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

