package Paws::AppMesh::GrpcRetryPolicy;
  use Moose;
  has GrpcRetryEvents => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'grpcRetryEvents', traits => ['NameInRequest']);
  has HttpRetryEvents => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'httpRetryEvents', traits => ['NameInRequest']);
  has MaxRetries => (is => 'ro', isa => 'Int', request_name => 'maxRetries', traits => ['NameInRequest'], required => 1);
  has PerRetryTimeout => (is => 'ro', isa => 'Paws::AppMesh::Duration', request_name => 'perRetryTimeout', traits => ['NameInRequest'], required => 1);
  has TcpRetryEvents => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'tcpRetryEvents', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::GrpcRetryPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::GrpcRetryPolicy object:

  $service_obj->Method(Att1 => { GrpcRetryEvents => $value, ..., TcpRetryEvents => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::GrpcRetryPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->GrpcRetryEvents

=head1 DESCRIPTION

An object that represents a retry policy. Specify at least one value
for at least one of the types of C<RetryEvents>, a value for
C<maxRetries>, and a value for C<perRetryTimeout>.

=head1 ATTRIBUTES


=head2 GrpcRetryEvents => ArrayRef[Str|Undef]

  Specify at least one of the valid values.


=head2 HttpRetryEvents => ArrayRef[Str|Undef]

  Specify at least one of the following values.

=over

=item *

B<server-error> E<ndash> HTTP status codes 500, 501, 502, 503, 504,
505, 506, 507, 508, 510, and 511

=item *

B<gateway-error> E<ndash> HTTP status codes 502, 503, and 504

=item *

B<client-error> E<ndash> HTTP status code 409

=item *

B<stream-error> E<ndash> Retry on refused stream

=back



=head2 B<REQUIRED> MaxRetries => Int

  The maximum number of retry attempts.


=head2 B<REQUIRED> PerRetryTimeout => L<Paws::AppMesh::Duration>

  An object that represents a duration of time.


=head2 TcpRetryEvents => ArrayRef[Str|Undef]

  Specify a valid value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

