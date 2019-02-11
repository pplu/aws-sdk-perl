package Paws::Transfer::ListedServer;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has IdentityProviderType => (is => 'ro', isa => 'Str');
  has LoggingRole => (is => 'ro', isa => 'Str');
  has ServerId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has UserCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListedServer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::ListedServer object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::ListedServer object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Returns properties of the server that was specified.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The unique Amazon Resource Name (ARN) for the server to be listed.


=head2 IdentityProviderType => Str

  The authentication method used to validate a user for the server that
was specified. listed. This can include Secure Shell (SSH), user name
and password combinations, or your own custom authentication method.
Valid values include C<SERVICE_MANAGED> or C<API_GATEWAY>.


=head2 LoggingRole => Str

  The AWS Identity and Access Management entity that allows the server to
turn on Amazon CloudWatch logging.


=head2 ServerId => Str

  This value is the unique system assigned identifier for the SFTP
servers that were listed.


=head2 State => Str

  This property describes the condition of the SFTP server for the server
that was described. A value of C<ONLINE>E<gt> indicates that the server
can accept jobs and transfer files. A C<State> value of C<OFFLINE>
means that the server cannot perform file transfer operations.

The states of C<STARTING> and C<STOPPING> indicated that the server is
in an intermediate state, either not fully able to respond, or not
fully offline. The values of C<START_FAILED> or C<STOP_FAILED> can
indicate an error condition.


=head2 UserCount => Int

  This property is a numeric value that indicates the number of users
that are assigned to the SFTP server you specified with the
C<ServerId>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

