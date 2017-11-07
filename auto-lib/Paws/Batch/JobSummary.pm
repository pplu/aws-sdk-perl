package Paws::Batch::JobSummary;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest'], required => 1);
  has JobName => (is => 'ro', isa => 'Str', request_name => 'jobName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::JobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::JobSummary object:

  $service_obj->Method(Att1 => { JobId => $value, ..., JobName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::JobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->JobId

=head1 DESCRIPTION

An object representing summary details of a job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

  The ID of the job.


=head2 B<REQUIRED> JobName => Str

  The name of the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

