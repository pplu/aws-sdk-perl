
package Paws::GreengrassV2::DeleteComponent;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteComponent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/components/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::DeleteComponent - Arguments for method DeleteComponent on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteComponent on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method DeleteComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteComponent.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    $greengrass->DeleteComponent(
      Arn => 'MyComponentVersionARN',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/DeleteComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the component version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteComponent in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

