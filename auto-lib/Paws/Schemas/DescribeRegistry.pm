
package Paws::Schemas::DescribeRegistry;
  use Moose;
  has RegistryName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'registryName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegistry');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/registries/name/{registryName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::DescribeRegistryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::DescribeRegistry - Arguments for method DescribeRegistry on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRegistry on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method DescribeRegistry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRegistry.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $DescribeRegistryResponse = $schemas->DescribeRegistry(
      RegistryName => 'My__string',

    );

    # Results:
    my $Description  = $DescribeRegistryResponse->Description;
    my $RegistryArn  = $DescribeRegistryResponse->RegistryArn;
    my $RegistryName = $DescribeRegistryResponse->RegistryName;
    my $Tags         = $DescribeRegistryResponse->Tags;

    # Returns a L<Paws::Schemas::DescribeRegistryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/DescribeRegistry>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistryName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRegistry in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

