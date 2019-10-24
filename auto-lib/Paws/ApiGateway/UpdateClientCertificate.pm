
package Paws::ApiGateway::UpdateClientCertificate;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_PatchOperation/;
  has ClientCertificateId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PatchOperations => (is => 'ro', isa => ArrayRef[ApiGateway_PatchOperation], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateClientCertificate');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/clientcertificates/{clientcertificate_id}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::ClientCertificate');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientCertificateId' => {
                                          'type' => 'Str'
                                        },
               'PatchOperations' => {
                                      'class' => 'Paws::ApiGateway::PatchOperation',
                                      'type' => 'ArrayRef[ApiGateway_PatchOperation]'
                                    }
             },
  'ParamInURI' => {
                    'ClientCertificateId' => 'clientcertificate_id'
                  },
  'NameInRequest' => {
                       'PatchOperations' => 'patchOperations'
                     },
  'IsRequired' => {
                    'ClientCertificateId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateClientCertificate - Arguments for method UpdateClientCertificate on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClientCertificate on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateClientCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClientCertificate.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $ClientCertificate = $apigateway->UpdateClientCertificate(
      ClientCertificateId => 'MyString',
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
    my $ClientCertificateId   = $ClientCertificate->ClientCertificateId;
    my $CreatedDate           = $ClientCertificate->CreatedDate;
    my $Description           = $ClientCertificate->Description;
    my $ExpirationDate        = $ClientCertificate->ExpirationDate;
    my $PemEncodedCertificate = $ClientCertificate->PemEncodedCertificate;
    my $Tags                  = $ClientCertificate->Tags;

    # Returns a L<Paws::ApiGateway::ClientCertificate> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateClientCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientCertificateId => Str

[Required] The identifier of the ClientCertificate resource to be
updated.



=head2 PatchOperations => ArrayRef[ApiGateway_PatchOperation]

A list of update operations to be applied to the specified resource and
in the order specified in this list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClientCertificate in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

