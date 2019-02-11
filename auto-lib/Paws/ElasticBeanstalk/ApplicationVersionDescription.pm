package Paws::ElasticBeanstalk::ApplicationVersionDescription;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has ApplicationVersionArn => (is => 'ro', isa => 'Str');
  has BuildArn => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SourceBuildInformation => (is => 'ro', isa => 'Paws::ElasticBeanstalk::SourceBuildInformation');
  has SourceBundle => (is => 'ro', isa => 'Paws::ElasticBeanstalk::S3Location');
  has Status => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationVersionDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::ApplicationVersionDescription object:

  $service_obj->Method(Att1 => { ApplicationName => $value, ..., VersionLabel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::ApplicationVersionDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationName

=head1 DESCRIPTION

Describes the properties of an application version.

=head1 ATTRIBUTES


=head2 ApplicationName => Str

  The name of the application to which the application version belongs.


=head2 ApplicationVersionArn => Str

  The Amazon Resource Name (ARN) of the application version.


=head2 BuildArn => Str

  Reference to the artifact from the AWS CodeBuild build.


=head2 DateCreated => Str

  The creation date of the application version.


=head2 DateUpdated => Str

  The last modified date of the application version.


=head2 Description => Str

  The description of the application version.


=head2 SourceBuildInformation => L<Paws::ElasticBeanstalk::SourceBuildInformation>

  If the version's source code was retrieved from AWS CodeCommit, the
location of the source code for the application version.


=head2 SourceBundle => L<Paws::ElasticBeanstalk::S3Location>

  The storage location of the application version's source bundle in
Amazon S3.


=head2 Status => Str

  The processing status of the application version. Reflects the state of
the application version during its creation. Many of the values are
only applicable if you specified C<True> for the C<Process> parameter
of the C<CreateApplicationVersion> action. The following list describes
the possible values.

=over

=item *

C<Unprocessed> E<ndash> Application version wasn't pre-processed or
validated. Elastic Beanstalk will validate configuration files during
deployment of the application version to an environment.

=item *

C<Processing> E<ndash> Elastic Beanstalk is currently processing the
application version.

=item *

C<Building> E<ndash> Application version is currently undergoing an AWS
CodeBuild build.

=item *

C<Processed> E<ndash> Elastic Beanstalk was successfully pre-processed
and validated.

=item *

C<Failed> E<ndash> Either the AWS CodeBuild build failed or
configuration files didn't pass validation. This application version
isn't usable.

=back



=head2 VersionLabel => Str

  A unique identifier for the application version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

