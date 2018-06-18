
package Paws::EMR::ModifyInstanceGroups;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Paws::EMR::InstanceGroupModifyConfig]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ModifyInstanceGroups - Arguments for method ModifyInstanceGroups on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceGroups on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method ModifyInstanceGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceGroups.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    $elasticmapreduce->ModifyInstanceGroups(
      ClusterId      => 'MyClusterId',    # OPTIONAL
      InstanceGroups => [
        {
          InstanceGroupId           => 'MyXmlStringMaxLen256',     # max: 256
          EC2InstanceIdsToTerminate => [ 'MyInstanceId', ... ],    # OPTIONAL
          InstanceCount             => 1,                          # OPTIONAL
          ShrinkPolicy              => {
            DecommissionTimeout  => 1,                             # OPTIONAL
            InstanceResizePolicy => {
              InstanceTerminationTimeout => 1,                        # OPTIONAL
              InstancesToProtect         => [ 'MyInstanceId', ... ],  # OPTIONAL
              InstancesToTerminate       => [ 'MyInstanceId', ... ],  # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/ModifyInstanceGroups>

=head1 ATTRIBUTES


=head2 ClusterId => Str

The ID of the cluster to which the instance group belongs.



=head2 InstanceGroups => ArrayRef[L<Paws::EMR::InstanceGroupModifyConfig>]

Instance groups to change.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceGroups in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

