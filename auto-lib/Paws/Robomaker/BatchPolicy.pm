package Paws::Robomaker::BatchPolicy;
  use Moose;
  has MaxConcurrency => (is => 'ro', isa => 'Int', request_name => 'maxConcurrency', traits => ['NameInRequest']);
  has TimeoutInSeconds => (is => 'ro', isa => 'Int', request_name => 'timeoutInSeconds', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::BatchPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::BatchPolicy object:

  $service_obj->Method(Att1 => { MaxConcurrency => $value, ..., TimeoutInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::BatchPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxConcurrency

=head1 DESCRIPTION

Information about the batch policy.

=head1 ATTRIBUTES


=head2 MaxConcurrency => Int

  The number of active simulation jobs create as part of the batch that
can be in an active state at the same time.

Active states include: C<Pending>,C<Preparing>, C<Running>,
C<Restarting>, C<RunningFailed> and C<Terminating>. All other states
are terminal states.


=head2 TimeoutInSeconds => Int

  The amount of time, in seconds, to wait for the batch to complete.

If a batch times out, and there are pending requests that were failing
due to an internal failure (like C<InternalServiceError>), they will be
moved to the failed list and the batch status will be C<Failed>. If the
pending requests were failing for any other reason, the failed pending
requests will be moved to the failed list and the batch status will be
C<TimedOut>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

