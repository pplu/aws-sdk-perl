
package Paws::ApiGateway::GetApiKey;
  use Moose;
  has ApiKey => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'api_Key', required => 1);
  has IncludeValue => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeValue');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApiKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apikeys/{api_Key}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::ApiKey');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetApiKey - Arguments for method GetApiKey on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApiKey on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetApiKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApiKey.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $ApiKey = $apigateway->GetApiKey(
      ApiKey       => 'MyString',
      IncludeValue => 1,            # OPTIONAL
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
    my $Value           = $ApiKey->Value;

    # Returns a L<Paws::ApiGateway::ApiKey> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetApiKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiKey => Str

[Required] The identifier of the ApiKey resource.



=head2 IncludeValue => Bool

A boolean flag to specify whether (C<true>) or not (C<false>) the
result contains the key value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApiKey in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

