
package Paws::EC2::StartNetworkInsightsAnalysis;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has FilterInArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'FilterInArn' );
  has NetworkInsightsPathId => (is => 'ro', isa => 'Str', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartNetworkInsightsAnalysis');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::StartNetworkInsightsAnalysisResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StartNetworkInsightsAnalysis - Arguments for method StartNetworkInsightsAnalysis on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartNetworkInsightsAnalysis on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method StartNetworkInsightsAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartNetworkInsightsAnalysis.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $StartNetworkInsightsAnalysisResult = $ec2->StartNetworkInsightsAnalysis(
      ClientToken           => 'MyString',
      NetworkInsightsPathId => 'MyNetworkInsightsPathId',
      DryRun                => 1,                           # OPTIONAL
      FilterInArns          => [
        'MyResourceArn', ...                                # min: 1, max: 1283
      ],    # OPTIONAL
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
    my $NetworkInsightsAnalysis =
      $StartNetworkInsightsAnalysisResult->NetworkInsightsAnalysis;

    # Returns a L<Paws::EC2::StartNetworkInsightsAnalysisResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/StartNetworkInsightsAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 FilterInArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the resources that the path must
traverse.



=head2 B<REQUIRED> NetworkInsightsPathId => Str

The ID of the path.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartNetworkInsightsAnalysis in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

