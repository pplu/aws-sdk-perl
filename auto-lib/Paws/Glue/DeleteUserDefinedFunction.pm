
package Paws::Glue::DeleteUserDefinedFunction;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserDefinedFunction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DeleteUserDefinedFunctionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteUserDefinedFunction - Arguments for method DeleteUserDefinedFunction on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUserDefinedFunction on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DeleteUserDefinedFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUserDefinedFunction.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DeleteUserDefinedFunctionResponse = $glue->DeleteUserDefinedFunction(
      DatabaseName => 'MyNameString',
      FunctionName => 'MyNameString',
      CatalogId    => 'MyCatalogIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DeleteUserDefinedFunction>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the function to be deleted is located.
If none is supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database where the function is located.



=head2 B<REQUIRED> FunctionName => Str

The name of the function definition to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUserDefinedFunction in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

