
package Paws::ElasticBeanstalk::CreateApplicationVersion;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has AutoCreateApplication => (is => 'ro', isa => 'Bool');
  has BuildConfiguration => (is => 'ro', isa => 'Paws::ElasticBeanstalk::BuildConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has Process => (is => 'ro', isa => 'Bool');
  has SourceBuildInformation => (is => 'ro', isa => 'Paws::ElasticBeanstalk::SourceBuildInformation');
  has SourceBundle => (is => 'ro', isa => 'Paws::ElasticBeanstalk::S3Location');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::CreateApplicationVersion - Arguments for method CreateApplicationVersion on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplicationVersion on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method CreateApplicationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplicationVersion.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To create a new application
    # The following operation creates a new version (v1) of an application named
    # my-app:
    my $ApplicationVersionDescriptionMessage =
      $elasticbeanstalk->CreateApplicationVersion(
      {
        'ApplicationName'       => 'my-app',
        'AutoCreateApplication' => 1,
        'Description'           => 'my-app-v1',
        'Process'               => 1,
        'SourceBundle'          => {
          'S3Bucket' => 'my-bucket',
          'S3Key'    => 'sample.war'
        },
        'VersionLabel' => 'v1'
      }
      );

    # Results:
    my $ApplicationVersion =
      $ApplicationVersionDescriptionMessage->ApplicationVersion;

# Returns a L<Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/CreateApplicationVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application. If no application is found with this name,
and C<AutoCreateApplication> is C<false>, returns an
C<InvalidParameterValue> error.



=head2 AutoCreateApplication => Bool

Set to C<true> to create an application with the specified name if it
doesn't already exist.



=head2 BuildConfiguration => L<Paws::ElasticBeanstalk::BuildConfiguration>

Settings for an AWS CodeBuild build.



=head2 Description => Str

Describes this version.



=head2 Process => Bool

Pre-processes and validates the environment manifest (C<env.yaml>) and
configuration files (C<*.config> files in the C<.ebextensions> folder)
in the source bundle. Validating configuration files can identify
issues prior to deploying the application version to an environment.

You must turn processing on for application versions that you create
using AWS CodeBuild or AWS CodeCommit. For application versions built
from a source bundle in Amazon S3, processing is optional.

The C<Process> option validates Elastic Beanstalk configuration files.
It doesn't validate your application's configuration files, like proxy
server or Docker configuration.



=head2 SourceBuildInformation => L<Paws::ElasticBeanstalk::SourceBuildInformation>

Specify a commit in an AWS CodeCommit Git repository to use as the
source code for the application version.



=head2 SourceBundle => L<Paws::ElasticBeanstalk::S3Location>

The Amazon S3 bucket and key that identify the location of the source
bundle for this version.

The Amazon S3 bucket must be in the same region as the environment.

Specify a source bundle in S3 or a commit in an AWS CodeCommit
repository (with C<SourceBuildInformation>), but not both. If neither
C<SourceBundle> nor C<SourceBuildInformation> are provided, Elastic
Beanstalk uses a sample application.



=head2 B<REQUIRED> VersionLabel => Str

A label identifying this version.

Constraint: Must be unique per application. If an application version
already exists with this label for the specified application, AWS
Elastic Beanstalk returns an C<InvalidParameterValue> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplicationVersion in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

