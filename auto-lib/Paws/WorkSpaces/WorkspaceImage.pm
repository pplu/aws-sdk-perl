# Generated from default/object.tt
package Paws::WorkSpaces::WorkspaceImage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_OperatingSystem/;
  has Description => (is => 'ro', isa => Str);
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);
  has ImageId => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has OperatingSystem => (is => 'ro', isa => WorkSpaces_OperatingSystem);
  has RequiredTenancy => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'ImageId' => {
                              'type' => 'Str'
                            },
               'RequiredTenancy' => {
                                      'type' => 'Str'
                                    },
               'State' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'OperatingSystem' => {
                                      'class' => 'Paws::WorkSpaces::OperatingSystem',
                                      'type' => 'WorkSpaces_OperatingSystem'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::WorkspaceImage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::WorkspaceImage object:

  $service_obj->Method(Att1 => { Description => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::WorkspaceImage object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Describes a WorkSpace image.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the image.


=head2 ErrorCode => Str

  The error code that is returned for the image.


=head2 ErrorMessage => Str

  The text of the error message that is returned for the image.


=head2 ImageId => Str

  The identifier of the image.


=head2 Name => Str

  The name of the image.


=head2 OperatingSystem => WorkSpaces_OperatingSystem

  The operating system that the image is running.


=head2 RequiredTenancy => Str

  Specifies whether the image is running on dedicated hardware. When
Bring Your Own License (BYOL) is enabled, this value is set to
C<DEDICATED>. For more information, see Bring Your Own Windows Desktop
Images
(https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).


=head2 State => Str

  The status of the image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

