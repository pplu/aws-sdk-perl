# Generated from default/object.tt
package Paws::ElasticBeanstalk::PlatformDescription;
  use Moo;
  use Types::Standard qw/ArrayRef Str Undef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_PlatformProgrammingLanguage ElasticBeanstalk_CustomAmi ElasticBeanstalk_PlatformFramework/;
  has CustomAmiList => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_CustomAmi]);
  has DateCreated => (is => 'ro', isa => Str);
  has DateUpdated => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Frameworks => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_PlatformFramework]);
  has Maintainer => (is => 'ro', isa => Str);
  has OperatingSystemName => (is => 'ro', isa => Str);
  has OperatingSystemVersion => (is => 'ro', isa => Str);
  has PlatformArn => (is => 'ro', isa => Str);
  has PlatformCategory => (is => 'ro', isa => Str);
  has PlatformName => (is => 'ro', isa => Str);
  has PlatformOwner => (is => 'ro', isa => Str);
  has PlatformStatus => (is => 'ro', isa => Str);
  has PlatformVersion => (is => 'ro', isa => Str);
  has ProgrammingLanguages => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_PlatformProgrammingLanguage]);
  has SolutionStackName => (is => 'ro', isa => Str);
  has SupportedAddonList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SupportedTierList => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'ProgrammingLanguages' => {
                                           'class' => 'Paws::ElasticBeanstalk::PlatformProgrammingLanguage',
                                           'type' => 'ArrayRef[ElasticBeanstalk_PlatformProgrammingLanguage]'
                                         },
               'Frameworks' => {
                                 'type' => 'ArrayRef[ElasticBeanstalk_PlatformFramework]',
                                 'class' => 'Paws::ElasticBeanstalk::PlatformFramework'
                               },
               'SolutionStackName' => {
                                        'type' => 'Str'
                                      },
               'CustomAmiList' => {
                                    'class' => 'Paws::ElasticBeanstalk::CustomAmi',
                                    'type' => 'ArrayRef[ElasticBeanstalk_CustomAmi]'
                                  },
               'PlatformOwner' => {
                                    'type' => 'Str'
                                  },
               'PlatformVersion' => {
                                      'type' => 'Str'
                                    },
               'SupportedAddonList' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               'Maintainer' => {
                                 'type' => 'Str'
                               },
               'DateUpdated' => {
                                  'type' => 'Str'
                                },
               'SupportedTierList' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'OperatingSystemVersion' => {
                                             'type' => 'Str'
                                           },
               'PlatformStatus' => {
                                     'type' => 'Str'
                                   },
               'PlatformName' => {
                                   'type' => 'Str'
                                 },
               'PlatformCategory' => {
                                       'type' => 'Str'
                                     },
               'PlatformArn' => {
                                  'type' => 'Str'
                                },
               'DateCreated' => {
                                  'type' => 'Str'
                                },
               'OperatingSystemName' => {
                                          'type' => 'Str'
                                        }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::PlatformDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::PlatformDescription object:

  $service_obj->Method(Att1 => { CustomAmiList => $value, ..., SupportedTierList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::PlatformDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomAmiList

=head1 DESCRIPTION

Detailed information about a platform.

=head1 ATTRIBUTES


=head2 CustomAmiList => ArrayRef[ElasticBeanstalk_CustomAmi]

  The custom AMIs supported by the platform.


=head2 DateCreated => Str

  The date when the platform was created.


=head2 DateUpdated => Str

  The date when the platform was last updated.


=head2 Description => Str

  The description of the platform.


=head2 Frameworks => ArrayRef[ElasticBeanstalk_PlatformFramework]

  The frameworks supported by the platform.


=head2 Maintainer => Str

  Information about the maintainer of the platform.


=head2 OperatingSystemName => Str

  The operating system used by the platform.


=head2 OperatingSystemVersion => Str

  The version of the operating system used by the platform.


=head2 PlatformArn => Str

  The ARN of the platform.


=head2 PlatformCategory => Str

  The category of the platform.


=head2 PlatformName => Str

  The name of the platform.


=head2 PlatformOwner => Str

  The AWS account ID of the person who created the platform.


=head2 PlatformStatus => Str

  The status of the platform.


=head2 PlatformVersion => Str

  The version of the platform.


=head2 ProgrammingLanguages => ArrayRef[ElasticBeanstalk_PlatformProgrammingLanguage]

  The programming languages supported by the platform.


=head2 SolutionStackName => Str

  The name of the solution stack used by the platform.


=head2 SupportedAddonList => ArrayRef[Str|Undef]

  The additions supported by the platform.


=head2 SupportedTierList => ArrayRef[Str|Undef]

  The tiers supported by the platform.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

