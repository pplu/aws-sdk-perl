
package Paws::Schemas::ListRegistries;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has RegistryNamePrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'registryNamePrefix');
  has Scope => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'scope');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRegistries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/registries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::ListRegistriesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::ListRegistries - Arguments for method ListRegistries on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRegistries on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method ListRegistries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRegistries.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $ListRegistriesResponse = $schemas->ListRegistries(
      Limit              => 1,               # OPTIONAL
      NextToken          => 'My__string',    # OPTIONAL
      RegistryNamePrefix => 'My__string',    # OPTIONAL
      Scope              => 'My__string',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListRegistriesResponse->NextToken;
    my $Registries = $ListRegistriesResponse->Registries;

    # Returns a L<Paws::Schemas::ListRegistriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/ListRegistries>

=head1 ATTRIBUTES


=head2 Limit => Int





=head2 NextToken => Str

The token that specifies the next page of results to return. To request
the first page, leave NextToken empty. The token will expire in 24
hours, and cannot be shared with other accounts.



=head2 RegistryNamePrefix => Str

Specifying this limits the results to only those registry names that
start with the specified prefix.



=head2 Scope => Str

Can be set to Local or AWS to limit responses to your custom
registries, or the ones provided by AWS.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRegistries in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

