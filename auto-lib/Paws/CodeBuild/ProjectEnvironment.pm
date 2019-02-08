package Paws::CodeBuild::ProjectEnvironment;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str', request_name => 'certificate', traits => ['NameInRequest']);
  has ComputeType => (is => 'ro', isa => 'Str', request_name => 'computeType', traits => ['NameInRequest'], required => 1);
  has EnvironmentVariables => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::EnvironmentVariable]', request_name => 'environmentVariables', traits => ['NameInRequest']);
  has Image => (is => 'ro', isa => 'Str', request_name => 'image', traits => ['NameInRequest'], required => 1);
  has ImagePullCredentialsType => (is => 'ro', isa => 'Str', request_name => 'imagePullCredentialsType', traits => ['NameInRequest']);
  has PrivilegedMode => (is => 'ro', isa => 'Bool', request_name => 'privilegedMode', traits => ['NameInRequest']);
  has RegistryCredential => (is => 'ro', isa => 'Paws::CodeBuild::RegistryCredential', request_name => 'registryCredential', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ProjectEnvironment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ProjectEnvironment object:

  $service_obj->Method(Att1 => { Certificate => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ProjectEnvironment object:

  $result = $service_obj->Method(...);
  $result->Att1->Certificate

=head1 DESCRIPTION

Information about the build environment of the build project.

=head1 ATTRIBUTES


=head2 Certificate => Str

  The certificate to use with this build project.


=head2 B<REQUIRED> ComputeType => Str

  Information about the compute resources the build project uses.
Available values include:

=over

=item *

C<BUILD_GENERAL1_SMALL>: Use up to 3 GB memory and 2 vCPUs for builds.

=item *

C<BUILD_GENERAL1_MEDIUM>: Use up to 7 GB memory and 4 vCPUs for builds.

=item *

C<BUILD_GENERAL1_LARGE>: Use up to 15 GB memory and 8 vCPUs for builds.

=back



=head2 EnvironmentVariables => ArrayRef[L<Paws::CodeBuild::EnvironmentVariable>]

  A set of environment variables to make available to builds for this
build project.


=head2 B<REQUIRED> Image => Str

  The image tag or image digest that identifies the Docker image to use
for this build project. Use the following formats:

=over

=item *

For an image tag: C<registry/repository:tag>. For example, to specify
an image with the tag "latest," use C<registry/repository:latest>.

=item *

For an image digest: C<registry/repository@digest>. For example, to
specify an image with the digest
"sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf,"
use
C<registry/repository@sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf>.

=back



=head2 ImagePullCredentialsType => Str

  The type of credentials AWS CodeBuild uses to pull images in your
build. There are two valid values:

=over

=item *

C<CODEBUILD> specifies that AWS CodeBuild uses its own credentials.
This requires that you modify your ECR repository policy to trust AWS
CodeBuild's service principal.

=item *

C<SERVICE_ROLE> specifies that AWS CodeBuild uses your build project's
service role.

=back

When you use a cross-account or private registry image, you must use
SERVICE_ROLE credentials. When you use an AWS CodeBuild curated image,
you must use CODEBUILD credentials.


=head2 PrivilegedMode => Bool

  Enables running the Docker daemon inside a Docker container. Set to
true only if the build project is be used to build Docker images, and
the specified build environment image is not provided by AWS CodeBuild
with Docker support. Otherwise, all associated builds that attempt to
interact with the Docker daemon fail. You must also start the Docker
daemon so that builds can interact with it. One way to do this is to
initialize the Docker daemon during the install phase of your build
spec by running the following build commands. (Do not run these
commands if the specified build environment image is provided by AWS
CodeBuild with Docker support.)

If the operating system's base image is Ubuntu Linux:

C<- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock
--host=tcp://0.0.0.0:2375 --storage-driver=overlay& - timeout 15 sh -c
"until docker info; do echo .; sleep 1; done">

If the operating system's base image is Alpine Linux, add the C<-t>
argument to C<timeout>:

C<- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock
--host=tcp://0.0.0.0:2375 --storage-driver=overlay& - timeout 15 -t sh
-c "until docker info; do echo .; sleep 1; done">


=head2 RegistryCredential => L<Paws::CodeBuild::RegistryCredential>

  The credentials for access to a private registry.


=head2 B<REQUIRED> Type => Str

  The type of build environment to use for related builds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

