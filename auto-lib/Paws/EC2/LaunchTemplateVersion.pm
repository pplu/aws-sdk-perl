package Paws::EC2::LaunchTemplateVersion;
  use Moo;  use Types::Standard qw/Str Bool Int/;
  use Paws::EC2::Types qw/EC2_ResponseLaunchTemplateData/;
  has CreatedBy => (is => 'ro', isa => Str);
  has CreateTime => (is => 'ro', isa => Str);
  has DefaultVersion => (is => 'ro', isa => Bool);
  has LaunchTemplateData => (is => 'ro', isa => EC2_ResponseLaunchTemplateData);
  has LaunchTemplateId => (is => 'ro', isa => Str);
  has LaunchTemplateName => (is => 'ro', isa => Str);
  has VersionDescription => (is => 'ro', isa => Str);
  has VersionNumber => (is => 'ro', isa => Int);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'LaunchTemplateId' => {
                                       'type' => 'Str'
                                     },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'VersionDescription' => {
                                         'type' => 'Str'
                                       },
               'CreatedBy' => {
                                'type' => 'Str'
                              },
               'LaunchTemplateData' => {
                                         'class' => 'Paws::EC2::ResponseLaunchTemplateData',
                                         'type' => 'EC2_ResponseLaunchTemplateData'
                                       },
               'DefaultVersion' => {
                                     'type' => 'Bool'
                                   },
               'VersionNumber' => {
                                    'type' => 'Int'
                                  },
               'LaunchTemplateName' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'LaunchTemplateId' => 'launchTemplateId',
                       'CreateTime' => 'createTime',
                       'VersionDescription' => 'versionDescription',
                       'CreatedBy' => 'createdBy',
                       'LaunchTemplateData' => 'launchTemplateData',
                       'DefaultVersion' => 'defaultVersion',
                       'VersionNumber' => 'versionNumber',
                       'LaunchTemplateName' => 'launchTemplateName'
                     }
}
;
      return $Params_map;
    }

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


=head2 LaunchTemplateData => EC2_ResponseLaunchTemplateData

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
