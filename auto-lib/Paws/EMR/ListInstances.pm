
package Paws::EMR::ListInstances;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceFleetId => (is => 'ro', isa => 'Str');
  has InstanceFleetType => (is => 'ro', isa => 'Str');
  has InstanceGroupId => (is => 'ro', isa => 'Str');
  has InstanceGroupTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has InstanceStates => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::ListInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListInstances - Arguments for method ListInstances on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInstances on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method ListInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInstances.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $ListInstancesOutput = $elasticmapreduce->ListInstances(
      ClusterId          => 'MyClusterId',
      InstanceFleetId    => 'MyInstanceFleetId',    # OPTIONAL
      InstanceFleetType  => 'MASTER',               # OPTIONAL
      InstanceGroupId    => 'MyInstanceGroupId',    # OPTIONAL
      InstanceGroupTypes => [
        'MASTER', ...                               # values: MASTER, CORE, TASK
      ],                                            # OPTIONAL
      InstanceStates => [
        'AWAITING_FULFILLMENT',
        ... # values: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING, TERMINATED
      ],    # OPTIONAL
      Marker => 'MyMarker',    # OPTIONAL
    );

    # Results:
    my $Instances = $ListInstancesOutput->Instances;
    my $Marker    = $ListInstancesOutput->Marker;

    # Returns a L<Paws::EMR::ListInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/ListInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

The identifier of the cluster for which to list the instances.



=head2 InstanceFleetId => Str

The unique identifier of the instance fleet.



=head2 InstanceFleetType => Str

The node type of the instance fleet. For example MASTER, CORE, or TASK.

Valid values are: C<"MASTER">, C<"CORE">, C<"TASK">

=head2 InstanceGroupId => Str

The identifier of the instance group for which to list the instances.



=head2 InstanceGroupTypes => ArrayRef[Str|Undef]

The type of instance group for which to list the instances.



=head2 InstanceStates => ArrayRef[Str|Undef]

A list of instance states that will filter the instances returned with
this request.



=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInstances in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

