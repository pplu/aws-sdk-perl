
package Paws::Lambda::CreateAlias;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has FunctionVersion => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/aliases');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::AliasConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::CreateAlias - Arguments for method CreateAlias on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAlias on the 
AWS Lambda service. Use the attributes of this class
as arguments to method CreateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAlias.

As an example:

  $service_obj->CreateAlias(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Description => Str

Description of the alias.



=head2 B<REQUIRED> FunctionName => Str

Name of the Lambda function for which you want to create an alias. Note
that the length constraint applies only to the ARN. If you specify only
the function name, it is limited to 64 characters in length.



=head2 B<REQUIRED> FunctionVersion => Str

Lambda function version for which you are creating the alias.



=head2 B<REQUIRED> Name => Str

Name for the alias you are creating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAlias in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

