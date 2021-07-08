
package Paws::Config::DescribeRemediationExecutionStatus;
  use Moose;
  has ConfigRuleName => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceKeys => (is => 'ro', isa => 'ArrayRef[Paws::Config::ResourceKey]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRemediationExecutionStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeRemediationExecutionStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeRemediationExecutionStatus - Arguments for method DescribeRemediationExecutionStatus on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRemediationExecutionStatus on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeRemediationExecutionStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRemediationExecutionStatus.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeRemediationExecutionStatusResponse =
      $config->DescribeRemediationExecutionStatus(
      ConfigRuleName => 'MyConfigRuleName',
      Limit          => 1,                    # OPTIONAL
      NextToken      => 'MyString',           # OPTIONAL
      ResourceKeys   => [
        {
          ResourceId   => 'MyResourceId',               # min: 1, max: 768
          ResourceType => 'AWS::EC2::CustomerGateway'
          , # values: AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::NetworkFirewall::Firewall, AWS::NetworkFirewall::FirewallPolicy, AWS::NetworkFirewall::RuleGroup, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ConformancePackCompliance, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeRemediationExecutionStatusResponse->NextToken;
    my $RemediationExecutionStatuses =
      $DescribeRemediationExecutionStatusResponse->RemediationExecutionStatuses;

 # Returns a L<Paws::Config::DescribeRemediationExecutionStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeRemediationExecutionStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigRuleName => Str

A list of AWS Config rule names.



=head2 Limit => Int

The maximum number of RemediationExecutionStatuses returned on each
page. The default is maximum. If you specify 0, AWS Config uses the
default.



=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.



=head2 ResourceKeys => ArrayRef[L<Paws::Config::ResourceKey>]

A list of resource keys to be processed with the current request. Each
element in the list consists of the resource type and resource ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRemediationExecutionStatus in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

