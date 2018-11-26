package Paws::Transfer::DescribedServer;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has IdentityProviderDetails => (is => 'ro', isa => 'Paws::Transfer::IdentityProviderDetails');
  has IdentityProviderType => (is => 'ro', isa => 'Str');
  has LoggingRole => (is => 'ro', isa => 'Str');
  has ServerId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');
  has UserCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribedServer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::DescribedServer object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::DescribedServer object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describe the properties of the server that was specified. Information
returned includes: the server Amazon Resource Name (ARN), the
authentication configuration and type, the logging role, server Id and
state, and assigned tags or metadata.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  Specifies the unique Amazon Resource Name (ARN) for the server to be
described.


=head2 IdentityProviderDetails => L<Paws::Transfer::IdentityProviderDetails>

  Specifies information to call a customer-supplied authentication API.
This field is not populated when the C<IdentityProviderType> of the
server is C<SERVICE_MANAGED>E<gt>.


=head2 IdentityProviderType => Str

  This property defines the mode of authentication method enabled for
this service. A value of C<SERVICE_MANAGED>, means that you are using
this Server to store and access SFTP user credentials within the
service. A value of C<API_GATEWAY> indicates that you have integrated
an API Gateway endpoint that will be invoked for authenticating your
user into the service.


=head2 LoggingRole => Str

  This property is an AWS Identity and Access Management (IAM) entity
that allows the server to turn on Amazon CloudWatch logging for Amazon
S3 events. When set, user activity can be view in your CloudWatch logs.


=head2 ServerId => Str

  This property is a unique system assigned identifier for the SFTP
server that you instantiate.


=head2 State => Str

  The condition of the SFTP server for the server that was described. A
value of C<ONLINE> indicates that the server can accept jobs and
transfer files. A C<State> value of C<OFFLINE> means that the server
cannot perform file transfer operations.

The states of C<STARTING> and C<STOPPING> indicated that the server is
in an intermediate state, either not fully able to respond, or not
fully offline. The values of C<START_FAILED> or C<STOP_FAILED> can
indicate an error condition.


=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

  This property contains the key-value pairs that you can use to search
for and group servers that were assigned to the server that was
described.


=head2 UserCount => Int

  The number of users that are assigned to the SFTP server you specified
with the C<ServerId>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

