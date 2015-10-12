package Paws::ElasticBeanstalk::ApplicationVersionDescription;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SourceBundle => (is => 'ro', isa => 'Paws::ElasticBeanstalk::S3Location');
  has VersionLabel => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationVersionDescription

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 ApplicationName => Str

  

The name of the application associated with this release.










=head2 DateCreated => Str

  

The creation date of the application version.










=head2 DateUpdated => Str

  

The last modified date of the application version.










=head2 Description => Str

  

The description of this application version.










=head2 SourceBundle => Paws::ElasticBeanstalk::S3Location

  

The location where the source bundle is located for this version.










=head2 VersionLabel => Str

  

A label uniquely identifying the version for the associated
application.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

