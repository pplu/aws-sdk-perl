# Generated from default/object.tt
package Paws::CodeBuild::ProjectEnvironment;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::CodeBuild::Types qw/CodeBuild_EnvironmentVariable CodeBuild_RegistryCredential/;
  has Certificate => (is => 'ro', isa => Str);
  has ComputeType => (is => 'ro', isa => Str, required => 1);
  has EnvironmentVariables => (is => 'ro', isa => ArrayRef[CodeBuild_EnvironmentVariable]);
  has Image => (is => 'ro', isa => Str, required => 1);
  has ImagePullCredentialsType => (is => 'ro', isa => Str);
  has PrivilegedMode => (is => 'ro', isa => Bool);
  has RegistryCredential => (is => 'ro', isa => CodeBuild_RegistryCredential);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'ComputeType' => {
                                  'type' => 'Str'
                                },
               'Certificate' => {
                                  'type' => 'Str'
                                },
               'PrivilegedMode' => {
                                     'type' => 'Bool'
                                   },
               'ImagePullCredentialsType' => {
                                               'type' => 'Str'
                                             },
               'RegistryCredential' => {
                                         'type' => 'CodeBuild_RegistryCredential',
                                         'class' => 'Paws::CodeBuild::RegistryCredential'
                                       },
               'Image' => {
                            'type' => 'Str'
                          },
               'EnvironmentVariables' => {
                                           'type' => 'ArrayRef[CodeBuild_EnvironmentVariable]',
                                           'class' => 'Paws::CodeBuild::EnvironmentVariable'
                                         }
             },
  'IsRequired' => {
                    'Type' => 1,
                    'ComputeType' => 1,
                    'Image' => 1
                  },
  'NameInRequest' => {
                       'EnvironmentVariables' => 'environmentVariables',
                       'Image' => 'image',
                       'ImagePullCredentialsType' => 'imagePullCredentialsType',
                       'PrivilegedMode' => 'privilegedMode',
                       'RegistryCredential' => 'registryCredential',
                       'ComputeType' => 'computeType',
                       'Type' => 'type',
                       'Certificate' => 'certificate'
                     }
}
;
    return $Params_map;
  }


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

C<BUILD_GENERAL1_LARGE>: Use up to 16 GB memory and 8 vCPUs for builds,
depending on your environment type.

=item *

C<BUILD_GENERAL1_2XLARGE>: Use up to 145 GB memory, 72 vCPUs, and 824
GB of SSD storage for builds. This compute type supports Docker images
up to 100 GB uncompressed.

=back

If you use C<BUILD_GENERAL1_LARGE>:

=over

=item *

For environment type C<LINUX_CONTAINER>, you can use up to 15 GB memory
and 8 vCPUs for builds.

=item *

For environment type C<LINUX_GPU_CONTAINER>, you can use up to 255 GB
memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.

=item *

For environment type C<ARM_CONTAINER>, you can use up to 16 GB memory
and 8 vCPUs on ARM-based processors for builds.

=back

For more information, see Build Environment Compute Types
(https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html)
in the I<AWS CodeBuild User Guide.>


=head2 EnvironmentVariables => ArrayRef[CodeBuild_EnvironmentVariable]

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
true only if the build project is used to build Docker images.
Otherwise, a build that attempts to interact with the Docker daemon
fails. The default setting is C<false>.

You can initialize the Docker daemon during the install phase of your
build by adding one of the following sets of commands to the install
phase of your buildspec file:

If the operating system's base image is Ubuntu Linux:

C<- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock
--host=tcp://0.0.0.0:2375 --storage-driver=overlay&>

C<- timeout 15 sh -c "until docker info; do echo .; sleep 1; done">

If the operating system's base image is Alpine Linux and the previous
command does not work, add the C<-t> argument to C<timeout>:

C<- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock
--host=tcp://0.0.0.0:2375 --storage-driver=overlay&>

C<- timeout -t 15 sh -c "until docker info; do echo .; sleep 1; done">


=head2 RegistryCredential => CodeBuild_RegistryCredential

  The credentials for access to a private registry.


=head2 B<REQUIRED> Type => Str

  The type of build environment to use for related builds.

=over

=item *

The environment type C<ARM_CONTAINER> is available only in regions US
East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Sydney), and
EU (Frankfurt).

=item *

The environment type C<LINUX_CONTAINER> with compute type
C<build.general1.2xlarge> is available only in regions US East (N.
Virginia), US East (N. Virginia), US West (Oregon), Canada (Central),
EU (Ireland), EU (London), EU (Frankfurt), Asia Pacific (Tokyo), Asia
Pacific (Seoul), Asia Pacific (Singapore), Asia Pacific (Sydney), China
(Beijing), and China (Ningxia).

=item *

The environment type C<LINUX_GPU_CONTAINER> is available only in
regions US East (N. Virginia), US East (N. Virginia), US West (Oregon),
Canada (Central), EU (Ireland), EU (London), EU (Frankfurt), Asia
Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore), Asia
Pacific (Sydney) , China (Beijing), and China (Ningxia).

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

