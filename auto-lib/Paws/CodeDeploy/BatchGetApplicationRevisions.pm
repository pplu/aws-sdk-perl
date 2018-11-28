
package Paws::CodeDeploy::BatchGetApplicationRevisions;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has Revisions => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::RevisionLocation]', traits => ['NameInRequest'], request_name => 'revisions' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetApplicationRevisions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::BatchGetApplicationRevisionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetApplicationRevisions - Arguments for method BatchGetApplicationRevisions on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetApplicationRevisions on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method BatchGetApplicationRevisions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetApplicationRevisions.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $BatchGetApplicationRevisionsOutput =
      $codedeploy->BatchGetApplicationRevisions(
      ApplicationName => 'MyApplicationName',
      Revisions       => [
        {
          AppSpecContent => {
            Content => 'MyRawStringContent',    # OPTIONAL
            Sha256  => 'MyRawStringSha256',     # OPTIONAL
          },    # OPTIONAL
          GitHubLocation => {
            CommitId   => 'MyCommitId',      # OPTIONAL
            Repository => 'MyRepository',    # OPTIONAL
          },    # OPTIONAL
          RevisionType =>
            'S3',    # values: S3, GitHub, String, AppSpecContent; OPTIONAL
          S3Location => {
            Bucket => 'MyS3Bucket',    # OPTIONAL
            BundleType => 'tar',   # values: tar, tgz, zip, YAML, JSON; OPTIONAL
            ETag    => 'MyETag',         # OPTIONAL
            Key     => 'MyS3Key',        # OPTIONAL
            Version => 'MyVersionId',    # OPTIONAL
          },    # OPTIONAL
          String => {
            Content => 'MyRawStringContent',    # OPTIONAL
            Sha256  => 'MyRawStringSha256',     # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $ApplicationName = $BatchGetApplicationRevisionsOutput->ApplicationName;
    my $ErrorMessage    = $BatchGetApplicationRevisionsOutput->ErrorMessage;
    my $Revisions       = $BatchGetApplicationRevisionsOutput->Revisions;

    # Returns a L<Paws::CodeDeploy::BatchGetApplicationRevisionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/BatchGetApplicationRevisions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an AWS CodeDeploy application about which to get revision
information.



=head2 B<REQUIRED> Revisions => ArrayRef[L<Paws::CodeDeploy::RevisionLocation>]

Information to get about the application revisions, including type and
location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetApplicationRevisions in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

