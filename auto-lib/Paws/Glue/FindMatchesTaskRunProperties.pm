package Paws::Glue::FindMatchesTaskRunProperties;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str');
  has JobRunId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::FindMatchesTaskRunProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::FindMatchesTaskRunProperties object:

  $service_obj->Method(Att1 => { JobId => $value, ..., JobRunId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::FindMatchesTaskRunProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->JobId

=head1 DESCRIPTION

Specifies configuration properties for a Find Matches task run.

=head1 ATTRIBUTES


=head2 JobId => Str

  The job ID for the Find Matches task run.


=head2 JobName => Str

  The name assigned to the job for the Find Matches task run.


=head2 JobRunId => Str

  The job run ID for the Find Matches task run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

