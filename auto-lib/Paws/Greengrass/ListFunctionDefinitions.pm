
package Paws::Greengrass::ListFunctionDefinitions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFunctionDefinitions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/functions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::ListFunctionDefinitionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListFunctionDefinitions - Arguments for method ListFunctionDefinitions on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFunctionDefinitions on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method ListFunctionDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFunctionDefinitions.

As an example:

  $service_obj->ListFunctionDefinitions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Str

Specifies the maximum number of list results to be returned in this
page



=head2 NextToken => Str

Specifies the pagination token used when iterating through a paginated
request




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFunctionDefinitions in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

