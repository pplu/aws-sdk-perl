
package Paws::EKS::UpdateNodegroupConfig;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Labels => (is => 'ro', isa => 'Paws::EKS::UpdateLabelsPayload', traits => ['NameInRequest'], request_name => 'labels');
  has NodegroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nodegroupName', required => 1);
  has ScalingConfig => (is => 'ro', isa => 'Paws::EKS::NodegroupScalingConfig', traits => ['NameInRequest'], request_name => 'scalingConfig');
  has Taints => (is => 'ro', isa => 'Paws::EKS::UpdateTaintsPayload', traits => ['NameInRequest'], request_name => 'taints');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNodegroupConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/node-groups/{nodegroupName}/update-config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::UpdateNodegroupConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateNodegroupConfig - Arguments for method UpdateNodegroupConfig on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNodegroupConfig on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method UpdateNodegroupConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNodegroupConfig.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $UpdateNodegroupConfigResponse = $eks->UpdateNodegroupConfig(
      ClusterName        => 'MyString',
      NodegroupName      => 'MyString',
      ClientRequestToken => 'MyString',    # OPTIONAL
      Labels             => {
        AddOrUpdateLabels => {
          'MylabelKey' =>
            'MylabelValue',    # key: min: 1, max: 63, value: min: 1, max: 63
        },    # OPTIONAL
        RemoveLabels => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
      ScalingConfig => {
        DesiredSize => 1,    # OPTIONAL
        MaxSize     => 1,    # min: 1; OPTIONAL
        MinSize     => 1,    # OPTIONAL
      },    # OPTIONAL
      Taints => {
        AddOrUpdateTaints => [
          {
            Effect => 'NO_SCHEDULE'
            ,    # values: NO_SCHEDULE, NO_EXECUTE, PREFER_NO_SCHEDULE; OPTIONAL
            Key   => 'MytaintKey',      # min: 1, max: 63; OPTIONAL
            Value => 'MytaintValue',    # max: 63; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        RemoveTaints => [
          {
            Effect => 'NO_SCHEDULE'
            ,    # values: NO_SCHEDULE, NO_EXECUTE, PREFER_NO_SCHEDULE; OPTIONAL
            Key   => 'MytaintKey',      # min: 1, max: 63; OPTIONAL
            Value => 'MytaintValue',    # max: 63; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Update = $UpdateNodegroupConfigResponse->Update;

    # Returns a L<Paws::EKS::UpdateNodegroupConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/UpdateNodegroupConfig>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of the Amazon EKS cluster that the managed node group resides
in.



=head2 Labels => L<Paws::EKS::UpdateLabelsPayload>

The Kubernetes labels to be applied to the nodes in the node group
after the update.



=head2 B<REQUIRED> NodegroupName => Str

The name of the managed node group to update.



=head2 ScalingConfig => L<Paws::EKS::NodegroupScalingConfig>

The scaling configuration details for the Auto Scaling group after the
update.



=head2 Taints => L<Paws::EKS::UpdateTaintsPayload>

The Kubernetes taints to be applied to the nodes in the node group
after the update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNodegroupConfig in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

