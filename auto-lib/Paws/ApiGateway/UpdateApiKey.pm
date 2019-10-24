
package Paws::ApiGateway::UpdateApiKey;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_PatchOperation/;
  has ApiKey => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PatchOperations => (is => 'ro', isa => ArrayRef[ApiGateway_PatchOperation], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateApiKey');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/apikeys/{api_Key}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::ApiKey');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApiKey' => {
                             'type' => 'Str'
                           },
               'PatchOperations' => {
                                      'class' => 'Paws::ApiGateway::PatchOperation',
                                      'type' => 'ArrayRef[ApiGateway_PatchOperation]'
                                    }
             },
  'ParamInURI' => {
                    'ApiKey' => 'api_Key'
                  },
  'NameInRequest' => {
                       'PatchOperations' => 'patchOperations'
                     },
  'IsRequired' => {
                    'ApiKey' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateApiKey - Arguments for method UpdateApiKey on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApiKey on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateApiKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApiKey.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $ApiKey = $apigateway->UpdateApiKey(
      ApiKey          => 'MyString',
      PatchOperations => [
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
    my $CreatedDate     = $ApiKey->CreatedDate;
    my $CustomerId      = $ApiKey->CustomerId;
    my $Description     = $ApiKey->Description;
    my $Enabled         = $ApiKey->Enabled;
    my $Id              = $ApiKey->Id;
    my $LastUpdatedDate = $ApiKey->LastUpdatedDate;
    my $Name            = $ApiKey->Name;
    my $StageKeys       = $ApiKey->StageKeys;
    my $Tags            = $ApiKey->Tags;
    my $Value           = $ApiKey->Value;

    # Returns a L<Paws::ApiGateway::ApiKey> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateApiKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiKey => Str

[Required] The identifier of the ApiKey resource to be updated.



=head2 PatchOperations => ArrayRef[ApiGateway_PatchOperation]

A list of update operations to be applied to the specified resource and
in the order specified in this list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApiKey in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

