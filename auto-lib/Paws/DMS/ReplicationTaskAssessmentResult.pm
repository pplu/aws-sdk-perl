package Paws::DMS::ReplicationTaskAssessmentResult;
  use Moose;
  has AssessmentResults => (is => 'ro', isa => 'Str');
  has AssessmentResultsFile => (is => 'ro', isa => 'Str');
  has AssessmentStatus => (is => 'ro', isa => 'Str');
  has ReplicationTaskArn => (is => 'ro', isa => 'Str');
  has ReplicationTaskIdentifier => (is => 'ro', isa => 'Str');
  has ReplicationTaskLastAssessmentDate => (is => 'ro', isa => 'Str');
  has S3ObjectUrl => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReplicationTaskAssessmentResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ReplicationTaskAssessmentResult object:

  $service_obj->Method(Att1 => { AssessmentResults => $value, ..., S3ObjectUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ReplicationTaskAssessmentResult object:

  $result = $service_obj->Method(...);
  $result->Att1->AssessmentResults

=head1 DESCRIPTION

The task assessment report in JSON format.

=head1 ATTRIBUTES


=head2 AssessmentResults => Str

  The task assessment results in JSON format.


=head2 AssessmentResultsFile => Str

  The file containing the results of the task assessment.


=head2 AssessmentStatus => Str

  The status of the task assessment.


=head2 ReplicationTaskArn => Str

  The Amazon Resource Name (ARN) of the replication task.


=head2 ReplicationTaskIdentifier => Str

  The replication task identifier of the task on which the task
assessment was run.


=head2 ReplicationTaskLastAssessmentDate => Str

  The date the task assessment was completed.


=head2 S3ObjectUrl => Str

  The URL of the S3 object containing the task assessment results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

