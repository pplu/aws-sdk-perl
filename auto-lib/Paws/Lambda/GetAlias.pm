
package Paws::Lambda::GetAlias;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/aliases/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::AliasConfiguration');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetAlias - Arguments for method GetAlias on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAlias on the 
AWS Lambda service. Use the attributes of this class
as arguments to method GetAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAlias.

As an example:

  $service_obj->GetAlias(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionName => Str

Function name for which the alias is created. An alias is a subresource
that exists only in the context of an existing Lambda function so you
must specify the function name.



=head2 B<REQUIRED> Name => Str

Name of the alias for which you want to retrieve information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAlias in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

