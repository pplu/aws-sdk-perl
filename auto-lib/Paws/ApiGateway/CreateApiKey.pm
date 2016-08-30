
package Paws::ApiGateway::CreateApiKey;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has GenerateDistinctId => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has StageKeys => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::StageKey]');
  has Value => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApiKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apikeys');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::ApiKey');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateApiKey - Arguments for method CreateApiKey on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApiKey on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method CreateApiKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApiKey.

As an example:

  $service_obj->CreateApiKey(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


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

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

