package Paws::WorkSpaces::WorkspaceImage;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Paws::WorkSpaces::OperatingSystem');
  has RequiredTenancy => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
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


=head2 OperatingSystem => L<Paws::WorkSpaces::OperatingSystem>

  The operating system that the image is running.


=head2 RequiredTenancy => Str

  Specifies whether the image is running on dedicated hardware. When
bring your own license (BYOL) is enabled, this value is set to
DEDICATED.


=head2 State => Str

  The status of the image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

