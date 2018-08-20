
package Paws::RDS::ResetDBClusterParameterGroup;
  use Moose;
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Parameter]');
  has ResetAllParameters => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetDBClusterParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBClusterParameterGroupNameMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ResetDBClusterParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ResetDBClusterParameterGroup - Arguments for method ResetDBClusterParameterGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetDBClusterParameterGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ResetDBClusterParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetDBClusterParameterGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To reset the values of a DB cluster parameter group
    # This example resets all parameters for the specified DB cluster parameter
    # group to their default values.
    my $DBClusterParameterGroupNameMessage = $rds->ResetDBClusterParameterGroup(
      {
        'DBClusterParameterGroupName' => 'mydbclusterparametergroup',
        'ResetAllParameters'          => 1
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ResetDBClusterParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to reset.



=head2 Parameters => ArrayRef[L<Paws::RDS::Parameter>]

A list of parameter names in the DB cluster parameter group to reset to
the default values. You can't use this parameter if the
C<ResetAllParameters> parameter is set to C<true>.



=head2 ResetAllParameters => Bool

A value that is set to C<true> to reset all parameters in the DB
cluster parameter group to their default values, and C<false>
otherwise. You can't use this parameter if there is a list of parameter
names specified for the C<Parameters> parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetDBClusterParameterGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

