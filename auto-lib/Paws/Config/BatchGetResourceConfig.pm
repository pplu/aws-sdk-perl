
package Paws::Config::BatchGetResourceConfig;
  use Moose;
  has ResourceKeys => (is => 'ro', isa => 'ArrayRef[Paws::Config::ResourceKey]', traits => ['NameInRequest'], request_name => 'resourceKeys' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetResourceConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::BatchGetResourceConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::BatchGetResourceConfig - Arguments for method BatchGetResourceConfig on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetResourceConfig on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method BatchGetResourceConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetResourceConfig.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $BatchGetResourceConfigResponse = $config->BatchGetResourceConfig(
      ResourceKeys => [
        {
          ResourceId   => 'MyResourceId',               # min: 1, max: 768
          ResourceType => 'AWS::EC2::CustomerGateway'
          , # values: AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::CodePipeline::Pipeline

        },
        ...
      ],

    );

    # Results:
    my $BaseConfigurationItems =
      $BatchGetResourceConfigResponse->BaseConfigurationItems;
    my $UnprocessedResourceKeys =
      $BatchGetResourceConfigResponse->UnprocessedResourceKeys;

    # Returns a L<Paws::Config::BatchGetResourceConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/BatchGetResourceConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceKeys => ArrayRef[L<Paws::Config::ResourceKey>]

A list of resource keys to be processed with the current request. Each
element in the list consists of the resource type and resource ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetResourceConfig in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

