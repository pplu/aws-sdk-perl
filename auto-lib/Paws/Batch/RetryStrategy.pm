package Paws::Batch::RetryStrategy;
  use Moose;
  has Attempts => (is => 'ro', isa => 'Int', request_name => 'attempts', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::RetryStrategy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::RetryStrategy object:

  $service_obj->Method(Att1 => { Attempts => $value, ..., Attempts => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::RetryStrategy object:

  $result = $service_obj->Method(...);
  $result->Att1->Attempts

=head1 DESCRIPTION

The retry strategy associated with a job.

=head1 ATTRIBUTES


=head2 Attempts => Int

  The number of times to move a job to the C<RUNNABLE> status. You may
specify between 1 and 10 attempts. If the value of C<attempts> is
greater than one, the job is retried on failure the same number of
attempts as the value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

