package Paws::EC2::DeleteLaunchTemplateVersionsResponseErrorItem;
  use Moo;  use Types::Standard qw/Str Int/;
  use Paws::EC2::Types qw/EC2_ResponseError/;
  has LaunchTemplateId => (is => 'ro', isa => Str);
  has LaunchTemplateName => (is => 'ro', isa => Str);
  has ResponseError => (is => 'ro', isa => EC2_ResponseError);
  has VersionNumber => (is => 'ro', isa => Int);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'LaunchTemplateId' => {
                                       'type' => 'Str'
                                     },
               'VersionNumber' => {
                                    'type' => 'Int'
                                  },
               'ResponseError' => {
                                    'class' => 'Paws::EC2::ResponseError',
                                    'type' => 'EC2_ResponseError'
                                  },
               'LaunchTemplateName' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'LaunchTemplateId' => 'launchTemplateId',
                       'VersionNumber' => 'versionNumber',
                       'ResponseError' => 'responseError',
                       'LaunchTemplateName' => 'launchTemplateName'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteLaunchTemplateVersionsResponseErrorItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DeleteLaunchTemplateVersionsResponseErrorItem object:

  $service_obj->Method(Att1 => { LaunchTemplateId => $value, ..., VersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DeleteLaunchTemplateVersionsResponseErrorItem object:

  $result = $service_obj->Method(...);
  $result->Att1->LaunchTemplateId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 LaunchTemplateId => Str

  The ID of the launch template.


=head2 LaunchTemplateName => Str

  The name of the launch template.


=head2 ResponseError => EC2_ResponseError

  Information about the error.


=head2 VersionNumber => Int

  The version number of the launch template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
