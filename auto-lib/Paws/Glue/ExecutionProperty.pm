package Paws::Glue::ExecutionProperty;
  use Moose;
  has MaxConcurrentRuns => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ExecutionProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::ExecutionProperty object:

  $service_obj->Method(Att1 => { MaxConcurrentRuns => $value, ..., MaxConcurrentRuns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::ExecutionProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxConcurrentRuns

=head1 DESCRIPTION

An execution property of a job.

=head1 ATTRIBUTES


=head2 MaxConcurrentRuns => Int

  The maximum number of concurrent runs allowed for the job. The default
is 1. An error is returned when this threshold is reached. The maximum
value you can specify is controlled by a service limit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

