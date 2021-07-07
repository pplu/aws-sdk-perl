
package Paws::Datasync::CreateLocationObjectStorage;
  use Moose;
  has AccessKey => (is => 'ro', isa => 'Str');
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has BucketName => (is => 'ro', isa => 'Str', required => 1);
  has SecretKey => (is => 'ro', isa => 'Str');
  has ServerHostname => (is => 'ro', isa => 'Str', required => 1);
  has ServerPort => (is => 'ro', isa => 'Int');
  has ServerProtocol => (is => 'ro', isa => 'Str');
  has Subdirectory => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationObjectStorage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationObjectStorageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationObjectStorage - Arguments for method CreateLocationObjectStorage on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationObjectStorage on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationObjectStorage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationObjectStorage.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationObjectStorageResponse =
      $datasync->CreateLocationObjectStorage(
      AgentArns => [
        'MyAgentArn', ...    # max: 128
      ],
      BucketName     => 'MyObjectStorageBucketName',
      ServerHostname => 'MyServerHostname',
      AccessKey      => 'MyObjectStorageAccessKey',    # OPTIONAL
      SecretKey      => 'MyObjectStorageSecretKey',    # OPTIONAL
      ServerPort     => 1,                             # OPTIONAL
      ServerProtocol => 'HTTPS',                       # OPTIONAL
      Subdirectory   => 'MyS3Subdirectory',            # OPTIONAL
      Tags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $LocationArn = $CreateLocationObjectStorageResponse->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationObjectStorageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationObjectStorage>

=head1 ATTRIBUTES


=head2 AccessKey => Str

Optional. The access key is used if credentials are required to access
the self-managed object storage server. If your object storage requires
a user name and password to authenticate, use C<AccessKey> and
C<SecretKey> to provide the user name and password, respectively.



=head2 B<REQUIRED> AgentArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the agents associated with the
self-managed object storage server location.



=head2 B<REQUIRED> BucketName => Str

The bucket on the self-managed object storage server that is used to
read data from.



=head2 SecretKey => Str

Optional. The secret key is used if credentials are required to access
the self-managed object storage server. If your object storage requires
a user name and password to authenticate, use C<AccessKey> and
C<SecretKey> to provide the user name and password, respectively.



=head2 B<REQUIRED> ServerHostname => Str

The name of the self-managed object storage server. This value is the
IP address or Domain Name Service (DNS) name of the object storage
server. An agent uses this host name to mount the object storage server
in a network.



=head2 ServerPort => Int

The port that your self-managed object storage server accepts inbound
network traffic on. The server port is set by default to TCP 80 (HTTP)
or TCP 443 (HTTPS). You can specify a custom port if your self-managed
object storage server requires one.



=head2 ServerProtocol => Str

The protocol that the object storage server uses to communicate. Valid
values are HTTP or HTTPS.

Valid values are: C<"HTTPS">, C<"HTTP">

=head2 Subdirectory => Str

The subdirectory in the self-managed object storage server that is used
to read data from.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

The key-value pair that represents the tag that you want to add to the
location. The value can be an empty string. We recommend using tags to
name your resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationObjectStorage in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

