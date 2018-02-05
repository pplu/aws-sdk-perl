
package Paws::CodeBuild::StartBuild;
  use Moose;
  has ArtifactsOverride => (is => 'ro', isa => 'Paws::CodeBuild::ProjectArtifacts', traits => ['NameInRequest'], request_name => 'artifactsOverride' );
  has BuildspecOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'buildspecOverride' );
  has EnvironmentVariablesOverride => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::EnvironmentVariable]', traits => ['NameInRequest'], request_name => 'environmentVariablesOverride' );
  has GitCloneDepthOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'gitCloneDepthOverride' );
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName' , required => 1);
  has SourceVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceVersion' );
  has TimeoutInMinutesOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMinutesOverride' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBuild');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::StartBuildOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StartBuild - Arguments for method StartBuild on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBuild on the 
AWS CodeBuild service. Use the attributes of this class
as arguments to method StartBuild.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBuild.

As an example:

  $service_obj->StartBuild(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ArtifactsOverride => L<Paws::CodeBuild::ProjectArtifacts>

Build output artifact settings that override, for this build only, the
latest ones already defined in the build project.



=head2 BuildspecOverride => Str

A build spec declaration that overrides, for this build only, the
latest one already defined in the build project.



=head2 EnvironmentVariablesOverride => ArrayRef[L<Paws::CodeBuild::EnvironmentVariable>]

A set of environment variables that overrides, for this build only, the
latest ones already defined in the build project.



=head2 GitCloneDepthOverride => Int

The user-defined depth of history, with a minimum value of 0, that
overrides, for this build only, any previous depth of history defined
in the build project.



=head2 B<REQUIRED> ProjectName => Str

The name of the build project to start running a build.



=head2 SourceVersion => Str

A version of the build input to be built, for this build only. If not
specified, the latest version will be used. If specified, must be one
of:

=over

=item *

For AWS CodeCommit: the commit ID to use.

=item *

For GitHub: the commit ID, pull request ID, branch name, or tag name
that corresponds to the version of the source code you want to build.
If a pull request ID is specified, it must use the format
C<pr/pull-request-ID> (for example C<pr/25>). If a branch name is
specified, the branch's HEAD commit ID will be used. If not specified,
the default branch's HEAD commit ID will be used.

=item *

For Bitbucket: the commit ID, branch name, or tag name that corresponds
to the version of the source code you want to build. If a branch name
is specified, the branch's HEAD commit ID will be used. If not
specified, the default branch's HEAD commit ID will be used.

=item *

For Amazon Simple Storage Service (Amazon S3): the version ID of the
object representing the build input ZIP file to use.

=back




=head2 TimeoutInMinutesOverride => Int

The number of build timeout minutes, from 5 to 480 (8 hours), that
overrides, for this build only, the latest setting already defined in
the build project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBuild in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

