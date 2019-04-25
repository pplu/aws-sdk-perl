
package Paws::ApiGateway::GenerateClientCertificate;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateClientCertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clientcertificates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::ClientCertificate');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GenerateClientCertificate - Arguments for method GenerateClientCertificate on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateClientCertificate on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GenerateClientCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateClientCertificate.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $ClientCertificate = $apigateway->GenerateClientCertificate(
      Description => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ClientCertificateId   = $ClientCertificate->ClientCertificateId;
    my $CreatedDate           = $ClientCertificate->CreatedDate;
    my $Description           = $ClientCertificate->Description;
    my $ExpirationDate        = $ClientCertificate->ExpirationDate;
    my $PemEncodedCertificate = $ClientCertificate->PemEncodedCertificate;

    # Returns a L<Paws::ApiGateway::ClientCertificate> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GenerateClientCertificate>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the ClientCertificate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateClientCertificate in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

