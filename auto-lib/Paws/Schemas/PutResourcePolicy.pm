
package Paws::Schemas::PutResourcePolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', required => 1);
  has RegistryName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'registryName');
  has RevisionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::PutResourcePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $PutResourcePolicyResponse = $schemas->PutResourcePolicy(
      Policy       => 'My__string',
      RegistryName => 'My__string',    # OPTIONAL
      RevisionId   => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Policy     = $PutResourcePolicyResponse->Policy;
    my $RevisionId = $PutResourcePolicyResponse->RevisionId;

    # Returns a L<Paws::Schemas::PutResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The resource-based policy.



=head2 RegistryName => Str

The name of the registry.



=head2 RevisionId => Str

The revision ID of the policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

