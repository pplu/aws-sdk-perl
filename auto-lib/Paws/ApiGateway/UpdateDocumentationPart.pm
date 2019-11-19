
package Paws::ApiGateway::UpdateDocumentationPart;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_PatchOperation/;
  has DocumentationPartId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PatchOperations => (is => 'ro', isa => ArrayRef[ApiGateway_PatchOperation], predicate => 1);
  has RestApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDocumentationPart');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/restapis/{restapi_id}/documentation/parts/{part_id}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::DocumentationPart');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'RestApiId' => 'restapi_id',
                    'DocumentationPartId' => 'part_id'
                  },
  'types' => {
               'RestApiId' => {
                                'type' => 'Str'
                              },
               'PatchOperations' => {
                                      'class' => 'Paws::ApiGateway::PatchOperation',
                                      'type' => 'ArrayRef[ApiGateway_PatchOperation]'
                                    },
               'DocumentationPartId' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'PatchOperations' => 'patchOperations'
                     },
  'IsRequired' => {
                    'RestApiId' => 1,
                    'DocumentationPartId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateDocumentationPart - Arguments for method UpdateDocumentationPart on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDocumentationPart on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateDocumentationPart.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDocumentationPart.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $DocumentationPart = $apigateway->UpdateDocumentationPart(
      DocumentationPartId => 'MyString',
      RestApiId           => 'MyString',
      PatchOperations     => [
        {
          From => 'MyString',
          Op =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
          Path  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],              # OPTIONAL
    );

    # Results:
    my $Id         = $DocumentationPart->Id;
    my $Location   = $DocumentationPart->Location;
    my $Properties = $DocumentationPart->Properties;

    # Returns a L<Paws::ApiGateway::DocumentationPart> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateDocumentationPart>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentationPartId => Str

[Required] The identifier of the to-be-updated documentation part.



=head2 PatchOperations => ArrayRef[ApiGateway_PatchOperation]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDocumentationPart in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

