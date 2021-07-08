
package Paws::EC2::CreateRestoreImageTask;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has ObjectKey => (is => 'ro', isa => 'Str', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRestoreImageTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateRestoreImageTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateRestoreImageTask - Arguments for method CreateRestoreImageTask on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRestoreImageTask on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateRestoreImageTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRestoreImageTask.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateRestoreImageTaskResult = $ec2->CreateRestoreImageTask(
      Bucket            => 'MyString',
      ObjectKey         => 'MyString',
      DryRun            => 1,             # OPTIONAL
      Name              => 'MyString',    # OPTIONAL
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
      ],    # OPTIONAL
    );

    # Results:
    my $ImageId = $CreateRestoreImageTaskResult->ImageId;

    # Returns a L<Paws::EC2::CreateRestoreImageTaskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateRestoreImageTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the S3 bucket that contains the stored AMI object.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Name => Str

The name for the restored AMI. The name must be unique for AMIs in the
Region for this account. If you do not provide a name, the new AMI gets
the same name as the original AMI.



=head2 B<REQUIRED> ObjectKey => Str

The name of the stored AMI object in the bucket.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the AMI and snapshots on restoration. You can tag
the AMI, the snapshots, or both.

=over

=item *

To tag the AMI, the value for C<ResourceType> must be C<image>.

=item *

To tag the snapshots, the value for C<ResourceType> must be
C<snapshot>. The same tag is applied to all of the snapshots that are
created.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRestoreImageTask in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

