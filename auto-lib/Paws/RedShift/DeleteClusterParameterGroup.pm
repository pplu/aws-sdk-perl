
package Paws::RedShift::DeleteClusterParameterGroup;
  use Moose;
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeleteClusterParameterGroup - Arguments for method DeleteClusterParameterGroup on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteClusterParameterGroup on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DeleteClusterParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteClusterParameterGroup.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    $redshift->DeleteClusterParameterGroup(
      ParameterGroupName => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DeleteClusterParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParameterGroupName => Str

The name of the parameter group to be deleted.

Constraints:

=over

=item *

Must be the name of an existing cluster parameter group.

=item *

Cannot delete a default cluster parameter group.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteClusterParameterGroup in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

