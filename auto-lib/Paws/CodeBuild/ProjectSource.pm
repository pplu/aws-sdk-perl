package Paws::CodeBuild::ProjectSource;
  use Moose;
  has Auth => (is => 'ro', isa => 'Paws::CodeBuild::SourceAuth', request_name => 'auth', traits => ['NameInRequest']);
  has Buildspec => (is => 'ro', isa => 'Str', request_name => 'buildspec', traits => ['NameInRequest']);
  has GitCloneDepth => (is => 'ro', isa => 'Int', request_name => 'gitCloneDepth', traits => ['NameInRequest']);
  has InsecureSsl => (is => 'ro', isa => 'Bool', request_name => 'insecureSsl', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Str', request_name => 'location', traits => ['NameInRequest']);
  has ReportBuildStatus => (is => 'ro', isa => 'Bool', request_name => 'reportBuildStatus', traits => ['NameInRequest']);
  has SourceIdentifier => (is => 'ro', isa => 'Str', request_name => 'sourceIdentifier', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ProjectSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ProjectSource object:

  $service_obj->Method(Att1 => { Auth => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ProjectSource object:

  $result = $service_obj->Method(...);
  $result->Att1->Auth

=head1 DESCRIPTION

Information about the build input source code for the build project.

=head1 ATTRIBUTES


=head2 Auth => L<Paws::CodeBuild::SourceAuth>

  Information about the authorization settings for AWS CodeBuild to
access the source code to be built.

This information is for the AWS CodeBuild console's use only. Your code
should not get or set this information directly.


=head2 Buildspec => Str

  The build spec declaration to use for the builds in this build project.

If this value is not specified, a build spec must be included along
with the source code to be built.


=head2 GitCloneDepth => Int

  Information about the git clone depth for the build project.


=head2 InsecureSsl => Bool

  Enable this flag to ignore SSL warnings while connecting to the project
source code.


=head2 Location => Str

  Information about the location of the source code to be built. Valid
values include:

=over

=item *

For source code settings that are specified in the source action of a
pipeline in AWS CodePipeline, C<location> should not be specified. If
it is specified, AWS CodePipeline ignores it. This is because AWS
CodePipeline uses the settings in a pipeline's source action instead of
this value.

=item *

For source code in an AWS CodeCommit repository, the HTTPS clone URL to
the repository that contains the source code and the build spec (for
example,
C<https://git-codecommit.I<region-ID>.amazonaws.com/v1/repos/I<repo-name>
>).

=item *

For source code in an Amazon Simple Storage Service (Amazon S3) input
bucket, one of the following.

=over

=item *

The path to the ZIP file that contains the source code (for example, C<
I<bucket-name>/I<path>/I<to>/I<object-name>.zip>).

=item *

The path to the folder that contains the source code (for example, C<
I<bucket-name>/I<path>/I<to>/I<source-code>/I<folder>/>).

=back

=item *

For source code in a GitHub repository, the HTTPS clone URL to the
repository that contains the source and the build spec. You must
connect your AWS account to your GitHub account. Use the AWS CodeBuild
console to start creating a build project. When you use the console to
connect (or reconnect) with GitHub, on the GitHub B<Authorize
application> page, for B<Organization access>, choose B<Request access>
next to each repository you want to allow AWS CodeBuild to have access
to, and then choose B<Authorize application>. (After you have connected
to your GitHub account, you do not need to finish creating the build
project. You can leave the AWS CodeBuild console.) To instruct AWS
CodeBuild to use this connection, in the C<source> object, set the
C<auth> object's C<type> value to C<OAUTH>.

=item *

For source code in a Bitbucket repository, the HTTPS clone URL to the
repository that contains the source and the build spec. You must
connect your AWS account to your Bitbucket account. Use the AWS
CodeBuild console to start creating a build project. When you use the
console to connect (or reconnect) with Bitbucket, on the Bitbucket
B<Confirm access to your account> page, choose B<Grant access>. (After
you have connected to your Bitbucket account, you do not need to finish
creating the build project. You can leave the AWS CodeBuild console.)
To instruct AWS CodeBuild to use this connection, in the C<source>
object, set the C<auth> object's C<type> value to C<OAUTH>.

=back



=head2 ReportBuildStatus => Bool

  Set to true to report the status of a build's start and finish to your
source provider. This option is valid only when your source provider is
GitHub, GitHub Enterprise, or Bitbucket. If this is set and you use a
different source provider, an invalidInputException is thrown.


=head2 SourceIdentifier => Str

  An identifier for this project source.


=head2 B<REQUIRED> Type => Str

  The type of repository that contains the source code to be built. Valid
values include:

=over

=item *

C<BITBUCKET>: The source code is in a Bitbucket repository.

=item *

C<CODECOMMIT>: The source code is in an AWS CodeCommit repository.

=item *

C<CODEPIPELINE>: The source code settings are specified in the source
action of a pipeline in AWS CodePipeline.

=item *

C<GITHUB>: The source code is in a GitHub repository.

=item *

C<NO_SOURCE>: The project does not have input source code.

=item *

C<S3>: The source code is in an Amazon Simple Storage Service (Amazon
S3) input bucket.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

