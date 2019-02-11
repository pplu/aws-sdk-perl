
package Paws::Config::ListAggregateDiscoveredResources;
  use Moose;
  has ConfigurationAggregatorName => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'Paws::Config::ResourceFilters');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAggregateDiscoveredResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::ListAggregateDiscoveredResourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListAggregateDiscoveredResources - Arguments for method ListAggregateDiscoveredResources on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAggregateDiscoveredResources on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method ListAggregateDiscoveredResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAggregateDiscoveredResources.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $ListAggregateDiscoveredResourcesResponse =
      $config->ListAggregateDiscoveredResources(
      ConfigurationAggregatorName => 'MyConfigurationAggregatorName',
      ResourceType                => 'AWS::EC2::CustomerGateway',
      Filters                     => {
        AccountId    => 'MyAccountId',       # OPTIONAL
        Region       => 'MyAwsRegion',       # min: 1, max: 64; OPTIONAL
        ResourceId   => 'MyResourceId',      # min: 1, max: 768; OPTIONAL
        ResourceName => 'MyResourceName',    # OPTIONAL
      },    # OPTIONAL
      Limit     => 1,                # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListAggregateDiscoveredResourcesResponse->NextToken;
    my $ResourceIdentifiers =
      $ListAggregateDiscoveredResourcesResponse->ResourceIdentifiers;

   # Returns a L<Paws::Config::ListAggregateDiscoveredResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/ListAggregateDiscoveredResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationAggregatorName => Str

The name of the configuration aggregator.



=head2 Filters => L<Paws::Config::ResourceFilters>

Filters the results based on the C<ResourceFilters> object.



=head2 Limit => Int

The maximum number of resource identifiers returned on each page. The
default is 100. You cannot specify a number greater than 100. If you
specify 0, AWS Config uses the default.



=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.



=head2 B<REQUIRED> ResourceType => Str

The type of resources that you want AWS Config to list in the response.

Valid values are: C<"AWS::EC2::CustomerGateway">, C<"AWS::EC2::EIP">, C<"AWS::EC2::Host">, C<"AWS::EC2::Instance">, C<"AWS::EC2::InternetGateway">, C<"AWS::EC2::NetworkAcl">, C<"AWS::EC2::NetworkInterface">, C<"AWS::EC2::RouteTable">, C<"AWS::EC2::SecurityGroup">, C<"AWS::EC2::Subnet">, C<"AWS::CloudTrail::Trail">, C<"AWS::EC2::Volume">, C<"AWS::EC2::VPC">, C<"AWS::EC2::VPNConnection">, C<"AWS::EC2::VPNGateway">, C<"AWS::IAM::Group">, C<"AWS::IAM::Policy">, C<"AWS::IAM::Role">, C<"AWS::IAM::User">, C<"AWS::ACM::Certificate">, C<"AWS::RDS::DBInstance">, C<"AWS::RDS::DBSubnetGroup">, C<"AWS::RDS::DBSecurityGroup">, C<"AWS::RDS::DBSnapshot">, C<"AWS::RDS::EventSubscription">, C<"AWS::ElasticLoadBalancingV2::LoadBalancer">, C<"AWS::S3::Bucket">, C<"AWS::SSM::ManagedInstanceInventory">, C<"AWS::Redshift::Cluster">, C<"AWS::Redshift::ClusterSnapshot">, C<"AWS::Redshift::ClusterParameterGroup">, C<"AWS::Redshift::ClusterSecurityGroup">, C<"AWS::Redshift::ClusterSubnetGroup">, C<"AWS::Redshift::EventSubscription">, C<"AWS::CloudWatch::Alarm">, C<"AWS::CloudFormation::Stack">, C<"AWS::DynamoDB::Table">, C<"AWS::AutoScaling::AutoScalingGroup">, C<"AWS::AutoScaling::LaunchConfiguration">, C<"AWS::AutoScaling::ScalingPolicy">, C<"AWS::AutoScaling::ScheduledAction">, C<"AWS::CodeBuild::Project">, C<"AWS::WAF::RateBasedRule">, C<"AWS::WAF::Rule">, C<"AWS::WAF::WebACL">, C<"AWS::WAFRegional::RateBasedRule">, C<"AWS::WAFRegional::Rule">, C<"AWS::WAFRegional::WebACL">, C<"AWS::CloudFront::Distribution">, C<"AWS::CloudFront::StreamingDistribution">, C<"AWS::WAF::RuleGroup">, C<"AWS::WAFRegional::RuleGroup">, C<"AWS::Lambda::Function">, C<"AWS::ElasticBeanstalk::Application">, C<"AWS::ElasticBeanstalk::ApplicationVersion">, C<"AWS::ElasticBeanstalk::Environment">, C<"AWS::ElasticLoadBalancing::LoadBalancer">, C<"AWS::XRay::EncryptionConfig">, C<"AWS::SSM::AssociationCompliance">, C<"AWS::SSM::PatchCompliance">, C<"AWS::Shield::Protection">, C<"AWS::ShieldRegional::Protection">, C<"AWS::Config::ResourceCompliance">, C<"AWS::CodePipeline::Pipeline">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAggregateDiscoveredResources in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

