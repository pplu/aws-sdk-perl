
package Paws::EC2::CreateReplaceRootVolumeTask;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplaceRootVolumeTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateReplaceRootVolumeTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateReplaceRootVolumeTask - Arguments for method CreateReplaceRootVolumeTask on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplaceRootVolumeTask on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateReplaceRootVolumeTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplaceRootVolumeTask.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateReplaceRootVolumeTaskResult = $ec2->CreateReplaceRootVolumeTask(
      InstanceId        => 'MyInstanceId',
      ClientToken       => 'MyString',        # OPTIONAL
      DryRun            => 1,                 # OPTIONAL
      SnapshotId        => 'MySnapshotId',    # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'client-vpn-endpoint'
          , # values: client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, internet-gateway, key-pair, launch-template, local-gateway-route-table-vpc-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, placement-group, reserved-instances, route-table, security-group, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',
              Value => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
    );

    # Results:
    my $ReplaceRootVolumeTask =
      $CreateReplaceRootVolumeTaskResult->ReplaceRootVolumeTask;

    # Returns a L<Paws::EC2::CreateReplaceRootVolumeTaskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateReplaceRootVolumeTask>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. If you do not specify a client token, a randomly
generated token is used for the request to ensure idempotency. For more
information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance for which to replace the root volume.



=head2 SnapshotId => Str

The ID of the snapshot from which to restore the replacement root
volume. If you want to restore the volume to the initial launch state,
omit this parameter.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the root volume replacement task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplaceRootVolumeTask in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

