package Paws::Batch::JobTimeout;
  use Moose;
  has AttemptDurationSeconds => (is => 'ro', isa => 'Int', request_name => 'attemptDurationSeconds', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::JobTimeout

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::JobTimeout object:

  $service_obj->Method(Att1 => { AttemptDurationSeconds => $value, ..., AttemptDurationSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::JobTimeout object:

  $result = $service_obj->Method(...);
  $result->Att1->AttemptDurationSeconds

=head1 DESCRIPTION

An object representing a job timeout configuration.

=head1 ATTRIBUTES


=head2 AttemptDurationSeconds => Int

  The time duration in seconds (measured from the job attempt's
C<startedAt> timestamp) after which AWS Batch terminates your jobs if
they have not finished.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

