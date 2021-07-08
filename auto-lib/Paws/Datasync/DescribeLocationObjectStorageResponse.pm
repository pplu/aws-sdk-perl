
package Paws::Datasync::DescribeLocationObjectStorageResponse;
  use Moose;
  has AccessKey => (is => 'ro', isa => 'Str');
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreationTime => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has ServerPort => (is => 'ro', isa => 'Int');
  has ServerProtocol => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationObjectStorageResponse

=head1 ATTRIBUTES


=head2 AccessKey => Str

Optional. The access key is used if credentials are required to access
the self-managed object storage server. If your object storage requires
a user name and password to authenticate, use C<AccessKey> and
C<SecretKey> to provide the user name and password, respectively.


=head2 AgentArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the agents associated with the
self-managed object storage server location.


=head2 CreationTime => Str

The time that the self-managed object storage server agent was created.


=head2 LocationArn => Str

The Amazon Resource Name (ARN) of the self-managed object storage
server location to describe.


=head2 LocationUri => Str

The URL of the source self-managed object storage server location that
was described.


=head2 ServerPort => Int

The port that your self-managed object storage server accepts inbound
network traffic on. The server port is set by default to TCP 80 (HTTP)
or TCP 443 (HTTPS).


=head2 ServerProtocol => Str

The protocol that the object storage server uses to communicate. Valid
values are HTTP or HTTPS.

Valid values are: C<"HTTPS">, C<"HTTP">
=head2 _request_id => Str


=cut

1;