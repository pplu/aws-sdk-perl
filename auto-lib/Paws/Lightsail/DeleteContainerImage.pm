
package Paws::Lightsail::DeleteContainerImage;
  use Moose;
  has Image => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'image' , required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteContainerImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DeleteContainerImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteContainerImage - Arguments for method DeleteContainerImage on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteContainerImage on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DeleteContainerImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteContainerImage.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DeleteContainerImageResult = $lightsail->DeleteContainerImage(
      Image       => 'Mystring',
      ServiceName => 'MyContainerServiceName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DeleteContainerImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Image => Str

The name of the container image to delete from the container service.

Use the C<GetContainerImages> action to get the name of the container
images that are registered to a container service.

Container images sourced from your Lightsail container service, that
are registered and stored on your service, start with a colon (C<:>).
For example, C<:container-service-1.mystaticwebsite.1>. Container
images sourced from a public registry like Docker Hub don't start with
a colon. For example, C<nginx:latest> or C<nginx>.



=head2 B<REQUIRED> ServiceName => Str

The name of the container service for which to delete a registered
container image.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteContainerImage in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

