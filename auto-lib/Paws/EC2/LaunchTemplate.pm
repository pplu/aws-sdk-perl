package Paws::EC2::LaunchTemplate;
  use Moo;  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::EC2::Types qw/EC2_Tag/;
  has CreatedBy => (is => 'ro', isa => Str);
  has CreateTime => (is => 'ro', isa => Str);
  has DefaultVersionNumber => (is => 'ro', isa => Int);
  has LatestVersionNumber => (is => 'ro', isa => Int);
  has LaunchTemplateId => (is => 'ro', isa => Str);
  has LaunchTemplateName => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LaunchTemplateId' => {
                                       'type' => 'Str'
                                     },
               'LatestVersionNumber' => {
                                          'type' => 'Int'
                                        },
               'DefaultVersionNumber' => {
                                           'type' => 'Int'
                                         },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'CreatedBy' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'LaunchTemplateName' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'LaunchTemplateId' => 'launchTemplateId',
                       'LatestVersionNumber' => 'latestVersionNumber',
                       'DefaultVersionNumber' => 'defaultVersionNumber',
                       'CreateTime' => 'createTime',
                       'CreatedBy' => 'createdBy',
                       'Tags' => 'tagSet',
                       'LaunchTemplateName' => 'launchTemplateName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplate object:

  $service_obj->Method(Att1 => { CreatedBy => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedBy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreatedBy => Str

  The principal that created the launch template.


=head2 CreateTime => Str

  The time launch template was created.


=head2 DefaultVersionNumber => Int

  The version number of the default version of the launch template.


=head2 LatestVersionNumber => Int

  The version number of the latest version of the launch template.


=head2 LaunchTemplateId => Str

  The ID of the launch template.


=head2 LaunchTemplateName => Str

  The name of the launch template.


=head2 Tags => ArrayRef[EC2_Tag]

  The tags for the launch template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
