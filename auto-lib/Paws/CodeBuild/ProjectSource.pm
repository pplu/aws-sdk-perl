package Paws::CodeBuild::ProjectSource;
  use Moose;
  has Auth => (is => 'ro', isa => 'Paws::CodeBuild::SourceAuth', xmlname => 'auth', request_name => 'auth', traits => ['Unwrapped','NameInRequest']);
  has Buildspec => (is => 'ro', isa => 'Str', xmlname => 'buildspec', request_name => 'buildspec', traits => ['Unwrapped','NameInRequest']);
  has Location => (is => 'ro', isa => 'Str', xmlname => 'location', request_name => 'location', traits => ['Unwrapped','NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', xmlname => 'type', request_name => 'type', traits => ['Unwrapped','NameInRequest'], required => 1);
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

Information about the build project's build input source code.

=head1 ATTRIBUTES


=head2 Auth => L<Paws::CodeBuild::SourceAuth>

  Information about the authorization settings for AWS CodeBuild to
access the source code to be built.

This information is only for the AWS CodeBuild console's use. Your code
should not get or set this information directly.


=head2 Buildspec => Str

  The build spec declaration to use for this build project's related
builds.

If this value is not specified, a build spec must be included along
with the source code to be built.


=head2 Location => Str

  Information about the location of the source code to be built. Valid
values include:

=over

=item *

For source code settings that are specified in the source action of a
pipeline in AWS CodePipeline, C<location> should not be specified. If
it is specified, AWS CodePipeline will ignore it. This is because AWS
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
bucket, the path to the ZIP file that contains the source code (for
example, C< I<bucket-name>/I<path>/I<to>/I<object-name>.zip>)

=item *

For source code in a GitHub repository, the HTTPS clone URL, including
the user name and personal access token, to the repository that
contains the source code and the build spec (for example,
C<https://I<login-user-name>:I<personal-access-token>@github.com/I<repo-owner-name>/I<repo-name>.git>).
For more information, see Creating an Access Token for Command-Line Use
on the GitHub Help website.

=back



=head2 B<REQUIRED> Type => Str

  The type of repository that contains the source code to be built. Valid
values include:

=over

=item *

C<CODECOMMIT>: The source code is in an AWS CodeCommit repository.

=item *

C<CODEPIPELINE>: The source code settings are specified in the source
action of a pipeline in AWS CodePipeline.

=item *

C<GITHUB>: The source code is in a GitHub repository.

=item *

C<S3>: The source code is in an Amazon Simple Storage Service (Amazon
S3) input bucket.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

