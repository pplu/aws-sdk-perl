
package Paws::CloudDirectory::ListPublishedSchemaArns;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPublishedSchemaArns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/schema/published');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::ListPublishedSchemaArnsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListPublishedSchemaArns - Arguments for method ListPublishedSchemaArns on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPublishedSchemaArns on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method ListPublishedSchemaArns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPublishedSchemaArns.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $ListPublishedSchemaArnsResponse =
      $clouddirectory->ListPublishedSchemaArns(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SchemaArn  => 'MyArn',          # OPTIONAL
      );

    # Results:
    my $NextToken  = $ListPublishedSchemaArnsResponse->NextToken;
    my $SchemaArns = $ListPublishedSchemaArnsResponse->SchemaArns;

    # Returns a L<Paws::CloudDirectory::ListPublishedSchemaArnsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/ListPublishedSchemaArns>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to retrieve.



=head2 NextToken => Str

The pagination token.



=head2 SchemaArn => Str

The response for C<ListPublishedSchemaArns> when this parameter is used
will list all minor version ARNs for a major version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPublishedSchemaArns in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

