
package Paws::Lambda::ListAliases;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName' , required => 1);
  has FunctionVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'FunctionVersion' );
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker' );
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxItems' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAliases');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/aliases');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::ListAliasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListAliases - Arguments for method ListAliases on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAliases on the 
AWS Lambda service. Use the attributes of this class
as arguments to method ListAliases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAliases.

As an example:

  $service_obj->ListAliases(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionName => Str

Lambda function name for which the alias is created.



=head2 FunctionVersion => Str

If you specify this optional parameter, the API returns only the
aliases that are pointing to the specific Lambda function version,
otherwise the API returns all of the aliases created for the Lambda
function.



=head2 Marker => Str

Optional string. An opaque pagination token returned from a previous
C<ListAliases> operation. If present, indicates where to continue the
listing.



=head2 MaxItems => Int

Optional integer. Specifies the maximum number of aliases to return in
response. This parameter value must be greater than 0.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAliases in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

