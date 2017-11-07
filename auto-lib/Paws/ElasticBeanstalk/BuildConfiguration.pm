package Paws::ElasticBeanstalk::BuildConfiguration;
  use Moose;
  has ArtifactName => (is => 'ro', isa => 'Str');
  has CodeBuildServiceRole => (is => 'ro', isa => 'Str', required => 1);
  has ComputeType => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'Str', required => 1);
  has TimeoutInMinutes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::BuildConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::BuildConfiguration object:

  $service_obj->Method(Att1 => { ArtifactName => $value, ..., TimeoutInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::BuildConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactName

=head1 DESCRIPTION

Settings for an AWS CodeBuild build.

=head1 ATTRIBUTES


=head2 ArtifactName => Str

  The name of the artifact of the CodeBuild build. If provided, Elastic
Beanstalk stores the build artifact in the S3 location
I<S3-bucket>/resources/I<application-name>/codebuild/codebuild-I<version-label>-I<artifact-name>.zip.
If not provided, Elastic Beanstalk stores the build artifact in the S3
location
I<S3-bucket>/resources/I<application-name>/codebuild/codebuild-I<version-label>.zip.


=head2 B<REQUIRED> CodeBuildServiceRole => Str

  The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that enables AWS CodeBuild to interact with
dependent AWS services on behalf of the AWS account.


=head2 ComputeType => Str

  Information about the compute resources the build project will use.

=over

=item *

C<BUILD_GENERAL1_SMALL: Use up to 3 GB memory and 2 vCPUs for builds>

=item *

C<BUILD_GENERAL1_MEDIUM: Use up to 7 GB memory and 4 vCPUs for builds>

=item *

C<BUILD_GENERAL1_LARGE: Use up to 15 GB memory and 8 vCPUs for builds>

=back



=head2 B<REQUIRED> Image => Str

  The ID of the Docker image to use for this build project.


=head2 TimeoutInMinutes => Int

  How long in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait
until timing out any related build that does not get marked as
completed. The default is 60 minutes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

