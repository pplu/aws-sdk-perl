
package Paws::RedShift::ModifyClusterParameterGroup;
  use Moose;
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Parameter]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClusterParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ClusterParameterGroupNameMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyClusterParameterGroup - Arguments for method ModifyClusterParameterGroup on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyClusterParameterGroup on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyClusterParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyClusterParameterGroup.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ClusterParameterGroupNameMessage =
      $redshift->ModifyClusterParameterGroup(
      ParameterGroupName => 'MyString',
      Parameters         => [
        {
          AllowedValues        => 'MyString',
          ApplyType            => 'static',  # values: static, dynamic; OPTIONAL
          DataType             => 'MyString',
          Description          => 'MyString',
          IsModifiable         => 1,         # OPTIONAL
          MinimumEngineVersion => 'MyString',
          ParameterName        => 'MyString',
          ParameterValue       => 'MyString',
          Source               => 'MyString',
        },
        ...
      ],

      );

    # Results:
    my $ParameterGroupName =
      $ClusterParameterGroupNameMessage->ParameterGroupName;
    my $ParameterGroupStatus =
      $ClusterParameterGroupNameMessage->ParameterGroupStatus;

    # Returns a L<Paws::RedShift::ClusterParameterGroupNameMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyClusterParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParameterGroupName => Str

The name of the parameter group to be modified.



=head2 B<REQUIRED> Parameters => ArrayRef[L<Paws::RedShift::Parameter>]

An array of parameters to be modified. A maximum of 20 parameters can
be modified in a single request.

For each parameter to be modified, you must supply at least the
parameter name and parameter value; other name-value pairs of the
parameter are optional.

For the workload management (WLM) configuration, you must supply all
the name-value pairs in the wlm_json_configuration parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyClusterParameterGroup in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

