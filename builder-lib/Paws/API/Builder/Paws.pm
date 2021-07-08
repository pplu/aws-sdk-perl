package Paws::API::Builder::Paws {
  use Template;
  use Data::Printer;
  use Data::Dumper;

  use JSON::MaybeXS;
  use File::Slurper 'read_binary';
  use Module::Runtime qw/require_module/;
  use Cwd;

  use autodie;

  use Moose;

  sub version {
    '0.44';
  }

  has boto_service_files => (is => 'ro', isa => 'ArrayRef[Str]', lazy => 1, default => sub {
    my $self = shift;
    my @dirs = glob('botocore/botocore/data/*') or
      die "Cannot find botocore data files in botocore/botocore/data/*\n";

    my @files;
    foreach my $class_dir (@dirs) {
      my @class_defs = grep { -f $_ } glob("$class_dir/*/service-2.json");
      next if (not @class_defs);
      @class_defs = sort @class_defs;
      my $class_version = pop @class_defs;
      push @files, $class_version;
    }

    return \@files;
  });

  has boto_file_information => (is => 'ro', isa => 'HashRef[HashRef]', lazy => 1, default => sub {
    my $self = shift;
    my @files = @{ $self->boto_service_files };
    my %info;
    foreach my $file (@files) {
      if (my ($service_dir, $version) = ($file =~ m/data\/(.*?)\/(.*?)\/service-2.json/)){
        # Discard directories that are not services (stuff in botocore dir structure
        next if ($service_dir eq '_retry' or $service_dir eq '_regions');

        my $api_ns = $self->servicefile_to_class_overrides->{ $service_dir };
        my $api_struct = decode_json(read_binary($file));
        if (not defined $api_ns) {
          $api_ns = $api_struct->{ metadata }->{ serviceId };
          die "No serviceId in API metadata" if (not defined $api_ns);
	  # Fix some serviceIds, so that we don't need an explicit mappings
	  # Capitalize first letter of the serviceId
	  substr($api_ns,0,1) = uc(substr($api_ns,0,1));
	  # Eliminate whitespace
	  $api_ns =~ s/\s//g;
        }

        my $builder = $self->servicefile_to_builder_overrides->{ $service_dir };
        $builder = $api_struct->{ metadata }->{ protocol } if (not defined $builder);
        die "Type of API call not found for $file" if (not defined $builder);
        $builder =~ s/\-//;

        $info{ $service_dir } = {
          file => $file,
          service => $service_dir,
          version => $version,
          api_ns => $api_ns,
          builder => $builder,
        };
      }
    }
    return \%info;
  });

  sub services {
    my $self = shift;

    return [ map { $self->boto_file_information->{ $_ }->{ api_ns } } keys %{ $self->boto_file_information } ];
  }

  sub save_class {
    my ($self, $class_name, $content) = @_;
    return if (not defined $class_name);
    my @class_parts = split /\:\:/, $class_name;
    my $class_file_name = "auto-lib/" . ( join '/', @class_parts ) . ".pm";
    if (0) {#-e $class_file_name) { #not doing this, because there are unimportant differences in files
      {
      my $read_content = read_text($class_file_name);
      die "Non matching for $class_file_name: going to store $content\nvs stored: $read_content" if ($read_content ne $content);
      }
    }
    pop @class_parts;
    eval { mkdir "auto-lib/" . ( join '/', @class_parts ) };
    open my $file, ">", $class_file_name;
    print $file $content;
    close $file;
  }

  sub escape_pod {
    my ($string) = @_;
    my %char2names = reverse %Pod::Escapes::Name2character;
    my $rekeys = list2re(keys %char2names);
    $string =~ s/($rekeys)/E<$char2names{$1}>/g;
    return $string;
  }

  has template_path => (is => 'ro', required => 1);

  has pawspm_template => (is => 'ro', isa => 'Str', default => 'paws.tt');

  sub process_template {
    my ($self, $template, $vars) = @_;
    my $tt = Template->new(DEBUG => 1,INCLUDE_PATH => $self->template_path,
        FILTERS => { escape_pod => \&escape_pod });
    my $output = '';
    $tt->process($template, $vars, \$output) || die $tt->error();
    return $output;
  }

  sub process {
    my ($self) = @_;
    my $class = $self->process_template(
      'default/paws_pm.tt',
      { c => $self }
    );
    $self->save_class('Paws', $class);
  }

  sub contributors {
    my $self = shift;
    my $contributions;
    {
      local $/ = undef;
      open my $file, '<', 'README.md';
      my $content = <$file>;
      close $file;
      ($contributions) = ($content =~ m/Thanks\n================\n(.*)$/ms);
    }
    return $contributions;
  }

  has servicefile_to_class_overrides => (is => 'ro', default => sub { {
   'acm-pca' => 'ACMPCA',
    alexaforbusiness => 'AlexaForBusiness',
    amp => 'Prometheus',
    apigateway => 'ApiGateway',
    apigatewaymanagementapi => 'ApiGatewayManagement',
   'application-autoscaling' => 'ApplicationAutoScaling',
   'application-insights' => 'ApplicationInsights',
    appmesh => 'AppMesh',
    autoscaling => 'AutoScaling',
   'autoscaling-plans' => 'AutoScalingPlans',
    ce => 'CostExplorer',
    cloudhsmv2 => 'CloudHSMv2',
    cloudsearchdomain => 'CloudSearchDomain',
    codeartifact => 'CodeArtifact',
   'codeguru-reviewer' => 'CodeGuruReviewer',
   'codestar-connections' => 'CodeStarConnections',
   'codestar-notifications' => 'CodeStarNotifications',
   'cognito-identity' => 'CognitoIdentity',
   'cognito-idp' => 'CognitoIdp',
   'cognito-sync' => 'CognitoSync',
    config => 'Config',
    cur => 'CUR',
    databrew => 'GlueDataBrew',
    datapipeline => 'DataPipeline',
    datasync => 'Datasync',
    devicefarm => 'DeviceFarm',
    directconnect => 'DirectConnect',
    discovery => 'Discovery',
    dms => 'DMS',
    ds => 'DS',
    dynamodbstreams => 'DynamoDBStreams',
   'ecr-public' => 'ECRPublic',
   'ec2-instance-connect' => 'EC2InstanceConnect',
    elasticbeanstalk => 'ElasticBeanstalk',
    # The service code is "elasticfilesystem"
    elasticfilesystem => 'EFS',
    elasticloadbalancing => 'ELB',
    elasticmapreduce => 'EMR',
    elastictranscoder => 'ElasticTranscoder',
    elb => 'ELB',
    elbv2 => 'ELBv2',
    email => 'SES',
   'emr-containers' => 'EMRContainers',
    es => 'ES',
    events => 'CloudWatchEvents',
   'finspace-data' => 'FinspaceData',
    fis => 'FIS',
    forecast => 'Forecast',
    forecastquery => 'ForecastQuery',
    fsx => 'FSX',
    globalaccelerator => 'GlobalAccelerator',
    identitystore => 'SSOIdentityStore',
    imagebuilder => 'ImageBuilder',
    ivs => 'IVS',
   'iot-data' => 'IoTData',
   'iot-jobs-data' => 'IoTJobsData',
   'iot1click-devices' => 'IoT1ClickDevices',
   'iot1click-projects' => 'IoT1ClickProjects',
    iotdeviceadvisor => 'IoTDeviceAdvisor',
    iotevents => 'IoTEvents',
   'iotevents-data' => 'IoTEventsData',
    kendra => 'Kendra',
   'kinesis-video-archived-media' => 'KinesisVideoArchivedMedia',
   'kinesis-video-media' => 'KinesisVideoMedia',
    kinesisanalytics => 'KinesisAnalytics',
    kinesisanalyticsv2 => 'KinesisAnalyticsV2',
    kinesisvideo => 'KinesisVideo',
   'lex-models' => 'LexModels',
   'lex-runtime' => 'LexRuntime',
   'license-manager' => 'LicenseManager',
    location => 'LocationService',
    logs => 'CloudWatchLogs',
    machinelearning => 'MachineLearning',
   'marketplace-catalog' => 'MarketplaceCatalog',
   'marketplace-entitlement' => 'MarketplaceEntitlement',
    marketplacecommerceanalytics => 'MarketplaceCommerceAnalytics',
   'mediapackage-vod' => 'MediaPackageVod',
   'mediastore-data' => 'MediaStoreData',
    meteringmarketplace => 'MarketplaceMetering',
    mgh => 'MigrationHub',
    mgn => 'ApplicationMigration', 
    mobile => 'MobileHub',
    monitoring => 'CloudWatch',
    mq => 'MQ',
    nimble => 'NimbleStudio',
   'personalize-events' => 'PersonalizeEvents',
   'personalize-runtime' => 'PersonalizeRuntime',
    pi => 'PerformanceInsights',
   'pinpoint-email' => 'PinpointEmail',
   'pinpoint-sms-voice' => 'PinpointSMSVoice',
   'qldb-session' => 'QLDBSession',
    quicksight => 'Quicksight',
   'rds-data' => 'RDSData',
    redshift => 'RedShift',
   'resource-groups' => 'ResourceGroups',
    resourcegroupstaggingapi => 'ResourceTagging',
    robomaker => 'Robomaker',
    route53 => 'Route53',
    route53domains => 'Route53Domains',
    s3control => 'S3Control',
   'sagemaker-edge' => 'SageMakerEdge',
   'sagemaker-runtime' => 'SageMakerRuntime',
    savingsplans => 'SavingsPlans',
    sdb => 'SDB',
    schemas => 'Schemas',
    secretsmanager => 'SecretsManager',
    serverlessrepo => 'ServerlessRepo',
   'service-quotas' => 'ServiceQuotas',
    servicecatalog => 'ServiceCatalog',
    signer => 'Signer',
    signin => 'Signin',
    simpledb => 'SimpleDB',
   'sms-voice' => 'PinpointSMSVoice',
   'sso-oidc' => 'SSOOidc',
    stepfunctions => 'StepFunctions',
    storagegateway => 'StorageGateway',
    swf => 'SimpleWorkflow',
   'waf-regional' => 'WAFRegional',
  } });

  has servicefile_to_builder_overrides => (is => 'ro', default => sub { {
   'ec2'        => 'EC2',
   'kinesis'    => 'Kinesis',
   'lexv2-runtime' => 'LexRuntimeV2',
  } });

  sub get_builder_for {
    my ($self, $service_id) = @_;

    my $service = $self->boto_file_information->{ $service_id };
    die "Can't find a builder for $service_id" if (not defined $service);

    my $struct = decode_json(read_binary($service->{ file }));
    my $type = $struct->{metadata}->{protocol} or die "Type of API call not found";
    # we used to be able to use the protocol property as the key to template dirs.
    # now it needs some fixing up
    $type = 'restjson' if ($type eq 'rest-json');
    $type = 'restxml' if ($type eq 'rest-xml');
    $type = 'EC2' if ($type eq 'ec2');
  
    my $class_maker = "Paws::API::Builder::$service->{ builder }";
    require_module $class_maker;
  
    my $builder = $class_maker->new(
      api_file => $service->{ file },
      api_ns => $service->{ api_ns },
      template_path => [ getcwd() . "/templates/${type}",
                         getcwd() . '/templates/default',
                       ]
    );
    return $builder;
  }

}
1;
