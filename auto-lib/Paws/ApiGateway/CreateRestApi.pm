
package Paws::ApiGateway::CreateRestApi;
  use Moose;
  has BinaryMediaTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CloneFrom => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRestApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::RestApi');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateRestApi - Arguments for method CreateRestApi on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRestApi on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method CreateRestApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRestApi.

As an example:

  $service_obj->CreateRestApi(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 BinaryMediaTypes => ArrayRef[Str|Undef]

The list of binary media types supported by the RestApi. By default,
the RestApi supports only UTF-8-encoded text payloads.



=head2 CloneFrom => Str

The ID of the RestApi that you want to clone from.



=head2 Description => Str

The description of the RestApi.



=head2 B<REQUIRED> Name => Str

The name of the RestApi.



=head2 Version => Str

A version identifier for the API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRestApi in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

