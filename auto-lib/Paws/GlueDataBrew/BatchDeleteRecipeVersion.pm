
package Paws::GlueDataBrew::BatchDeleteRecipeVersion;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has RecipeVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteRecipeVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recipes/{name}/batchDeleteRecipeVersion');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::BatchDeleteRecipeVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::BatchDeleteRecipeVersion - Arguments for method BatchDeleteRecipeVersion on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteRecipeVersion on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method BatchDeleteRecipeVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteRecipeVersion.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $BatchDeleteRecipeVersionResponse = $databrew->BatchDeleteRecipeVersion(
      Name           => 'MyRecipeName',
      RecipeVersions => [
        'MyRecipeVersion', ...    # min: 1, max: 16
      ],

    );

    # Results:
    my $Errors = $BatchDeleteRecipeVersionResponse->Errors;
    my $Name   = $BatchDeleteRecipeVersionResponse->Name;

    # Returns a L<Paws::GlueDataBrew::BatchDeleteRecipeVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/BatchDeleteRecipeVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the recipe whose versions are to be deleted.



=head2 B<REQUIRED> RecipeVersions => ArrayRef[Str|Undef]

An array of version identifiers, for the recipe versions to be deleted.
You can specify numeric versions (C<X.Y>) or C<LATEST_WORKING>.
C<LATEST_PUBLISHED> is not supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteRecipeVersion in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

