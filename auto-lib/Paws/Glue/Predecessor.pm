package Paws::Glue::Predecessor;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str');
  has RunId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Predecessor

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Predecessor object:

  $service_obj->Method(Att1 => { JobName => $value, ..., RunId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Predecessor object:

  $result = $service_obj->Method(...);
  $result->Att1->JobName

=head1 DESCRIPTION

A job run that was used in the predicate of a conditional trigger that
triggered this job run.

=head1 ATTRIBUTES


=head2 JobName => Str

  The name of the job definition used by the predecessor job run.


=head2 RunId => Str

  The job-run ID of the predecessor job run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

