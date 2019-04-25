
package Paws::RDS::ResetDBParameterGroup;
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Parameter]');
  has ResetAllParameters => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetDBParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBParameterGroupNameMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ResetDBParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ResetDBParameterGroup - Arguments for method ResetDBParameterGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetDBParameterGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ResetDBParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetDBParameterGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To reset the values of a DB parameter group
    # This example resets all parameters for the specified DB parameter group to
    # their default values.
    my $DBParameterGroupNameMessage = $rds->ResetDBParameterGroup(
      {
        'DBParameterGroupName' => 'mydbparametergroup',
        'ResetAllParameters'   => 1
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ResetDBParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBParameterGroupName => Str

The name of the DB parameter group.

Constraints:

=over

=item *

Must match the name of an existing DBParameterGroup.

=back




=head2 Parameters => ArrayRef[L<Paws::RDS::Parameter>]

To reset the entire DB parameter group, specify the C<DBParameterGroup>
name and C<ResetAllParameters> parameters. To reset specific
parameters, provide a list of the following: C<ParameterName> and
C<ApplyMethod>. A maximum of 20 parameters can be modified in a single
request.

B<MySQL>

Valid Values (for Apply method): C<immediate> | C<pending-reboot>

You can use the immediate value with dynamic parameters only. You can
use the C<pending-reboot> value for both dynamic and static parameters,
and changes are applied when DB instance reboots.

B<MariaDB>

Valid Values (for Apply method): C<immediate> | C<pending-reboot>

You can use the immediate value with dynamic parameters only. You can
use the C<pending-reboot> value for both dynamic and static parameters,
and changes are applied when DB instance reboots.

B<Oracle>

Valid Values (for Apply method): C<pending-reboot>



=head2 ResetAllParameters => Bool

Specifies whether (C<true>) or not (C<false>) to reset all parameters
in the DB parameter group to default values.

Default: C<true>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetDBParameterGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

