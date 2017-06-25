
package Paws::DAX::DeleteParameterGroup;
  use Moose;
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DAX::DeleteParameterGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::DeleteParameterGroup - Arguments for method DeleteParameterGroup on Paws::DAX

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteParameterGroup on the 
Amazon DynamoDB Accelerator (DAX) service. Use the attributes of this class
as arguments to method DeleteParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteParameterGroup.

As an example:

  $service_obj->DeleteParameterGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParameterGroupName => Str

The name of the parameter group to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteParameterGroup in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

