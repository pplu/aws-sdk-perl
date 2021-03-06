
package Paws::GreengrassV2::ListComponents;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Scope => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'scope');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComponents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/components');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::ListComponentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ListComponents - Arguments for method ListComponents on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComponents on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method ListComponents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComponents.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $ListComponentsResponse = $greengrass->ListComponents(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyNextTokenString',    # OPTIONAL
      Scope      => 'PRIVATE',              # OPTIONAL
    );

    # Results:
    my $Components = $ListComponentsResponse->Components;
    my $NextToken  = $ListComponentsResponse->NextToken;

    # Returns a L<Paws::GreengrassV2::ListComponentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/ListComponents>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned per paginated request.



=head2 NextToken => Str

The token to be used for the next set of paginated results.



=head2 Scope => Str

The scope of the components to list.

Default: C<PRIVATE>

Valid values are: C<"PRIVATE">, C<"PUBLIC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComponents in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

