
package Paws::ApiGateway::CreateUsagePlanKey;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyId', required => 1);
  has KeyType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyType', required => 1);
  has UsagePlanId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'usageplanId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUsagePlanKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/usageplans/{usageplanId}/keys');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::UsagePlanKey');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateUsagePlanKey - Arguments for method CreateUsagePlanKey on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUsagePlanKey on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateUsagePlanKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUsagePlanKey.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $UsagePlanKey = $apigateway->CreateUsagePlanKey(
      KeyId       => 'MyString',
      KeyType     => 'MyString',
      UsagePlanId => 'MyString',

    );

    # Results:
    my $Id    = $UsagePlanKey->Id;
    my $Name  = $UsagePlanKey->Name;
    my $Type  = $UsagePlanKey->Type;
    my $Value = $UsagePlanKey->Value;

    # Returns a L<Paws::ApiGateway::UsagePlanKey> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateUsagePlanKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

[Required] The identifier of a UsagePlanKey resource for a plan
customer.



=head2 B<REQUIRED> KeyType => Str

[Required] The type of a UsagePlanKey resource for a plan customer.



=head2 B<REQUIRED> UsagePlanId => Str

[Required] The Id of the UsagePlan resource representing the usage plan
containing the to-be-created UsagePlanKey resource representing a plan
customer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUsagePlanKey in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

