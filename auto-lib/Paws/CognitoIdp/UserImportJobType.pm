package Paws::CognitoIdp::UserImportJobType;
  use Moose;
  has CloudWatchLogsRoleArn => (is => 'ro', isa => 'Str');
  has CompletionDate => (is => 'ro', isa => 'Str');
  has CompletionMessage => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has FailedUsers => (is => 'ro', isa => 'Int');
  has ImportedUsers => (is => 'ro', isa => 'Int');
  has JobId => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has SkippedUsers => (is => 'ro', isa => 'Int');
  has StartDate => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UserImportJobType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::UserImportJobType object:

  $service_obj->Method(Att1 => { CloudWatchLogsRoleArn => $value, ..., UserPoolId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::UserImportJobType object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogsRoleArn

=head1 DESCRIPTION

The user import job type.

=head1 ATTRIBUTES


=head2 CloudWatchLogsRoleArn => Str

  The role ARN for the Amazon CloudWatch Logging role for the user import
job. For more information, see "Creating the CloudWatch Logs IAM Role"
in the Amazon Cognito Developer Guide.


=head2 CompletionDate => Str

  The date when the user import job was completed.


=head2 CompletionMessage => Str

  The message returned when the user import job is completed.


=head2 CreationDate => Str

  The date the user import job was created.


=head2 FailedUsers => Int

  The number of users that could not be imported.


=head2 ImportedUsers => Int

  The number of users that were successfully imported.


=head2 JobId => Str

  The job ID for the user import job.


=head2 JobName => Str

  The job name for the user import job.


=head2 PreSignedUrl => Str

  The pre-signed URL to be used to upload the C<.csv> file.


=head2 SkippedUsers => Int

  The number of users that were skipped.


=head2 StartDate => Str

  The date when the user import job was started.


=head2 Status => Str

  The status of the user import job. One of the following:

=over

=item *

C<Created> - The job was created but not started.

=item *

C<Pending> - A transition state. You have started the job, but it has
not begun importing users yet.

=item *

C<InProgress> - The job has started, and users are being imported.

=item *

C<Stopping> - You have stopped the job, but the job has not stopped
importing users yet.

=item *

C<Stopped> - You have stopped the job, and the job has stopped
importing users.

=item *

C<Succeeded> - The job has completed successfully.

=item *

C<Failed> - The job has stopped due to an error.

=item *

C<Expired> - You created a job, but did not start the job within 24-48
hours. All data associated with the job was deleted, and the job cannot
be started.

=back



=head2 UserPoolId => Str

  The user pool ID for the user pool that the users are being imported
into.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

