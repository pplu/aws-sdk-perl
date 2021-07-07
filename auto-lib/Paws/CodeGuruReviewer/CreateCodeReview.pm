
package Paws::CodeGuruReviewer::CreateCodeReview;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RepositoryAssociationArn => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Paws::CodeGuruReviewer::CodeReviewType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCodeReview');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/codereviews');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruReviewer::CreateCodeReviewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::CreateCodeReview - Arguments for method CreateCodeReview on L<Paws::CodeGuruReviewer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCodeReview on the
L<Amazon CodeGuru Reviewer|Paws::CodeGuruReviewer> service. Use the attributes of this class
as arguments to method CreateCodeReview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCodeReview.

=head1 SYNOPSIS

    my $codeguru-reviewer = Paws->service('CodeGuruReviewer');
    my $CreateCodeReviewResponse = $codeguru -reviewer->CreateCodeReview(
      Name                     => 'MyCodeReviewName',
      RepositoryAssociationArn => 'MyAssociationArn',
      Type                     => {
        RepositoryAnalysis => {
          RepositoryHead => {
            BranchName => 'MyBranchName',    # min: 1, max: 256

          },    # OPTIONAL
          SourceCodeType => {
            BranchDiff => {
              DestinationBranchName => 'MyBranchName',    # min: 1, max: 256
              SourceBranchName      => 'MyBranchName',    # min: 1, max: 256

            },    # OPTIONAL
            CommitDiff => {
              DestinationCommit => 'MyCommitId',    # min: 6, max: 64; OPTIONAL
              MergeBaseCommit   => 'MyCommitId',    # min: 6, max: 64; OPTIONAL
              SourceCommit      => 'MyCommitId',    # min: 6, max: 64; OPTIONAL
            },    # OPTIONAL
            RepositoryHead => {
              BranchName => 'MyBranchName',    # min: 1, max: 256

            },    # OPTIONAL
            RequestMetadata => {
              EventInfo => {
                Name  => 'MyEventName',     # min: 1, max: 32; OPTIONAL
                State => 'MyEventState',    # min: 1, max: 32; OPTIONAL
              },    # OPTIONAL
              RequestId  => 'MyRequestId',    # min: 1, max: 64; OPTIONAL
              Requester  => 'MyRequester',    # min: 1, max: 100; OPTIONAL
              VendorName =>
                'GitHub',    # values: GitHub, GitLab, NativeS3; OPTIONAL
            },    # OPTIONAL
            S3BucketRepository => {
              Name    => 'MyName',    # min: 1, max: 100
              Details => {
                BucketName    => 'MyS3BucketName',   # min: 3, max: 63; OPTIONAL
                CodeArtifacts => {
                  SourceCodeArtifactsObjectKey =>
                    'MySourceCodeArtifactsObjectKey',    # min: 1, max: 1024
                  BuildArtifactsObjectKey =>
                    'MyBuildArtifactsObjectKey',   # min: 1, max: 1024; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        AnalysisTypes => [
          'Security', ...    # values: Security, CodeQuality
        ],    # OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $CodeReview = $CreateCodeReviewResponse->CodeReview;

    # Returns a L<Paws::CodeGuruReviewer::CreateCodeReviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer/CreateCodeReview>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Amazon CodeGuru Reviewer uses this value to prevent the accidental
creation of duplicate code reviews if there are failures and retries.



=head2 B<REQUIRED> Name => Str

The name of the code review. The name of each code review in your AWS
account must be unique.



=head2 B<REQUIRED> RepositoryAssociationArn => Str

The Amazon Resource Name (ARN) of the C<RepositoryAssociation>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html)
object. You can retrieve this ARN by calling
C<ListRepositoryAssociations>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html).

A code review can only be created on an associated repository. This is
the ARN of the associated repository.



=head2 B<REQUIRED> Type => L<Paws::CodeGuruReviewer::CodeReviewType>

The type of code review to create. This is specified using a
C<CodeReviewType>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html)
object. You can create a code review only of type
C<RepositoryAnalysis>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCodeReview in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

