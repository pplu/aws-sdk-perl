
package Paws::ApiGateway::CreateApiKey;
  use Moose;
  has CustomerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerId');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled');
  has GenerateDistinctId => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'generateDistinctId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has StageKeys => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::StageKey]', traits => ['NameInRequest'], request_name => 'stageKeys');
  has Value => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'value');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApiKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apikeys');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::ApiKey');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateApiKey - Arguments for method CreateApiKey on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApiKey on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateApiKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApiKey.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $ApiKey = $apigateway->CreateApiKey(
      CustomerId         => 'MyString',    # OPTIONAL
      Description        => 'MyString',    # OPTIONAL
      Enabled            => 1,             # OPTIONAL
      GenerateDistinctId => 1,             # OPTIONAL
      Name               => 'MyString',    # OPTIONAL
      StageKeys          => [
        {
          RestApiId => 'MyString',
          StageName => 'MyString',
        },
        ...
      ],                                   # OPTIONAL
      Value => 'MyString',                 # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateApiKey>

=head1 ATTRIBUTES


=head2 CustomerId => Str

An AWS Marketplace customer identifier , when integrating with the AWS
SaaS Marketplace.



=head2 Description => Str

The description of the ApiKey.



=head2 Enabled => Bool

Specifies whether the ApiKey can be used by callers.



=head2 GenerateDistinctId => Bool

Specifies whether (C<true>) or not (C<false>) the key identifier is
distinct from the created API key value.



=head2 Name => Str

The name of the ApiKey.



=head2 StageKeys => ArrayRef[L<Paws::ApiGateway::StageKey>]

DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API
key.



=head2 Value => Str

Specifies a value of the API key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApiKey in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

