
package Paws::AppSync::CreateApiKey;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApiKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/apikeys');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::CreateApiKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateApiKey - Arguments for method CreateApiKey on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApiKey on the 
AWS AppSync service. Use the attributes of this class
as arguments to method CreateApiKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApiKey.

As an example:

  $service_obj->CreateApiKey(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The ID for your GraphQL API.



=head2 Description => Str

A description of the purpose of the API key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApiKey in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

