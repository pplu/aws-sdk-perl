package Paws::AppMesh::HealthCheckPolicy;
  use Moose;
  has HealthyThreshold => (is => 'ro', isa => 'Int', request_name => 'healthyThreshold', traits => ['NameInRequest'], required => 1);
  has IntervalMillis => (is => 'ro', isa => 'Int', request_name => 'intervalMillis', traits => ['NameInRequest'], required => 1);
  has Path => (is => 'ro', isa => 'Str', request_name => 'path', traits => ['NameInRequest']);
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest'], required => 1);
  has TimeoutMillis => (is => 'ro', isa => 'Int', request_name => 'timeoutMillis', traits => ['NameInRequest'], required => 1);
  has UnhealthyThreshold => (is => 'ro', isa => 'Int', request_name => 'unhealthyThreshold', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::HealthCheckPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::HealthCheckPolicy object:

  $service_obj->Method(Att1 => { HealthyThreshold => $value, ..., UnhealthyThreshold => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::HealthCheckPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->HealthyThreshold

=head1 DESCRIPTION

An object representing the health check policy for a virtual node's
listener.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthyThreshold => Int

  The number of consecutive successful health checks that must occur
before declaring listener healthy.


=head2 B<REQUIRED> IntervalMillis => Int

  The time period in milliseconds between each health check execution.


=head2 Path => Str

  The destination path for the health check request. This is only
required if the specified protocol is HTTP; if the protocol is TCP,
then this parameter is ignored.


=head2 Port => Int

  The destination port for the health check request. This port must match
the port defined in the PortMapping for the listener.


=head2 B<REQUIRED> Protocol => Str

  The protocol for the health check request.


=head2 B<REQUIRED> TimeoutMillis => Int

  The amount of time to wait when receiving a response from the health
check, in milliseconds.


=head2 B<REQUIRED> UnhealthyThreshold => Int

  The number of consecutive failed health checks that must occur before
declaring a virtual node unhealthy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

