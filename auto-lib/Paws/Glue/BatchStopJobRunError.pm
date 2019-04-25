package Paws::Glue::BatchStopJobRunError;
  use Moose;
  has ErrorDetail => (is => 'ro', isa => 'Paws::Glue::ErrorDetail');
  has JobName => (is => 'ro', isa => 'Str');
  has JobRunId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchStopJobRunError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::BatchStopJobRunError object:

  $service_obj->Method(Att1 => { ErrorDetail => $value, ..., JobRunId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::BatchStopJobRunError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorDetail

=head1 DESCRIPTION

Records an error that occurred when attempting to stop a specified job
run.

=head1 ATTRIBUTES


=head2 ErrorDetail => L<Paws::Glue::ErrorDetail>

  Specifies details about the error that was encountered.


=head2 JobName => Str

  The name of the job definition used in the job run in question.


=head2 JobRunId => Str

  The JobRunId of the job run in question.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

