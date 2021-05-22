
package Paws::Schemas::GetResourcePolicy;
  use Moose;
  has RegistryName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'registryName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourcePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::GetResourcePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::GetResourcePolicy - Arguments for method GetResourcePolicy on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourcePolicy on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method GetResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourcePolicy.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $GetResourcePolicyResponse = $schemas->GetResourcePolicy(
      RegistryName => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Policy     = $GetResourcePolicyResponse->Policy;
    my $RevisionId = $GetResourcePolicyResponse->RevisionId;

    # Returns a L<Paws::Schemas::GetResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/GetResourcePolicy>

=head1 ATTRIBUTES


=head2 RegistryName => Str

The name of the registry.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourcePolicy in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

