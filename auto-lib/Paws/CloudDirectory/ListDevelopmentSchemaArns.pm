
package Paws::CloudDirectory::ListDevelopmentSchemaArns;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDevelopmentSchemaArns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/schema/development');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::ListDevelopmentSchemaArnsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListDevelopmentSchemaArns - Arguments for method ListDevelopmentSchemaArns on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDevelopmentSchemaArns on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method ListDevelopmentSchemaArns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDevelopmentSchemaArns.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $ListDevelopmentSchemaArnsResponse =
      $clouddirectory->ListDevelopmentSchemaArns(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken  = $ListDevelopmentSchemaArnsResponse->NextToken;
    my $SchemaArns = $ListDevelopmentSchemaArnsResponse->SchemaArns;

  # Returns a L<Paws::CloudDirectory::ListDevelopmentSchemaArnsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/ListDevelopmentSchemaArns>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to retrieve.



=head2 NextToken => Str

The pagination token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDevelopmentSchemaArns in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

