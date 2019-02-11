package Paws::SDK::Config;

use Moose;
use Moose::Util::TypeConstraints;
use Paws::Net::CallerRole;
use Paws::Credential;

coerce 'Paws::Net::CallerRole',
  from 'Str',
   via {
     my $class = $_; 
     Paws->load_class($class);
     return $class->new() 
   };

coerce 'Paws::Credential',
  from 'Str',
   via { 
     my $class = $_;
     Paws->load_class($class);
     return $class->new();
   };

has region => (
  is => 'rw',
  isa => 'Str|Undef',
  default => sub { undef }
);

has caller => (
  is => 'rw',
  does => 'Paws::Net::CallerRole', 
  lazy => 1,
  default => sub { 
    Paws->load_class('Paws::Net::Caller');
    Paws::Net::Caller->new 
  },
  coerce => 1
); 
has credentials => (
  is => 'rw',
  does => 'Paws::Credential',
  lazy => 1,
  default => sub {
    Paws->load_class('Paws::Credential::ProviderChain'); 
    Paws::Credential::ProviderChain->new 
  },
  coerce => 1
);
has immutable => (
  is => 'rw',
  isa => 'Bool',
  default => 0,
);
__PACKAGE__->meta->make_immutable;
1;

package Paws;

our $VERSION = '0.40';

use Carp;

use Moose;
use MooseX::ClassAttribute;
use Moose::Util qw//;
use Module::Runtime qw//;

use Paws::API::JSONAttribute;
use Paws::API::Base64Attribute;

use Paws::API;
use Moose::Util::TypeConstraints;

has _class_prefix => (isa => 'Str', is => 'ro', default => 'Paws::');

coerce 'Paws::SDK::Config',
  from 'HashRef',
   via {
     Paws::SDK::Config->new($_);
};
has config => (isa => 'Paws::SDK::Config', is => 'rw', coerce => 1, default => sub { Paws->default_config });

# Holds a fully constructed Paws instance so continuous calls to get_self are all done over the
# same (implicit) object. This happens when the user calls Paws->service, as opposed to $instance->service
class_has _default_object => (is => 'rw', isa => 'Paws');

class_has default_config => (is => 'rw', isa => 'Paws::SDK::Config', default => sub { Paws::SDK::Config->new });

sub load_class {
  my (undef, @classes) = @_;
  foreach my $class (@classes) {
    Module::Runtime::require_module($class);
    # immutability is a global setting that will affect all instances
    $class->meta->make_immutable if (Paws->default_config->immutable);
  }
}

# converts the params the user passed to the call into objects that represent the call
sub new_with_coercions {
  my (undef, $class, %params) = @_;

  Paws->load_class($class);
  my %p;

  if ($class->does('Paws::API::StrToObjMapParser')) {
    my ($subtype) = ($class->meta->find_attribute_by_name('Map')->type_constraint =~ m/^HashRef\[(.*?)\]$/);
    if (my ($array_of) = ($subtype =~ m/^ArrayRef\[(.*?)\]$/)){
      $p{ Map } = { map { $_ => [ map { Paws->new_with_coercions("$array_of", %$_) } @{ $params{ $_ } } ] } keys %params };
    } else {
      $p{ Map } = { map { $_ => Paws->new_with_coercions("$subtype", %{ $params{ $_ } }) } keys %params };
    }
  } elsif ($class->does('Paws::API::StrToNativeMapParser')) {
    $p{ Map } = { %params };
  } else {
    foreach my $att (keys %params){
      my $att_meta = $class->meta->find_attribute_by_name($att);

      croak "$class doesn't have an $att" if (not defined $att_meta);
      my $type = $att_meta->type_constraint;

      if ($type eq 'Bool') {
        $p{ $att } = ($params{ $att } == 1)?1:0;
      } elsif ($type eq 'Str' or $type eq 'Num' or $type eq 'Int') {
        $p{ $att } = $params{ $att };
      } elsif ($type =~ m/^ArrayRef\[(.*?)\]$/){
        my $subtype = "$1";
        if ($subtype eq 'Str' or $subtype eq 'Str|Undef' or $subtype eq 'Num' or $subtype eq 'Int' or $subtype eq 'Bool') {
          $p{ $att } = $params{ $att };
        } else {
          $p{ $att } = [ map { Paws->new_with_coercions("$subtype", %{ $_ }) } @{ $params{ $att } } ];
        }
      } elsif ($type->isa('Moose::Meta::TypeConstraint::Enum')){
        $p{ $att } = $params{ $att };
      } else {
        $p{ $att } = Paws->new_with_coercions("$type", %{ $params{ $att } });
      }
    }
  }
  return $class->new(%p);
}

sub is_internal_type {
  my (undef, $att_type) = @_;
  return ($att_type eq 'Str' or $att_type eq 'Str|Undef' or $att_type eq 'Int' or $att_type eq 'Bool' or $att_type eq 'Num');
}

sub to_hash {
  my (undef, $params) = @_;
  my $refHash = {};

  if      ($params->does('Paws::API::StrToNativeMapParser')) {
    return $params->Map;
  } elsif ($params->does('Paws::API::StrToObjMapParser')) {
    return { map { ($_ => Paws->to_hash($params->Map->{$_})) } keys %{ $params->Map } };
  }

  foreach my $att (grep { $_ !~ m/^_/ } $params->meta->get_attribute_list) {
    my $key = $att;
    if (defined $params->$att) {
      my $att_type = $params->meta->get_attribute($att)->type_constraint;
      if ($att_type eq 'Bool') {
        $refHash->{ $key } = ($params->$att)?1:0;
      } elsif (Paws->is_internal_type($att_type)) {
        $refHash->{ $key } = $params->$att;
      } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
        if (Paws->is_internal_type("$1")){
          $refHash->{ $key } = $params->$att;
        } else {
          $refHash->{ $key } = [ map { Paws->to_hash($_) } @{ $params->$att } ];
        }
      } elsif ($att_type->isa('Moose::Meta::TypeConstraint::Enum')) {
        $refHash->{ $key } = $params->$att;
      } else {
        $refHash->{ $key } = Paws->to_hash($params->$att);
      }
    }
  }
  return $refHash;
}

sub available_services {
  my ($self) = @_;
  $self = $self->get_self;

  my $skip_list = {
    API => 1, Credential => 1, Exception => 1, RegionInfo => 1,
  };
  require Module::Find;
  my $class_prefix = $self->_class_prefix;
  return grep { not $skip_list->{ $_ } } map { $_ =~ s/^$class_prefix//; $_ } Module::Find::findsubmod Paws;
}

sub get_self {
  my $self = shift;
  if (not ref($self)) {
    if (not defined Paws->_default_object) {
      Paws->_default_object(Paws->new(config => Paws->default_config));
    }
    return Paws->_default_object;
  } else {
    return $self;
  }
}

sub class_for_service {
  my ($self, $service_name) = @_;
  $self = $self->get_self;

  my $class = $self->_class_prefix . $service_name;
  $self->load_class($class);
  return $class;
}

sub service {
  my ($self, $service_name, %constructor_params) = @_;
  $self = $self->get_self;

  $constructor_params{ region } = $self->config->region if (not exists $constructor_params{ region });
  $constructor_params{ caller } = $self->config->caller if (not exists $constructor_params{ caller });
  $constructor_params{ credentials } = $self->config->credentials if (not exists $constructor_params{ credentials });

  my $class = $self->class_for_service($service_name);
  my $instance = $class->new(
    %constructor_params
  );

  return $instance;
}

sub preload_service {
  my (undef, $service, @operations) = @_;

  # load the service class
  my $service_class = Paws->class_for_service($service);

  @operations = ('*') if (@operations == 0);

  my %calculated_operations = ();
  foreach my $operation (@operations) {
    if ($operation eq '*') {
      $calculated_operations{ $_ } = 1 for ($service_class->operations);
    } elsif ($operation =~ m/\*/) {
      die "Wildcards not implemented yet";
    } else {
      $calculated_operations{ $operation } = 1;
    }
  }

  _preload_operations($service_class, keys %calculated_operations);
}

sub _preload_operations {
  my ($service_class, @operations) = @_;

  foreach my $operation (@operations) {
    # Each operation has two classes associated:

    # 1st preload the classes that represent the arguments for a call
    my $op_params_class = "${service_class}::${operation}";
    _preload_scanclass($op_params_class);

    # 2nd preload the classes that represent responses from the call
    _preload_scanclass($op_params_class->_returns) if ($op_params_class->_returns);
  }
}

sub _preload_scanclass {
  my ($class) = @_;

  # If the class is already loaded, we really don't want to be rescanning it
  # this avoid infinite recursion on DynamoDB, for example
  return if (Moose::Util::find_meta($class));

  Paws->load_class($class);

  foreach my $att ($class->meta->get_all_attributes){
    my $tconst = $att->type_constraint;

    if ($tconst->isa('Moose::Meta::TypeConstraint::Class')) {
      # Any attribute that isa class will need to be inspected
      _preload_scanclass($tconst->class);
    } elsif ($tconst->isa('Moose::Meta::TypeConstraint::Parameterized') and
             $tconst->type_parameter->isa('Moose::Meta::TypeConstraint::Class')) {
      # those attributes can also be found in parametrized 
      # type constraints (ArrayRef[...], Hashref[...])
      _preload_scanclass($tconst->type_parameter->class);
    }
  }
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws - A Perl SDK for AWS (Amazon Web Services) APIs

=head1 SYNOPSIS

  use Paws;
  my $obj = Paws->service('...');
  my $res = $obj->MethodCall(Arg1 => $val1, Arg2 => $val2);
  print $res->AttributeFromResult;

=head1 DESCRIPTION

Paws is an attempt to develop an always up-to-date SDK that covers all possible AWS services.

=head1 STATUS

Please consider the SDK is beta quality. The intention of publishing to CPAN is having the community
find the SDK, try it, give feedback, etc. Some services are still not working, and some heavy
refactoring will still be done to the internals. The external interface to SDK users will try to be 
kept stable, and changes to it should be notified via ChangeLog

=head1 SUPPORTED SERVICES


L<Paws::ACM>

L<Paws::ACMPCA>

L<Paws::AlexaForBusiness>

L<Paws::Amplify>

L<Paws::ApiGateway>

L<Paws::ApiGatewayManagement>

L<Paws::ApiGatewayV2>

L<Paws::ApplicationAutoScaling>

L<Paws::AppMesh>

L<Paws::AppStream>

L<Paws::AppSync>

L<Paws::Athena>

L<Paws::AutoScaling>

L<Paws::AutoScalingPlans>

L<Paws::Backup>

L<Paws::Batch>

L<Paws::Budgets>

L<Paws::Chime>

L<Paws::Cloud9>

L<Paws::CloudDirectory>

L<Paws::CloudFormation>

L<Paws::CloudFront>

L<Paws::CloudHSM>

L<Paws::CloudHSMv2>

L<Paws::CloudSearch>

L<Paws::CloudSearchDomain>

L<Paws::CloudTrail>

L<Paws::CloudWatch>

L<Paws::CloudWatch>

L<Paws::CloudWatchEvents>

L<Paws::CloudWatchLogs>

L<Paws::CodeBuild>

L<Paws::CodeCommit>

L<Paws::CodeDeploy>

L<Paws::CodePipeline>

L<Paws::CodeStar>

L<Paws::CognitoIdentity>

L<Paws::CognitoIdp>

L<Paws::CognitoSync>

L<Paws::Comprehend>

L<Paws::ComprehendMedical>

L<Paws::Config>

L<Paws::Connect>

L<Paws::CostExplorer>

L<Paws::CUR>

L<Paws::DataPipeline>

L<Paws::Datasync>

L<Paws::DAX>

L<Paws::DeviceFarm>

L<Paws::DirectConnect>

L<Paws::Discovery>

L<Paws::DLM>

L<Paws::DMS>

L<Paws::DocDB>

L<Paws::DS>

L<Paws::DynamoDB>

L<Paws::DynamoDBStreams>

L<Paws::EC2>

L<Paws::ECR>

L<Paws::ECS>

L<Paws::EFS>

L<Paws::EFS>

L<Paws::EKS>

L<Paws::ElastiCache>

L<Paws::ElasticBeanstalk>

L<Paws::ElasticTranscoder>

L<Paws::ELB>

L<Paws::ELB>

L<Paws::ELBv2>

L<Paws::EMR>

L<Paws::EMR>

L<Paws::ES>

L<Paws::Firehose>

L<Paws::FMS>

L<Paws::FSX>

L<Paws::GameLift>

L<Paws::Glacier>

L<Paws::GlobalAccelerator>

L<Paws::Glue>

L<Paws::Greengrass>

L<Paws::GuardDuty>

L<Paws::Health>

L<Paws::IAM>

L<Paws::ImportExport>

L<Paws::Inspector>

L<Paws::IoT>

L<Paws::IoT1ClickDevices>

L<Paws::IoT1ClickProjects>

L<Paws::IoTAnalytics>

L<Paws::IoTData>

L<Paws::IoTJobsData>

L<Paws::Kafka>

L<Paws::Kinesis>

L<Paws::KinesisAnalytics>

L<Paws::KinesisAnalyticsV2>

L<Paws::KinesisVideo>

L<Paws::KinesisVideoArchivedMedia>

L<Paws::KinesisVideoMedia>

L<Paws::KMS>

L<Paws::Lambda>

L<Paws::LexModels>

L<Paws::LexRuntime>

L<Paws::LicenseManager>

L<Paws::Lightsail>

L<Paws::MachineLearning>

L<Paws::Macie>

L<Paws::MarketplaceCommerceAnalytics>

L<Paws::MarketplaceEntitlement>

L<Paws::MarketplaceMetering>

L<Paws::MediaConnect>

L<Paws::MediaConvert>

L<Paws::MediaLive>

L<Paws::MediaPackage>

L<Paws::MediaStore>

L<Paws::MediaStoreData>

L<Paws::MediaTailor>

L<Paws::MigrationHub>

L<Paws::MobileHub>

L<Paws::MQ>

L<Paws::MTurk>

L<Paws::Neptune>

L<Paws::OpsWorks>

L<Paws::OpsWorksCM>

L<Paws::Organizations>

L<Paws::PerformanceInsights>

L<Paws::Pinpoint>

L<Paws::PinpointEmail>

L<Paws::PinpointSMSVoice>

L<Paws::PinpointSMSVoice>

L<Paws::Polly>

L<Paws::Pricing>

L<Paws::Quicksight>

L<Paws::RAM>

L<Paws::RDS>

L<Paws::RDSData>

L<Paws::RedShift>

L<Paws::Rekognition>

L<Paws::ResourceGroups>

L<Paws::ResourceTagging>

L<Paws::Robomaker>

L<Paws::Route53>

L<Paws::Route53Domains>

L<Paws::Route53Resolver>

L<Paws::S3>

L<Paws::S3Control>

L<Paws::SageMaker>

L<Paws::SageMakerRuntime>

L<Paws::SDB>

L<Paws::SecretsManager>

L<Paws::SecurityHub>

L<Paws::ServerlessRepo>

L<Paws::ServiceCatalog>

L<Paws::ServiceDiscovery>

L<Paws::SES>

L<Paws::SES>

L<Paws::Shield>

L<Paws::Signer>

L<Paws::Signin>

L<Paws::SimpleDB>

L<Paws::SimpleWorkflow>

L<Paws::SMS>

L<Paws::Snowball>

L<Paws::SNS>

L<Paws::SQS>

L<Paws::SSM>

L<Paws::StepFunctions>

L<Paws::StorageGateway>

L<Paws::STS>

L<Paws::Support>

L<Paws::Transcribe>

L<Paws::Transfer>

L<Paws::Translate>

L<Paws::WAF>

L<Paws::WAFRegional>

L<Paws::WorkDocs>

L<Paws::WorkLink>

L<Paws::WorkMail>

L<Paws::WorkSpaces>

L<Paws::XRay>


=head1 SERVICES CLASSES

Each service in AWS (EC2, CloudFormation, SQS, SNS, etc) has a service class. The service class represents the properties that a web service has (how to call it, what methods it has, how to authenticate, etc). When a service class is instantiated with the right properties (region, if needed, credentials, caller, etc), it will be able to make calls to the service.

Service classes are obtained through

  my $service_class = Paws->class_for_service('Service');
  my $service_object = $service_class->new(region => '...', caller => ...)

Although they are seldom needed. 99% of the time you want service objects directly obtained with the ->service method (read next section) since you have to write less code.

=head1 SERVICE OBJECTS

Each Service Object represents the ability to call methods on a service endpoint. Those endpoints are
either global, or bound to a region depending on the service. Also, each object can be customized 
with a credential provider, that tells the object where to obtain credentials for the call (you can
get them from the environment, from the filesystem, from the AWS Instance Profile, STS, etc.

To obtain a service object, call the C<< ->service >> method

  use Paws;
  my $service = Paws->service('Service');

You can pass extra parameters if the service is bound to a region:

  my $service = Paws->service('Service', region => 'us-east-1');

These parameters are basically passed to the service class constructor

=head1 AUTHENTICATION

Service classes by default try to authenticate with a chained authenticator. The chained authenticator tries to first find credentials in your environment variables B<AWS_ACCESS_KEY> and B<AWS_SECRET_KEY> (note that B<AWS_ACCESS_KEY_ID> and B<AWS_SECRET_ACCESS_KEY> are also scanned for compatibility with the official SDKs). Second, it will look for credentials in the B<default> profile of the B<~/.aws/credentials> or the file in B<AWS_CONFIG_FILE> env variable (an ini-formatted file). Last, if no environment variables are found, then a call to retrieve Role credentials is done. If your instance is running on an AWS instance, and has a Role assigned, the SDK will automatically retrieve credentials to call any services that the instances Role permits.

Please never burn credentials into your code. That's why the methods for passing an explicit access key and secret key are not documented.

So, instantiating a service with

  my $ec2 = Paws->service('EC2', region => 'eu-west-1');

we get an service object that will try to authenticate with environment, credential file, or an instance role.

When instantiating a service object, you can also pass a custom credential provider:

  use Paws::Credential::STS;

  my $cred_provider = Paws::Credential::STS->new(
    Name => 'MyName',
    DurationSeconds => 900,
    Policy => '{"Version":"2012-10-17","Statement":[{"Effect": "Allow","Action":["ec2:DescribeInstances"],"Resource":"*"}]}'
  );
  my $ec2 = Paws->service('EC2', credentials => $cred_provider, region => 'eu-west-1');

In this example we instance a service object that uses the STS service to create temporary credentials that only let the service object call DescribeInstances.

Paws bundles some pre-baked credential providers:

L<Paws::Credential::ProviderChain> - Gets credentials from a list of providers, returning the first provider to return credentials

L<Paws::Credential::Environment> - Gets credentials from environment variables

L<Paws::Credential::File> - Gets credentials from AWS SDK config files

L<Paws::Credential::InstanceProfile> - Gets credentials from the InstanceProfile (Role) of the running instance

L<Paws::Credential::STS> - Gets temporary credentials from the Secure Token Service

L<Paws::Credential::AssumeRole> - Gets temporary credentials with AssumeRole

L<Paws::Credential::AssumeRoleWithSAML> - Gets temporary credentials with AssumeRoleWithSAML

L<Paws::Credential::Explicit> - Gets credentials specified in the code

=head1 Using Service objects (Calling APIs)

Each API call is represented as a method call with the same name as the API call. The arguments to the call are passed as lists (named parameters) to the call. So, to call DescribeInstances on the EC2 service:

  my $result = $ec2->DescribeInstances;

The DescribeInstances call has no required parameters, but if needed, we can pass them in (you can look them up in L<Paws::EC2> and see detail in L<Paws::EC2::DescribeInstances>

  my $result = $ec2->DescribeInstances(MaxResults => 5);

If the parameter is an Array:

  my $result = $ec2->DescribeInstances(InstanceIds => [ 'i-....' ]);

If the parameter to be passed in is a complex value (an object)

  my $result = $ec2->DescribeInstances(Filters => [ { Name => '', Value => '' } ])

=head1 RETURN VALUES

The AWS APIs return nested datastructures in various formats. The SDK converts these datastructures into objects that can then be used as wanted.

  my $private_dns = $result->Reservations->[0]->Instances->[0]->PrivateDnsName;

=head1 CONFIGURATION

Paws instances have a configuration. The configuration is basically a specification of values that will be passed to the service method each time
it's called

  # the credentials and the caller keys accept an instance or the name of a class as a 
  # string (the class will be loaded and the constructor of that class will be automatically called
  my $paws1 = Paws->new(config => { credentials => MyCredProvider->new, region => 'eu-west-1' });
  my $paws2 = Paws->new(config => { caller => 'MyCustomCaller' });
  
  # EC2 service with MyCredProvider in eu-west-1
  my $ec2 = $paws1->service('EC2');

  # DynamoDB service with MyCustomCaller in us-east-1. region is needed because it's not in the config
  my $ddb = $paws2->service('DynamoDB', region => 'us-east-1');

  # DynamoDB in eu-west-1 with MyCredProvider
  my $other_ddb = $paws1->service('DynamoDB');

The attributes that can be configured are:

=head3 credentials

Accepts a string which value is the name of a class, or an already instantiated object. If a string is passed, the class will be loaded, and the 
constructor called (without parameters). Also, the resulting instance or the already instantiated object has to have the L<Paws::Credential> role.

=head3 caller

Accepts a string which value is the name of a class, or an already instantiated object. If a string is passed, the class will be loaded, and the 
constructor called (without parameters). Also, the resulting instance or the already instantiated object has to have the L<Paws::Net::CallerRole> role.

=head3 region

A string representing the region that service objects will be instantiated with. Most services need a region specified, meaning that you will have to specify the desired region every time you call the B<service> method.

  my $cfn = Paws->service('CloudFormation', region => 'eu-west-1');

Some services (like IAM) are global, so they don't need their region specified:

  my $iam = Paws->service('IAM');

A special service is STS, which by default has a global endpoint, but you can also specify regional endpoints

  my $global_sts = Paws->service('STS');
  my $regional_sts = Paws->service('STS', region => 'eu-west-1');

=head3 endpoint

Paws needs to send HTTP requests to different URLS (endpoints) depending on the service and the region. URLs are normally automatically derived by specifying the region, but for special cases, like pointing to "fake-sqs" or "fake-s3" services, you can:

  Paws->service('SQS', endpoint => 'http://localhost:3000', region => 'eu-west-1');

Some services, like the MachineLearning predictor API want you to specify a custom endpoint:

  my $model = $ml->GetMLModel(MLModelId => $model_id);
  my $predictor = Paws->service('ML', endpoint => $model->EndpointInfo->EndpointUrl, region => 'eu-west-1');
  $predictor->...

=head3 max_attempts

Sets the total number of request attempts to make per API call, by retrying after failures. For most services the value defaults to 5 - that is, after a failure, up to 4 retries will be made, making a total of up to 5 attempts.

  my $sms = Paws->service('SMS', max_attempts => 10);

=head2 Using VPC Endpoints

If you are going to consume a service behind a VPC Endpoint, you can use the C<endpoint> and the C<region> attributes to configure Paws appropiately

  my $svc = $paws->service('...', endpoint => 'https://endpointaddress', region => 'eu-west-1');

=head1 Pluggability

=head2 Credential Provider Pluggability

Credential classes need to have the Role L<Paws::Credential> applied. This obliges them to implement access_key, secret_key and session_token methods. 
The obtention of this data can be customized to be retrieved whereever the developer considers useful (files, environment, other services, etc). Take
a look at the Paws::Credential::XXXX namespace to find already implemented credential providers.

The credential objects' access_key, secret_key and session_token methods will be called each time an API call has to be signed.

=head2 Caller Pluggability

Caller classes need to have the Role L<Paws::Net::CallerRole> applied. This obliges them to implement the do_call method. Tests use this interface to
mock calls and responses to the APIs (without using the network). 

The caller instance is responsable for doing the network Input/Output with some type of HTTP request library, and returning the Result from the API.

These callers are included and supported in Paws:

L<Paws::Net::Caller>: Uses HTTP::Tiny. It's the default caller for Paws

L<Paws::Net::MojoAsyncCaller>: Experimental asyncronous IO caller. Paws method calls return futures instead of results

L<Paws::Net::LWPCaller>: Uses LWP. LWP supports HTTPS proxies, so Paws can call AWS from behind an HTTPS proxy.

L<Paws::Net::FurlCaller>: Uses Furl: a lightning fast HTTP client

=head1 Optimization

=head2 Preloading services and operations

  Paws->preload_service($service)
  Paws->preload_service($service, @methods)

Paws manages a lot of objects that are loaded dynamically as needed. This causes high memory consumption if you do operations with Paws in a forked 
environment because each child loads a separate copy of all the classes it needs to do the calls. Paws provides the preload_service operation. Call
it with the name of the service before forking off so your server can benefit from copy on write memory sharing. The parent class will load all the
classes needed so that child processes don't need to load them.

Some classes have lot's of calls, so preloading them can be quite expensive. If you call preload_service with a list of the methods you will call,
it will only load classes needed for those calls. This is specially useful for L<Paws::EC2>, for example.

Preloading doesn't change the usage of Paws. That means that all services and methods still work without any change, just that if they're not preloaded
they'll be loaded at runtime.

=head2 Immutabilizing classes

Paws objects are programmed with L<Moose> (the Modern Perl Object Framework). Moose objects can be immutibilized so that method calls perform better,
at the cost of startup time. If you deem your usage of Paws to be long-lived, you can call

  Paws->default_config->immutable(1);

as early as possible in the code. Very important that the immutable flag be activated before calling preload_service.

=head1 AUTHOR

    Jose Luis Martinez
    CPAN ID: JLMARTIN
    CAPSiDE
    jlmartinez@capside.com

=head1 SEE ALSO

L<http://aws.amazon.com/documentation/>

L<https://github.com/pplu/aws-sdk-perl>

=head1 BUGS and SOURCE

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=head1 COPYRIGHT and LICENSE

Copyright (c) 2015 by Jose Luis Martinez Torres

This code is distributed under the Apache 2 License. The full text of the license can be found in the LICENSE file included with this module.

=head1 CONTRIBUITIONS


CAPSiDE (https://www.capside.com) for letting Paws be contributed in an open source model
and giving me time to build and maintain it regularly.

ZipRecruiter (https://www.ziprecruiter.com/) for sponsoring development of Paws. Lots of work
from ZipRecruiter has been done via Shadowcat Systems (https://shadow.cat/).

Luis Alberto Gimenez (@agimenez) for
 - The git-fu cleaning up the "pull other sdks" code
 - Credential Providers code
 - Fixes for users that have no HOME env variable
 - FileCaller to fully mock responses

Srinvas (@kidambisrinivas) for testing, bug reporting and fixing

juair10 for corrections and testing

CHORNY for CPAN and cpanfile packaging corrections

Iñigo Tejedor for service endpoint resolution based on rules

codehead for helping fix SQS Queue Maps

mbartold for helping fix SQS MessageBatch functionality

coreymayer for reporting bug in RestXmlCaller

arc (Aaron Crane) for documentation patches

dtikhonov for LWP Caller and bug reporting/fixing

vivus-ignis for DynamoDB bug reporting and test scripts for DynamoDB

karenetheridge for bug reporting, pull requests and help

ioanrogers for fixing unicode issues in tests

ilmari for fixing issues with timestamps in Date and X-Amz-Date headers,
test fixes and 5.10 support fixes, documentation issue fixes for S3,
CloudFront and Route53, help with number stringification

stevecaldwell77 for 
 - contributing support for temporary credentials in S3
 - Fixing test suite failure scenarios

Ryan Olson (BeerBikesBBQ) for contributing documentation fixes

Roger Pettett for testing and contributing fixes for tests on MacOSX

Henri Yandell for help with licensing issues

Oriol Soriano (@ureesoriano) for contributions to API builders and better
documentation generation

H. Daniel Cesario (@maneta) for devel setup instructions on RH and MacOSX

Glen van Ginkel for contributions to get S3 working

Javier Arellano for discovering Tagging bug

Ioan Rogers for contributing AssumeRoleWithSAML with ADFS auth example

Miquel Soriano for reporting a bug with DescribeAutoScalingGroups

Albert Bendicho (wiof) for contributing better retry logic

Brian Hartsock for better handling of XMLResponse exceptions

rpcme for reporting various bugs in the SDK

glenveegee for lots of work sorting out the S3 implementation

Grinzz
 - many bugs, suggestions and fixes
 - Installation speedup with Module::Builder::Tiny

Dakkar for solving issues with parameter passing

Arthur Axel fREW Schmidt for speeding up credential refreshing

PopeFelix for solving issues around S3 and MojoAsyncCaller

meis for (between others):
 - contributing Paws::Credential::Explicit
 - enabling unstable warnings to be silenced

sven-schubert for contributing fixes to RestXML services,
working on fixing S3 to work correctly.

SeptamusNonovant for fixing paginators in non-callback mode

gadgetjunkie for contributing the ECS credential provider

mla for contributing a fix to correct dependencies

castaway for contributing to fixing documentation problems
 - properly providing backlinks between related pages
 - making TOCs render correctly on search.cpan.org
 - generating helpful copy-paste ready scenarios in the synopsis of each method call

autarch for correcting signature generation for a bunch of services

piratefinn for linking calls to documentation AWS URLs

slobo for fixing S3 behaviour

bork1n for fixes to MojoAsynCaller

atoomic for:
 - tweaking CPAN packaging
 - improving paws CLI

leonerd for (between others)
 - documenting retry logic
 - fixing retry sleep of MojoAsyncCaller

campus-explorer for contributing to test suite


=cut
