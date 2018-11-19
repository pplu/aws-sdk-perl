package Paws::ECS::HealthCheck;
  use Moose;
  has Command => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'command', traits => ['NameInRequest'], required => 1);
  has Interval => (is => 'ro', isa => 'Int', request_name => 'interval', traits => ['NameInRequest']);
  has Retries => (is => 'ro', isa => 'Int', request_name => 'retries', traits => ['NameInRequest']);
  has StartPeriod => (is => 'ro', isa => 'Int', request_name => 'startPeriod', traits => ['NameInRequest']);
  has Timeout => (is => 'ro', isa => 'Int', request_name => 'timeout', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::HealthCheck

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::HealthCheck object:

  $service_obj->Method(Att1 => { Command => $value, ..., Timeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::HealthCheck object:

  $result = $service_obj->Method(...);
  $result->Att1->Command

=head1 DESCRIPTION

An object representing a container health check. Health check
parameters that are specified in a container definition override any
Docker health checks that exist in the container image (such as those
specified in a parent image or from the image's Dockerfile).

The following are notes about container health check support:

=over

=item *

Container health checks require version 1.17.0 or greater of the Amazon
ECS container agent. For more information, see Updating the Amazon ECS
Container Agent
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html).

=item *

Container health checks are supported for Fargate tasks if you are
using platform version 1.1.0 or greater. For more information, see AWS
Fargate Platform Versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).

=item *

Container health checks are not supported for tasks that are part of a
service that is configured to use a Classic Load Balancer.

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Command => ArrayRef[Str|Undef]

  A string array representing the command that the container runs to
determine if it is healthy. The string array must start with C<CMD> to
execute the command arguments directly, or C<CMD-SHELL> to run the
command with the container's default shell. For example:

C<[ "CMD-SHELL", "curl -f http://localhost/ || exit 1" ]>

An exit code of 0 indicates success, and non-zero exit code indicates
failure. For more information, see C<HealthCheck> in the Create a
container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/).


=head2 Interval => Int

  The time period in seconds between each health check execution. You may
specify between 5 and 300 seconds. The default value is 30 seconds.


=head2 Retries => Int

  The number of times to retry a failed health check before the container
is considered unhealthy. You may specify between 1 and 10 retries. The
default value is 3.


=head2 StartPeriod => Int

  The optional grace period within which to provide containers time to
bootstrap before failed health checks count towards the maximum number
of retries. You may specify between 0 and 300 seconds. The
C<startPeriod> is disabled by default.

If a health check succeeds within the C<startPeriod>, then the
container is considered healthy and any subsequent failures count
toward the maximum number of retries.


=head2 Timeout => Int

  The time period in seconds to wait for a health check to succeed before
it is considered a failure. You may specify between 2 and 60 seconds.
The default value is 5.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

