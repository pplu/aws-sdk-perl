
package Paws::AppStream::CopyImage;
  use Moose;
  has DestinationImageDescription => (is => 'ro', isa => 'Str');
  has DestinationImageName => (is => 'ro', isa => 'Str', required => 1);
  has DestinationRegion => (is => 'ro', isa => 'Str', required => 1);
  has SourceImageName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CopyImageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CopyImage - Arguments for method CopyImage on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyImage on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CopyImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyImage.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CopyImageResponse = $appstream2->CopyImage(
      DestinationImageName        => 'MyName',
      DestinationRegion           => 'MyRegionName',
      SourceImageName             => 'MyName',
      DestinationImageDescription => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $DestinationImageName = $CopyImageResponse->DestinationImageName;

    # Returns a L<Paws::AppStream::CopyImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CopyImage>

=head1 ATTRIBUTES


=head2 DestinationImageDescription => Str

The description that the image will have when it is copied to the
destination.



=head2 B<REQUIRED> DestinationImageName => Str

The name that the image will have when it is copied to the destination.



=head2 B<REQUIRED> DestinationRegion => Str

The destination region to which the image will be copied. This
parameter is required, even if you are copying an image within the same
region.



=head2 B<REQUIRED> SourceImageName => Str

The name of the image to copy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyImage in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

