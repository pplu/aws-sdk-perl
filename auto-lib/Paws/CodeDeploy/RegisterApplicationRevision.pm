
package Paws::CodeDeploy::RegisterApplicationRevision;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Revision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation', traits => ['NameInRequest'], request_name => 'revision' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterApplicationRevision');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::RegisterApplicationRevision - Arguments for method RegisterApplicationRevision on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterApplicationRevision on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method RegisterApplicationRevision.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterApplicationRevision.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    $codedeploy->RegisterApplicationRevision(
      ApplicationName => 'MyApplicationName',
      Revision        => {
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
          BundleType => 'tar',     # values: tar, tgz, zip, YAML, JSON; OPTIONAL
          ETag       => 'MyETag',  # OPTIONAL
          Key        => 'MyS3Key', # OPTIONAL
          Version => 'MyVersionId',    # OPTIONAL
        },    # OPTIONAL
        String => {
          Content => 'MyRawStringContent',    # OPTIONAL
          Sha256  => 'MyRawStringSha256',     # OPTIONAL
        },    # OPTIONAL
      },
      Description => 'MyDescription',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/RegisterApplicationRevision>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an AWS CodeDeploy application associated with the IAM user
or AWS account.



=head2 Description => Str

A comment about the revision.



=head2 B<REQUIRED> Revision => L<Paws::CodeDeploy::RevisionLocation>

Information about the application revision to register, including type
and location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterApplicationRevision in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

