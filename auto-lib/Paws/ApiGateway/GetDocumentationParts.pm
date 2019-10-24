
package Paws::ApiGateway::GetDocumentationParts;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ApiGateway::Types qw//;
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has LocationStatus => (is => 'ro', isa => Str, predicate => 1);
  has NameQuery => (is => 'ro', isa => Str, predicate => 1);
  has Path => (is => 'ro', isa => Str, predicate => 1);
  has Position => (is => 'ro', isa => Str, predicate => 1);
  has RestApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Type => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDocumentationParts');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/restapis/{restapi_id}/documentation/parts');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::DocumentationParts');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RestApiId' => {
                                'type' => 'Str'
                              },
               'Type' => {
                           'type' => 'Str'
                         },
               'Position' => {
                               'type' => 'Str'
                             },
               'LocationStatus' => {
                                     'type' => 'Str'
                                   },
               'Path' => {
                           'type' => 'Str'
                         },
               'Limit' => {
                            'type' => 'Int'
                          },
               'NameQuery' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'RestApiId' => 'restapi_id'
                  },
  'ParamInQuery' => {
                      'Type' => 'type',
                      'Position' => 'position',
                      'LocationStatus' => 'locationStatus',
                      'Path' => 'path',
                      'Limit' => 'limit',
                      'NameQuery' => 'name'
                    },
  'IsRequired' => {
                    'RestApiId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetDocumentationParts - Arguments for method GetDocumentationParts on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDocumentationParts on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetDocumentationParts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDocumentationParts.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $DocumentationParts = $apigateway->GetDocumentationParts(
      RestApiId      => 'MyString',
      Limit          => 1,               # OPTIONAL
      LocationStatus => 'DOCUMENTED',    # OPTIONAL
      NameQuery      => 'MyString',      # OPTIONAL
      Path           => 'MyString',      # OPTIONAL
      Position       => 'MyString',      # OPTIONAL
      Type           => 'API',           # OPTIONAL
    );

    # Results:
    my $Items    = $DocumentationParts->Items;
    my $Position = $DocumentationParts->Position;

    # Returns a L<Paws::ApiGateway::DocumentationParts> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetDocumentationParts>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of returned results per page. The default value is
25 and the maximum value is 500.



=head2 LocationStatus => Str

The status of the API documentation parts to retrieve. Valid values are
C<DOCUMENTED> for retrieving DocumentationPart resources with content
and C<UNDOCUMENTED> for DocumentationPart resources without content.

Valid values are: C<"DOCUMENTED">, C<"UNDOCUMENTED">

=head2 NameQuery => Str

The name of API entities of the to-be-retrieved documentation parts.



=head2 Path => Str

The path of API entities of the to-be-retrieved documentation parts.



=head2 Position => Str

The current pagination position in the paged result set.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 Type => Str

The type of API entities of the to-be-retrieved documentation parts.

Valid values are: C<"API">, C<"AUTHORIZER">, C<"MODEL">, C<"RESOURCE">, C<"METHOD">, C<"PATH_PARAMETER">, C<"QUERY_PARAMETER">, C<"REQUEST_HEADER">, C<"REQUEST_BODY">, C<"RESPONSE">, C<"RESPONSE_HEADER">, C<"RESPONSE_BODY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDocumentationParts in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

