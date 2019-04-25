
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

Paws::DAX::DeleteParameterGroup - Arguments for method DeleteParameterGroup on L<Paws::DAX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteParameterGroup on the
L<Amazon DynamoDB Accelerator (DAX)|Paws::DAX> service. Use the attributes of this class
as arguments to method DeleteParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteParameterGroup.

=head1 SYNOPSIS

    my $dax = Paws->service('DAX');
    my $DeleteParameterGroupResponse = $dax->DeleteParameterGroup(
      ParameterGroupName => 'MyString',

    );

    # Results:
    my $DeletionMessage = $DeleteParameterGroupResponse->DeletionMessage;

    # Returns a L<Paws::DAX::DeleteParameterGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dax/DeleteParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParameterGroupName => Str

The name of the parameter group to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteParameterGroup in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

