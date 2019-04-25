
package Paws::Amplify::StartJob;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BranchName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'branchName', required => 1);
  has CommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitId');
  has CommitMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitMessage');
  has CommitTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitTime');
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has JobReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobReason');
  has JobType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/branches/{branchName}/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::StartJobResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::StartJob - Arguments for method StartJob on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartJob on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method StartJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartJob.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $StartJobResult = $amplify->StartJob(
      AppId         => 'MyAppId',
      BranchName    => 'MyBranchName',
      JobType       => 'RELEASE',
      CommitId      => 'MyCommitId',             # OPTIONAL
      CommitMessage => 'MyCommitMessage',        # OPTIONAL
      CommitTime    => '1970-01-01T01:00:00',    # OPTIONAL
      JobId         => 'MyJobId',                # OPTIONAL
      JobReason     => 'MyJobReason',            # OPTIONAL
    );

    # Results:
    my $JobSummary = $StartJobResult->JobSummary;

    # Returns a L<Paws::Amplify::StartJobResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/StartJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.



=head2 B<REQUIRED> BranchName => Str

Name for the branch, for the Job.



=head2 CommitId => Str

Commit Id from 3rd party repository provider for the Job.



=head2 CommitMessage => Str

Commit message from 3rd party repository provider for the Job.



=head2 CommitTime => Str

Commit date / time for the Job.



=head2 JobId => Str

Unique Id for the Job.



=head2 JobReason => Str

Reason for the Job.



=head2 B<REQUIRED> JobType => Str

Type for the Job.

Valid values are: C<"RELEASE">, C<"RETRY">, C<"WEB_HOOK">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartJob in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

