
package Paws::GreengrassV2::GetComponent;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);
  has RecipeOutputFormat => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'recipeOutputFormat');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComponent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/components/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::GetComponentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::GetComponent - Arguments for method GetComponent on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComponent on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method GetComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComponent.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $GetComponentResponse = $greengrass->GetComponent(
      Arn                => 'MyComponentVersionARN',
      RecipeOutputFormat => 'JSON',                    # OPTIONAL
    );

    # Results:
    my $Recipe             = $GetComponentResponse->Recipe;
    my $RecipeOutputFormat = $GetComponentResponse->RecipeOutputFormat;
    my $Tags               = $GetComponentResponse->Tags;

    # Returns a L<Paws::GreengrassV2::GetComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the component version.



=head2 RecipeOutputFormat => Str

The format of the recipe.

Valid values are: C<"JSON">, C<"YAML">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComponent in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

