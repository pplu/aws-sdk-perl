package Paws::AppStream::ImagePermissions;
  use Moose;
  has AllowFleet => (is => 'ro', isa => 'Bool', request_name => 'allowFleet', traits => ['NameInRequest']);
  has AllowImageBuilder => (is => 'ro', isa => 'Bool', request_name => 'allowImageBuilder', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ImagePermissions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::ImagePermissions object:

  $service_obj->Method(Att1 => { AllowFleet => $value, ..., AllowImageBuilder => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::ImagePermissions object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowFleet

=head1 DESCRIPTION

Describes the permissions for an image.

=head1 ATTRIBUTES


=head2 AllowFleet => Bool

  Indicates whether the image can be used for a fleet.


=head2 AllowImageBuilder => Bool

  Indicates whether the image can be used for an image builder.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

