
package Paws::EMR::ModifyInstanceFleet;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceFleet => (is => 'ro', isa => 'Paws::EMR::InstanceFleetModifyConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ModifyInstanceFleet - Arguments for method ModifyInstanceFleet on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceFleet on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method ModifyInstanceFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceFleet.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    $elasticmapreduce->ModifyInstanceFleet(
      ClusterId     => 'MyClusterId',
      InstanceFleet => {
        InstanceFleetId        => 'MyInstanceFleetId',
        TargetOnDemandCapacity => 1,                     # OPTIONAL
        TargetSpotCapacity     => 1,                     # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/ModifyInstanceFleet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

The unique identifier of the cluster.



=head2 B<REQUIRED> InstanceFleet => L<Paws::EMR::InstanceFleetModifyConfig>

The unique identifier of the instance fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceFleet in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

