
package Paws::ApiGateway::GetUsagePlanKeys;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has NameQuery => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameQuery');
  has Position => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'position');
  has UsagePlanId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'usagePlanId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUsagePlanKeys');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/usageplans/{usageplanId}/keys');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::UsagePlanKeys');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetUsagePlanKeys - Arguments for method GetUsagePlanKeys on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUsagePlanKeys on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method GetUsagePlanKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUsagePlanKeys.

As an example:

  $service_obj->GetUsagePlanKeys(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of returned results per page.



=head2 NameQuery => Str

A query parameter specifying the name of the to-be-returned usage plan
keys.



=head2 Position => Str

The current pagination position in the paged result set.



=head2 B<REQUIRED> UsagePlanId => Str

The Id of the UsagePlan resource representing the usage plan containing
the to-be-retrieved UsagePlanKey resource representing a plan customer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUsagePlanKeys in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

