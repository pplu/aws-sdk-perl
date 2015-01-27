
package Paws::Lambda::DeleteFunction {
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFunction');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::DeleteFunction - Arguments for method DeleteFunction on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFunction on the 
AWS Lambda service. Use the attributes of this class
as arguments to method DeleteFunction.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFunction.

As an example:

  $service_obj->DeleteFunction(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> FunctionName => Str

  

The Lambda function to delete.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for DeleteFunction in Paws::Lambda

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

