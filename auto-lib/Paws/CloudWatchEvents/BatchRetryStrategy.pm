package Paws::CloudWatchEvents::BatchRetryStrategy;
  use Moose;
  has Attempts => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::BatchRetryStrategy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::BatchRetryStrategy object:

  $service_obj->Method(Att1 => { Attempts => $value, ..., Attempts => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::BatchRetryStrategy object:

  $result = $service_obj->Method(...);
  $result->Att1->Attempts

=head1 DESCRIPTION

The retry strategy to use for failed jobs, if the target is an AWS
Batch job. If you specify a retry strategy here, it overrides the retry
strategy defined in the job definition.

=head1 ATTRIBUTES


=head2 Attempts => Int

  The number of times to attempt to retry, if the job fails. Valid values
are 1E<ndash>10.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

