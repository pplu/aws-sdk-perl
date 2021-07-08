
package Paws::Schemas::DeleteResourcePolicy;
  use Moose;
  has RegistryName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'registryName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourcePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::DeleteResourcePolicy - Arguments for method DeleteResourcePolicy on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourcePolicy on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method DeleteResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourcePolicy.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    $schemas->DeleteResourcePolicy(
      RegistryName => 'My__string',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/DeleteResourcePolicy>

=head1 ATTRIBUTES


=head2 RegistryName => Str

The name of the registry.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourcePolicy in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

