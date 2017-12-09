
package Paws::AppSync::DeleteApiKey;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApiKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/apikeys/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::DeleteApiKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::DeleteApiKey - Arguments for method DeleteApiKey on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApiKey on the 
AWS AppSync service. Use the attributes of this class
as arguments to method DeleteApiKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApiKey.

As an example:

  $service_obj->DeleteApiKey(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 B<REQUIRED> Id => Str

The ID for the API key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApiKey in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
