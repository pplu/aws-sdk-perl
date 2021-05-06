
package Paws::Personalize::ListSchemas;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSchemas');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::ListSchemasResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListSchemas - Arguments for method ListSchemas on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSchemas on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method ListSchemas.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSchemas.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $ListSchemasResponse = $personalize->ListSchemas(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSchemasResponse->NextToken;
    my $Schemas   = $ListSchemasResponse->Schemas;

    # Returns a L<Paws::Personalize::ListSchemasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/ListSchemas>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of schemas to return.



=head2 NextToken => Str

A token returned from the previous call to C<ListSchemas> for getting
the next set of schemas (if they exist).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSchemas in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

