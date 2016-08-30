package Paws::Snowball::JobListEntry;
  use Moose;
  has IsMaster => (is => 'ro', isa => 'Bool');
  has JobId => (is => 'ro', isa => 'Str');
  has JobState => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::JobListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::JobListEntry object:

  $service_obj->Method(Att1 => { IsMaster => $value, ..., JobState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::JobListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->IsMaster

=head1 DESCRIPTION

Each C<JobListEntry> object contains a job's state, a job's ID, and a
value that indicates whether the job is a job part, in the case of an
export job.

=head1 ATTRIBUTES


=head2 IsMaster => Bool

  A value that indicates that this job is a master job. A master job
represents a successful request to create an export job. Master jobs
aren't associated with any Snowballs. Instead, each master job will
have at least one job part, and each job part is associated with a
Snowball. It might take some time before the job parts associated with
a particular master job are listed, because they are created after the
master job is created.


=head2 JobId => Str

  The automatically generated ID for a job, for example
C<JID123e4567-e89b-12d3-a456-426655440000>.


=head2 JobState => Str

  The current state of this job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

