package Paws::EC2::LaunchTemplateVersion;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Str', request_name => 'createdBy', traits => ['NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest']);
  has DefaultVersion => (is => 'ro', isa => 'Bool', request_name => 'defaultVersion', traits => ['NameInRequest']);
  has LaunchTemplateData => (is => 'ro', isa => 'Paws::EC2::ResponseLaunchTemplateData', request_name => 'launchTemplateData', traits => ['NameInRequest']);
  has LaunchTemplateId => (is => 'ro', isa => 'Str', request_name => 'launchTemplateId', traits => ['NameInRequest']);
  has LaunchTemplateName => (is => 'ro', isa => 'Str', request_name => 'launchTemplateName', traits => ['NameInRequest']);
  has VersionDescription => (is => 'ro', isa => 'Str', request_name => 'versionDescription', traits => ['NameInRequest']);
  has VersionNumber => (is => 'ro', isa => 'Int', request_name => 'versionNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateVersion object:

  $service_obj->Method(Att1 => { CreatedBy => $value, ..., VersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedBy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreatedBy => Str

  The principal that created the version.


=head2 CreateTime => Str

  The time the version was created.


=head2 DefaultVersion => Bool

  Indicates whether the version is the default version.


=head2 LaunchTemplateData => L<Paws::EC2::ResponseLaunchTemplateData>

  Information about the launch template.


=head2 LaunchTemplateId => Str

  The ID of the launch template.


=head2 LaunchTemplateName => Str

  The name of the launch template.


=head2 VersionDescription => Str

  The description for the version.


=head2 VersionNumber => Int

  The version number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
