
package Paws::Lambda::GetFunction {
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFunction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::GetFunctionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetFunctionResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetFunction - Arguments for method GetFunction on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFunction on the 
Amazon Lambda service. Use the attributes of this class
as arguments to method GetFunction.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to GetFunction.

As an example:

  $service_obj->GetFunction(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> FunctionName => Str

  

The Lambda function name.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for GetFunction in Paws::Lambda

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

