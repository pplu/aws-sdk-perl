
package Paws::Neptune::ResetDBParameterGroup;
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Parameter]');
  has ResetAllParameters => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetDBParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::DBParameterGroupNameMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ResetDBParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::ResetDBParameterGroup - Arguments for method ResetDBParameterGroup on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetDBParameterGroup on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method ResetDBParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetDBParameterGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $DBParameterGroupNameMessage = $rds->ResetDBParameterGroup(
      DBParameterGroupName => 'MyString',
      Parameters           => [
        {
          AllowedValues => 'MyString',
          ApplyMethod =>
            'immediate',    # values: immediate, pending-reboot; OPTIONAL
          ApplyType            => 'MyString',
          DataType             => 'MyString',
          Description          => 'MyString',
          IsModifiable         => 1,            # OPTIONAL
          MinimumEngineVersion => 'MyString',
          ParameterName        => 'MyString',
          ParameterValue       => 'MyString',
          Source               => 'MyString',
        },
        ...
      ],                                        # OPTIONAL
      ResetAllParameters => 1,                  # OPTIONAL
    );

    # Results:
    my $DBParameterGroupName =
      $DBParameterGroupNameMessage->DBParameterGroupName;

    # Returns a L<Paws::Neptune::DBParameterGroupNameMessage> object.

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




=head2 Parameters => ArrayRef[L<Paws::Neptune::Parameter>]

To reset the entire DB parameter group, specify the C<DBParameterGroup>
name and C<ResetAllParameters> parameters. To reset specific
parameters, provide a list of the following: C<ParameterName> and
C<ApplyMethod>. A maximum of 20 parameters can be modified in a single
request.

Valid Values (for Apply method): C<pending-reboot>



=head2 ResetAllParameters => Bool

Specifies whether (C<true>) or not (C<false>) to reset all parameters
in the DB parameter group to default values.

Default: C<true>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetDBParameterGroup in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

