
package Paws::AppStream::UpdateImagePermissions;
  use Moose;
  has ImagePermissions => (is => 'ro', isa => 'Paws::AppStream::ImagePermissions', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SharedAccountId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateImagePermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::UpdateImagePermissionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateImagePermissions - Arguments for method UpdateImagePermissions on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateImagePermissions on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method UpdateImagePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateImagePermissions.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $UpdateImagePermissionsResult = $appstream2->UpdateImagePermissions(
      ImagePermissions => {
        AllowFleet        => 1,    # OPTIONAL
        AllowImageBuilder => 1,    # OPTIONAL
      },
      Name            => 'MyName',
      SharedAccountId => 'MyAwsAccountId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/UpdateImagePermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImagePermissions => L<Paws::AppStream::ImagePermissions>

The permissions for the image.



=head2 B<REQUIRED> Name => Str

The name of the private image.



=head2 B<REQUIRED> SharedAccountId => Str

The 12-digit identifier of the AWS account for which you want add or
update image permissions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateImagePermissions in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

