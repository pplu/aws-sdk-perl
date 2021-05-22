
package Paws::Lightsail::RegisterContainerImage;
  use Moose;
  has Digest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'digest' , required => 1);
  has Label => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'label' , required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterContainerImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::RegisterContainerImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::RegisterContainerImage - Arguments for method RegisterContainerImage on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterContainerImage on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method RegisterContainerImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterContainerImage.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $RegisterContainerImageResult = $lightsail->RegisterContainerImage(
      Digest      => 'Mystring',
      Label       => 'MyContainerLabel',
      ServiceName => 'MyContainerServiceName',

    );

    # Results:
    my $ContainerImage = $RegisterContainerImageResult->ContainerImage;

    # Returns a L<Paws::Lightsail::RegisterContainerImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/RegisterContainerImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Digest => Str

The digest of the container image to be registered.



=head2 B<REQUIRED> Label => Str

The label for the container image when it's registered to the container
service.

Use a descriptive label that you can use to track the different
versions of your registered container images.

Use the C<GetContainerImages> action to return the container images
registered to a Lightsail container service. The label is the
C<E<lt>imagelabelE<gt>> portion of the following image name example:

=over

=item *

C<:container-service-1.E<lt>imagelabelE<gt>.1>

=back

If the name of your container service is C<mycontainerservice>, and the
label that you specify is C<mystaticwebsite>, then the name of the
registered container image will be
C<:mycontainerservice.mystaticwebsite.1>.

The number at the end of these image name examples represents the
version of the registered container image. If you push and register
another container image to the same Lightsail container service, with
the same label, then the version number for the new registered
container image will be C<2>. If you push and register another
container image, the version number will be C<3>, and so on.



=head2 B<REQUIRED> ServiceName => Str

The name of the container service for which to register a container
image.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterContainerImage in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

