package Paws::API::Builder {
  use Moose;

  use Data::Compare;
  use Data::Dumper;
  use Data::Printer;
  use Template;
  use Path::Class;
  use JSON::MaybeXS;
  use Scalar::Util;
  use Mojo::UserAgent;
  use Pod::Escapes();
  use Text::Wrap;
  use Data::Munge;
  use Perl::Tidy;

  use v5.10;

  use Paws::API::RegionBuilder;

  has api => (is => 'ro', required => 1, lazy => 1, default => sub {
    my $self = shift;
    return sprintf 'Paws::%s', $self->api_ns;
  });

  sub service_name {
    my $self = shift;
    $self->api_ns;
  }

  has service_full_name => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}->{ serviceFullName } });
  has service => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}->{ endpointPrefix } });
  has signing_name => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}->{ signingName } // $_[0]->api_struct->{metadata}->{ endpointPrefix } });
  has version => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}->{ apiVersion } });
  has endpoint_role => (is => 'ro', lazy => 1, default => 'Paws::API::EndpointResolver' );

  has api_file => (is => 'ro', required => 1);
  has api_file_service => (is => 'ro', isa => 'Str', lazy => 1, default => sub {
    my $self = shift;
    my ($service) = ($self->api_file =~ m/data\/(.*?)\/.*?\/service-2.json/);
    return $service;
  });

  has api_ns => (is => 'ro', required => 1);
  has template_path => (is => 'ro', required => 1);

  has service_url_overrides => (is => 'ro', isa => 'HashRef', default => sub { {
    mq => 'https://docs.aws.amazon.com/amazon-mq/',
    email => 'https://docs.aws.amazon.com/ses/',
    es => 'https://docs.aws.amazon.com/elasticsearch-service/',
    support => 'https://docs.aws.amazon.com/aws-support/',
    sts => 'https://docs.aws.amazon.com/iam/',
    states => 'https://docs.aws.amazon.com/step-functions/',
   'opsworks-cm' => 'https://docs.aws.amazon.com/opsworks/',
    monitoring => 'https://docs.aws.amazon.com/cloudwatch/',
    events => 'https://docs.aws.amazon.com/cloudwatch/',
    logs => 'https://docs.aws.amazon.com/cloudwatch/',
   'cognito-identity' => 'https://docs.aws.amazon.com/cognito/',
   'cognito-idp' => 'https://docs.aws.amazon.com/cognito/',
   'cognito-sync' => 'https://docs.aws.amazon.com/cognito/',
   'api.pricing' => 'https://docs.aws.amazon.com/account-billing/',
    ce => 'https://docs.aws.amazon.com/account-billing/',
    budgets => 'https://docs.aws.amazon.com/account-billing/',
    greengrass => 'https://docs.aws.amazon.com/greengrass/',
    glacier => 'https://docs.aws.amazon.com/glacier/',
    apigateway => 'https://docs.aws.amazon.com/apigateway/',
   'streams.dynamodb' => 'https://docs.aws.amazon.com/dynamodb/',
    lex => 'https://docs.aws.amazon.com/lex/',
   'models.lex' => 'https://docs.aws.amazon.com/lex/',
   'entitlement.marketplace' => 'https://docs.aws.amazon.com/marketplaceentitlement/latest/APIReference/Welcome.html',
    marketplacecommerceanalytics => 'https://docs.aws.amazon.com/marketplace/latest/userguide/commerce-analytics-service.html',
   'data.mediastore' => 'https://docs.aws.amazon.com/mediastore/',
   'metering.marketplace' => 'https://docs.aws.amazon.com/marketplacemetering/latest/APIReference/Welcome.html',
    mgh => 'https://docs.aws.amazon.com/migrationhub/',
    mobile => 'https://docs.aws.amazon.com/mobile-hub/',
   'mturk-requester' => 'https://docs.aws.amazon.com/mturk/',
    tagging => 'https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html',
    sdb => 'https://docs.aws.amazon.com/simpledb/',
    clouddirectory => 'https://docs.aws.amazon.com/directory-service/',
    cloudsearchdomain => 'https://docs.aws.amazon.com/cloudsearch/',
    'data.iot' => 'https://docs.aws.amazon.com/iot/',
    'data.jobs.iot' => 'https://docs.aws.amazon.com/iot/',
    cur => 'https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-reports-costusage.html',
  } });

  has operation_url_overrides => (is => 'ro', isa => 'HashRef', default => sub { {
   'opsworks-cm' => 'https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_',
  } });

  sub is_url_working {
    my ($self, $url) = @_;
    my $ua = Mojo::UserAgent->new;
    my $res = $ua->head($url)->result;
    if ($res->is_success) {
      return 1;
    } else {
      return 0;
    }
  }

  sub is_url_not_base_redirect {
    my ($self, $url) = @_;
    my $ua = Mojo::UserAgent->new;
    my $res = $ua->max_redirects(5)->head($url)->req->url->to_string;
    if ($res ne 'https://aws.amazon.com/documentation/' or $res ne 'https://docs.aws.amazon.com/index.html') {
      return 1;
    } else {
      return 0;
    }
  }

  has service_url => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    if (defined $self->documentation_struct->{ api_url }){
      return $self->documentation_struct->{ api_url };
    } else {
      return 'https://aws.amazon.com/documentation/';
    }
  });

  has operation_urls => (is => 'ro', isa => 'HashRef[Str]', lazy => 1, default => sub {
    my $self = shift;
    $self->documentation_struct->{ methods };
  });

  has api_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->api_file);
  });

  has retry_file => (is => 'ro', lazy => 1, default => sub {
    my $file = shift->api_file;
    $file =~ s|/[^/]*?/[^/]*?/service-2\.|/_retry.|;
    return $file;
  });
  has retry_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->retry_file)->{ retry };
  });
  has default_retry => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    $self->retry_struct->{ __default__ };
  });
  has retry => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    $self->retry_struct->{ $self->service }->{ __default__ };
  });
  has service_max_attempts => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return (defined $self->retry and defined $self->retry->{ max_attempts }) ? $self->retry->{ max_attempts } : $self->default_retry->{ max_attempts };
  });
  has service_retry => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return (defined $self->retry and defined $self->retry->{ delay }) ? $self->retry->{ delay } : $self->default_retry->{ delay };
  });


  has waiters_file => (is => 'ro', lazy => 1, default => sub {
    my $file = shift->api_file;
    $file =~ s/\/service-2\./\/waiters-2./;
    return $file;
  });

  has waiters_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->waiters_file);
  });

  has paginators_file => (is => 'ro', lazy => 1, default => sub {
    my $file = shift->api_file;
    $file =~ s/\/service-2\./\/paginators-1./;
    return $file;
  });

  has paginators_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->paginators_file)->{ pagination };
  });

  has encoders_file => (is => 'ro', lazy => 1, default => sub {
    my $file = shift->api_file;
    $file =~ s/\/service-2\./\/encoders-1./;
    return $file;
  });

  has encoders_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->encoders_file)->{ encoding };
  });

  has example_file => (is => 'ro', lazy => 1, default => sub {
    my $file = shift->api_file;
    $file =~ s/\/service-2\./\/examples-1./;
    return $file;
  });

  has example_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->example_file)->{ examples };
  });

  has documentation_file => (is => 'ro', lazy => 1, default => sub {
    my $file = shift->api_file;
    $file =~ s/\/service-2\./\/documentation-1./;
    return Path::Class::File->new($file);
  });

  has documentation_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    if (not -e $self->documentation_file) {
      die "documentation-1.json missing for the service, run 'make docu-links'.";
    }
    return $self->_load_json_file($self->documentation_file)->{ documentation };
  });

  sub write_documentation_file {
    my ($self) = @_;
    my $json = JSON::MaybeXS->new(utf8 => 1, pretty => 1, canonical => 1);
    $self->documentation_file->spew($json->encode(
      {
        documentation => {
          api_url => $self->_get_service_url,
          methods => $self->_get_method_urls,
        }
      }
    ));
  }

  sub get_paginator_name {
    my ($self,$name) = @_;
    return $name if ($name =~ s/^Describe/DescribeAll/);
    return $name if ($name =~ s/^List/ListAll/);
    return $name if ($name =~ s/^Query/QueryAll/);
    return $name if ($name =~ s/^Get/GetAll/);
    return $name if ($name =~ s/^Search/SearchAll/);
    return 'BatchGetAllTraces' if ($name eq 'BatchGetTraces');
    return 'DownloadAllDBLogFilePortions' if ($name eq 'DownloadDBLogFilePortion');
    return 'FilterAllLogEvents' if ($name eq 'FilterLogEvents');
    return 'LookupAllEvents' if ($name eq 'LookupEvents');
    return 'LookupAllPolicies' if ($name eq 'LookupPolicy');
    return 'ScanAll' if ($name eq 'Scan');
    return 'SelectAll' if ($name eq 'Select');
    return 'SimulateAllCustomPolicies' if ($name eq 'SimulateCustomPolicy');
    return 'SimulateAllPrincipalPolicies' if ($name eq 'SimulatePrincipalPolicy');
    return 'PollForAllDecisionTasks' if ($name eq 'PollForDecisionTask');
    return 'PreviewAllAgents' if ($name eq 'PreviewAgents');
    return 'AdminListAllGroupsForUser' if ($name eq 'AdminListGroupsForUser');
    return 'AdminListAllUserAuthEvents' if ($name eq 'AdminListUserAuthEvents');
    return 'ViewAllBilling' if ($name eq 'ViewBilling');
    return 'ScanAllProvisionedProducts' if ($name eq 'ScanProvisionedProducts');
    return 'ValidateAllPolicies' if ($name eq 'ValidatePolicy');
    return 'SelectAllAggregateResourceConfig' if ($name eq 'SelectAggregateResourceConfig');
    return 'SelectAllResourceConfig' if ($name eq 'SelectResourceConfig');

    die "Please help me generate a good name for the paginator $name";
  }

  has inner_classes => (is => 'rw', isa => 'HashRef', default => sub { {} });
  has enums => (is => 'rw', isa => 'HashRef', default => sub { {} });

  has signature_role => (
    is => 'ro',
    lazy => 1,
    default => sub {
      sprintf "Paws::Net::%sSignature", uc $_[0]->api_struct->{metadata}{signatureVersion}
    }
  );

  has parameter_role => (
    is => 'ro',
    lazy => 1,
    default => sub {
      my $type = $_[0]->api_struct->{metadata}->{protocol};
      substr($type,0,1) = uc substr($type,0,1);
      return "Paws::Net::${type}Caller"
    },
  );

  has endpoints_file => (is => 'ro', isa => 'Str', default => sub {
    'botocore/botocore/data/_endpoints.json';
  });

  has service_endpoint_rules => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    my $s = Paws::API::RegionBuilder->new(
      rules    => $self->endpoints_file,
      service  => $self->service,
    );
    $s->region_accessor;
  });

  has operations_struct => (
    is => 'ro',
    lazy => 1,
    default => sub { $_[0]->api_struct->{operations} },
    isa => 'HashRef',
    traits => [ 'Hash' ],
    handles => {
      operations => 'keys',
      operation  => 'get',
      has_operation => 'exists',
    },
  );

  has shape_struct => (
    is => 'ro',
    lazy => 1,
    default => sub {
      my $self = shift;
      my $shapes = $self->api_struct->{shapes};
      return $shapes;
    },
    isa => 'HashRef',
    traits => [ 'Hash' ],
    handles => {
      shape  => 'get',
      set_shape => 'set',
      has_shape => 'exists',
      shapes => 'keys',
    },
  );

  has _input_shapes => (
    is => 'ro',
    isa => 'HashRef',
    lazy => 1,
    default => sub {
      my $self = shift;
      my $ret = {};
      foreach my $op ($self->operations) {
        my $operation = $self->operation($op);
        my $input = $operation->{ input };
        my $sh_name = $input->{ shape };
        if (defined $sh_name){
          my $shape = $self->shape($sh_name);
          $shape = $self->capitalize_shape($shape);
          foreach my $i_key (keys %$input) {
            next if $i_key eq 'shape';
            warn "INPUT shape $sh_name already has a key $i_key"
              if (exists $shape->{ $i_key });
            $shape->{ $i_key } = $input->{ $i_key };
          }
          $ret->{ $sh_name } = $shape
        }
      }
      return $ret;
    },
    traits => [ 'Hash' ],
    handles => {
      input_shape => 'get',
      input_shapes => 'keys',
      is_input_shape => 'exists',
    }
  );

  has _output_shapes => (
    is => 'ro',
    isa => 'HashRef',
    lazy => 1,
    default => sub {
      my $self = shift;
      my $ret = {};
      foreach my $op ($self->operations) {
        my $operation = $self->operation($op);
        my $sh_name = $operation->{ output }->{ shape };
        if (defined $sh_name){
          my $shape = $self->shape($sh_name);
          $shape = $self->capitalize_shape($shape);
          $ret->{ $sh_name } = $shape
        }
      }
      return $ret;
    },
    traits => [ 'Hash' ],
    handles => {
      output_shape => 'get',
      output_shapes => 'keys',
      is_output_shape => 'exists',
    }
  );

  has _exception_shapes => (
    is => 'ro',
    isa => 'HashRef',
    lazy => 1,
    builder => 'build_exception_shapes',
    traits => [ 'Hash' ],
    handles => {
      exception_shape => 'get',
      exception_shapes => 'keys',
      is_exception_shape => 'exists',
    }
  );

  sub build_exception_shapes {
    my $self = shift;
    my $ret = {};
    foreach my $shape_name ($self->shapes) {
      my $shape = $self->shape($shape_name);
      $ret->{ $shape_name } = $shape if (defined $shape->{ exception });
    }
    return $ret;
  }

  sub capitalize {
    my ($self, $shape) = @_;
    substr($shape,0,1) = uc(substr($shape,0,1));
    return $shape;
  }

  sub capitalize_shape {
    my ($self, $shape) = @_;

    if ($shape->{ type } eq 'structure'){
      foreach my $member (keys %{ $shape->{ members } }){
        next if ($member =~ m/^[A-Z]/); # if we already start with capital, don't touch
        my $s = delete $shape->{ members }->{ $member };
        $s->{ locationName } = $member if (not defined $s->{ locationName });
        $shape->{ members }->{ $self->capitalize($member) } = $s;
      }
      $shape->{ required } = [ map { $self->capitalize($_) } @{ $shape->{ required } } ];
    }

    return $shape;
  };

  has _inner_shapes => (
    is => 'ro',
    lazy => 1,
    isa => 'HashRef',
    default => sub {
      my $self = shift;
      my $ret = {};
      foreach my $shape_name ($self->shapes) {
        my $shape = $self->shape($shape_name);

        $self->capitalize_shape($shape);

        $ret->{ $shape_name } = $shape if (( $shape->{type} eq 'structure' or $shape->{type} eq 'map')
                                           and not $self->is_exception_shape($shape_name)
                                           and not $self->is_output_shape($shape_name)
                                           and not $self->is_input_shape($shape_name)
                                          );
	# Hack: it results that RedShift uses the ResizeClusterMessage as an internal object and as the input shape
	# for the ResizeCluster call, so due to the "not is_input_shape", the ResizeClusterMessage object was not being
	# generated. To not overcomplicate the condition on top, I've made and exception for this shape to get into
	# the _inner_shapes attribute
	$ret->{ $shape_name } = $shape if ($self->api eq 'Paws::RedShift' and $shape_name eq 'ResizeClusterMessage');
      }
      return $ret;
    },
    traits => [ 'Hash' ],
    handles => {
      inner_shape => 'get',
      inner_shapes => 'keys',
      is_inner_shape => 'exists',
    }
  );

  has flattened_arrays => (is => 'rw', isa => 'Bool', default => sub { 0 });

  sub _load_json_file {
    my ($self, $file) = @_;
    return {} if (not -e $file);
    my $f = Path::Class::File->new($file);
    return decode_json($f->slurp);
  }

  sub required_in_shape {
    my ($self, $shape, $attribute) = @_;
    return (1 == (grep { $_ eq $attribute } @{ $shape->{ required } }));
  }

  sub optional_params_in_shape {
    my ($self, $shape) = @_;
    return [] if (not $shape);
    my $req = $shape->{ required } || [];
    my %required = map { ($_ => 1) } @$req;
    return [ grep { not defined $required{ $_ } } keys %{ $shape->{ members } } ];
  }

  sub shapename_for_operation_output {
    my ($self, $operation) = @_;

    my $op = $self->operation($operation);
    return if (not $op);

    my $shape = $op->{ output }->{ shape };
    return $shape;
  }

  sub result_for_operation {
    my ($self, $operation) = @_;

    my $shape = $self->shapename_for_operation_output($operation);
    return if (not $shape);

    return $self->output_shape($shape);
  }

  sub shapename_for_operation_input {
    my ($self, $operation) = @_;

    my $op = $self->operation($operation);
    return if (not $op);

    my $shape = $op->{ input }->{ shape };
    return $shape;
  }

  sub input_for_operation {
    my ($self, $operation) = @_;

    my $shape = $self->shapename_for_operation_input($operation);
    return if (not $shape);

    return $self->input_shape($shape);
  }

  use autodie;
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

  sub register_enum {
    my ($self, $enum_class, $definition) = @_;
    die "Already an Inner Class" if ($self->inner_classes->{ $enum_class });
    if (    defined $self->enums->{ $enum_class }
        and not $self->enums_equal($self->enums->{ $enum_class }, $definition)
       ){
      die "Unequal defs";
    } else {
      $self->enums->{ $enum_class } = $definition;
    }
  }

  sub register_inner_class {
    my ($self, $class_name, $definition) = @_;
    die "Already an Enum" if ($self->enums->{ $class_name });
    if (defined $self->shape($class_name) and not $self->definitions_equal($self->shape($class_name), $definition)){
      print "---- Registered Definition ----\n";
      my $temp = [ sort keys %{ $self->shape($class_name)->{members} } ];
      p $temp;
      print "---- New Definition ------\n";
      $temp = [ sort keys %{ $definition->{members} } ];
      p $temp;
      die "$class_name tried to register but was already registered";
    } else {
      $self->set_shape($class_name, $definition);
    }
  }

  sub enums_equal {
    my ($self, $left, $right) = @_;
    return Compare(
      $left, $right
    );
  }

  sub definitions_equal {
    my ($self, $left, $right) = @_;
    return Compare(
      [ sort keys %{ $left->{members} } ],
      [ sort keys %{ $right->{members} } ]
    );
  }

  use Carp;

  sub get_caller_class_type {
    my ($self, $for_shape) = @_;
    my $param_props = $self->shape($for_shape);

    my $type;
    if (not exists $param_props->{ type }) {
      confess "Shape $for_shape doesn't have a type entry in def " . Dumper($param_props);
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'list') {
      $self->flattened_arrays(1) if ($param_props->{ flattened });
      die "Invalid list type: " . Dumper($param_props) if (not defined $param_props->{member}->{shape});
      my $inner_type = $self->get_caller_class_type($param_props->{member}->{shape});
      $inner_type = 'Str|Undef' if ($inner_type eq 'Str');
      $type = "ArrayRef[$inner_type]";
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'timestamp') {
      # TODO: Paws::API::TimeStamp
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'long') {
      #TODO: Check
      $type = 'Int';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'double') {
      #TODO: Check
      $type = 'Num';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'float') {
      #TODO: Check
      $type = 'Num';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'boolean') {
      # TODO: Bool
      $type = 'Bool';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'integer') {
      $type = 'Int';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'string') {
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'blob') {
      # TODO: check
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'map') {
      $type = $self->namespace_shape($for_shape);
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'structure') {
      $type = $self->namespace_shape($for_shape);
    }
    if (not defined $type) {
      p $param_props;
      die "Unknown type: $for_shape $param_props->{ type }";
    }
    return $type;
  }

  sub generate_example_code {
    my ($self, $op_name) = @_;

    my $out_shape = $self->shapename_for_operation_output($op_name);
    my $inputs = $self->input_for_operation($op_name);

    my $example_str = '';
    if ($out_shape) {
      $example_str .= "my \$${out_shape} = ";
    }
    $example_str .= "\$" . $self->service . "->" . $op_name . "(";

    my @args = ();
    my $shape_cache = {};
    foreach my $input ( sort { $a cmp $b } (@{ $inputs->{ required } || [] }) ) {
      push @args, "$input => " . ( $self->get_example_code( $inputs->{ members }{ $input }{ shape }, $shape_cache ) )[0];
    }
    $example_str .= join(",\n", @args);
    $example_str .= ",\n" if @args;
    @args = ();
    foreach my $input ( sort { $a cmp $b } (@{ $self->optional_params_in_shape( $inputs ) } ) ) {
      push @args, "$input => " . ( $self->get_example_code( $inputs->{ members }{ $input }{ shape }, $shape_cache ) )[0] . ', # OPTIONAL';
    }
    $example_str .= join("\n", @args);
    $example_str .= "\n);";

    if ($out_shape) {
      $example_str .= $self->example_results($out_shape);
    }

    return $self->perltidy_source( $example_str );
  }

  sub get_example_code {
    my ($self, $shape_name, $cache, $depth, $optional) = @_;
    $depth ||= 0;
    $cache ||= {};

    # Recursion exit - AttributeValue contains itself, so stop after 1
    return @{ $cache->{ $shape_name } } if exists $cache->{ $shape_name };
    $cache->{ $shape_name } = ["<$shape_name>",''];

    my $shape = $self->shape($shape_name);

    # Saftey net
    return "<$shape_name>" if $depth >= 20;

    my %simple_defaults = (
      timestamp => qq{'1970-01-01T01:00:00'},
      string    => qq{'My%s'},
      double    => '1',
      float     => '1.0',
      long      => '1',
      integer   => '1',
      boolean   => '1',
      blob      => qq{'Blob%s'},
    );

    my $example_str = '';
    my $comment_str = '';

    if (exists( $simple_defaults{ $shape->{ type } } ) ) {
      {
        # sprintfs without %s are warning about extra arguments. Most simple_defaults
        # don't have a %s in them
        no warnings;
        $example_str = sprintf($simple_defaults{ $shape->{ type } }, $shape_name);
      }
      if ($shape->{ enum }) {
        $comment_str .= 'values: ' . join(', ', @{ $shape->{ enum } });
        $example_str = qq{'} . $shape->{ enum }[0] . qq{'};
      } else {
        {
          no warnings;
          $example_str = sprintf($simple_defaults{ $shape->{ type } }, $shape_name);
        }
      }
    } elsif ($shape->{ type } eq 'list' ) {
        my ($inner_example_code, $comment) = $self->get_example_code($shape->{ member }->{ shape }, $cache, $depth+1);
        $example_str = "[\n${inner_example_code}, ... ";
        $example_str .= "# ${comment}" if ($comment);
        $example_str .= "\n]";
    }
    elsif ($shape->{ type } eq 'structure') {
      # Required items first:
      my %struct = ( map { my $sub_shape = $shape->{ members }{$_}{ shape };
                           $_ => [ $self->get_example_code($sub_shape, $cache, $depth+1)] } 
                     (@{ $shape->{ required } }) );

      my $req_struct_str = join("\n", map { "$_  => $struct{$_}[0], " . ($struct{$_}[1] ? "# $struct{$_}[1]" : "") } (sort keys %struct));


      # Followed by optional:
      %struct = ( map { my $sub_shape = $shape->{ members }{$_}{ shape };
                           $_ => [ $self->get_example_code( $sub_shape, $cache, $depth+1, 1 ) ] } 
                     (@{ $self->optional_params_in_shape( $shape, $cache )} ) );
      my $opt_struct_str = join("\n", map { "$_   => $struct{$_}[0], " . ($struct{$_}[1] ? "# $struct{$_}[1]" : "") } (sort keys %struct));


      $example_str = "{\n" 
        . ($req_struct_str ? $req_struct_str . " \n": '')
        .  $opt_struct_str ."\n}";
    }
    elsif ($shape->{ type } eq 'map') {
      my ($key_code, $key_comment) = $self->get_example_code($shape->{ key }{ shape }, $cache, $depth+1 );
      my ($value_code, $value_comment) = $self->get_example_code($shape->{ value }{ shape }, $cache, $depth+1 );

      my $struct_str = "$key_code => $value_code,";
      $struct_str .= " # key: $key_comment" if ($key_comment);
      $struct_str .= " # " if (!$key_comment && $value_comment);
      $struct_str .= ", value: $value_comment" if ($value_comment);

      $example_str = "{\n${struct_str}\n}";
    }

    if (exists $shape->{ max } || exists $shape->{ min } ) {
      if( $shape->{ min } ) {
        $comment_str .= 'min: '. $shape->{ min };
      }
      if ($shape->{ min } and $shape->{ max }) {
        $comment_str .= ', ';
      }
      if( $shape->{ max } ) {
        $comment_str .= 'max: '. $shape->{ max };
      }
    }

    if ($optional) {
      $comment_str .= ($comment_str ? '; ' : '') . 'OPTIONAL';
    }

    # Extra comma if this is a top level response:
    if ($depth == 0) {
      $example_str =~ s/,$//;
    }

    my $tidied_example = $self->perltidy_source($example_str);

    $cache->{ $shape_name } = [ $tidied_example, $comment_str ];
    return ($tidied_example, $comment_str);
  }

  sub create_example_from_file {
    my ($self, $op_name) = @_;

    my $out_shape_name = $self->shapename_for_operation_output($op_name);
    my $out_shape = '';
    if ($out_shape_name) {
      $out_shape = $self->shape($out_shape_name);
    }
    my $example_str = '';
    foreach my $ex (@{ $self->example_struct->{ $op_name } }) {
      $example_str .= "# $ex->{title}\n";
      if ($ex->{ description }) {
        local $Text::Wrap::coloumns = 79;
        local $Text::Wrap::separator = "\n# ";
        $example_str .= '# ' . Text::Wrap::wrap('','',$ex->{ description }) . "\n";
      }
      if ($out_shape) {
        $example_str .= "my \$${out_shape_name} = ";
      }
      $example_str .= "\$" . $self->service . "->" . $op_name . "(";
      $example_str .= $self->dump_perl($ex->{ input }, 1) if $ex->{ input } && %{ $ex->{ input } };
      $example_str .= "\n);\n\n";

      if ($out_shape && %{ $ex->{ output } || {} }) {
        $example_str .= "# Results:\n";
        $example_str .= "my \$$_ = \$${out_shape_name}->$_;\n" for sort keys( %{$ex->{ output }});
        $example_str .= "\n# Returns a L<" . $self->api . "::$out_shape_name> object.\n";
      }
    }

    my $tidied_example = $self->perltidy_source($example_str);

    return $tidied_example;
  }

  sub example_results {
    my ($self, $out_shape_name) = @_;

    my $example_str = '';
    my $out_shape = $self->shape($out_shape_name);
    return '' if !%{ $out_shape->{members} };
    $example_str .= "\n\n# Results:\n";
    $example_str .= "my \$$_ = \$$out_shape_name->$_;\n"
      for (sort keys %{ $out_shape->{members} });
    $example_str .= "\n# Returns a L<" . $self->api . "::$out_shape_name> object.\n";
    return $example_str;
  }

  sub dump_perl {
    my ($self, $val, $depth, %args) = @_;

    if (!ref $val) {
      return $val
        if (Scalar::Util::looks_like_number($val));

      my $quote_key = qq{'};
      return $quote_key . ($args{is_key} ? ucfirst($val) : $val ) . $quote_key

    } elsif ( ref ($val) =~ /Boolean/) {
      return "$val";
    } elsif (ref $val eq 'ARRAY') {
      return "\n[\n"
        . join(",\n", (map { $self->dump_perl($_, $depth+1, %args) } (@$val) ))
        . "\n]";
    } elsif( ref $val eq 'HASH' ) {
      return
        (($depth == 1) ? "\n" : "\n{\n")
        . join(",\n", (map { $self->dump_perl($_, $depth+1, %args, is_key => 1)
                             . ' => '
                             . $self->dump_perl($val->{$_}, $depth+1, %args, no_quote => 1) }
                                 (sort keys %$val) ))
        . (($depth == 1) ? "" : "\n}");
    } else {
      die "Tried to dump something strange when creating an example: $val ", ref $val;
    }
  }

  sub perltidy_source {
    my ($self, $source) = @_;
    my $tidied_source = '';
    my $tidy_error = '';

    my $error_flag = Perl::Tidy::perltidy(
      source => \$source,
      destination => \$tidied_source,
      errorfile => \$tidy_error,
      argv => [],
    );
    chomp($tidied_source);

    return $tidied_source;
  }

  sub namespace_shape {
    my ($self, $shape) = @_;
    substr($shape,0,1) = uc(substr($shape,0,1));
    return $self->api . '::' . $shape;
  }

  sub escape_pod {
    my ($string) = @_;
    my %char2names = reverse %Pod::Escapes::Name2character;
    my $rekeys = list2re(keys %char2names);
    $string =~ s/($rekeys)/E<$char2names{$1}>/g;
    return $string;
  }

  sub process_template {
    my ($self, $template, $vars) = @_;
    my $tt = Template->new(INCLUDE_PATH => $self->template_path,
        FILTERS => { escape_pod => \&escape_pod });
    my $output = '';
    $tt->process($template, $vars, \$output) || die $tt->error();
    return $output;
  }

  sub _get_service_url {
    my $self = shift;
    my $override = $self->service_url_overrides->{ $self->service };
    if (defined $override) {
      if ($self->is_url_working($override)) {
        return $override;
      } else {
        die "Looks like documentation for " . $self->service . " has disappeared: $override";
      }
    }

    my $goto_url = 'https://docs.aws.amazon.com/goto/WebAPI/';
    my $goto_service_url = $goto_url . $self->service . '-' . $self->version;
    if ($self->is_url_not_base_redirect($goto_service_url)) {
      return $goto_service_url;
    }

    my $service_url = 'https://aws.amazon.com/documentation/' . $self->service;
    if ($self->is_url_working($service_url)) {
      return $service_url;
    }

    return undef;
  }

  use Future::Utils qw(fmap_scalar);
  use Mojo::Promise::Role::Futurify;
  sub _get_method_urls {
    my $self = shift;
    my $ua = Mojo::UserAgent->new;

    my $override = $self->operation_url_overrides->{ $self->service };
    my $goto_url = 'https://docs.aws.amazon.com/goto/WebAPI/';
    my $urls = {};
    my @op_urls = $self->operations;

    my @results = fmap_scalar {
      my $op_name = shift;
      my $op_url = defined($override)
        ? $override . $op_name . '.html'
        : $goto_url . $self->service . '/' . $op_name;
      $ua->max_redirects(5)->head_p( $op_url )->then(sub {
        my $res = shift;
        if ($res->req->url->to_string ne 'https://aws.amazon.com/documentation/') {
          $urls->{ $op_name } = $op_url;
        }
      })->with_roles('+Futurify')->futurify
    } foreach => \@op_urls, concurrent => 10;

    Future->wait_all(@results)->get;
    return $urls;
  }

  sub operation_aws_url {
    my ($self, $op_name) = @_;
    return $self->operation_urls->{ $op_name } // $self->service_url;
  };

  sub process_api {
    my $self = shift;
    my $output = '';
    my ($calls, $results);
    $self->validate_shapes;

    # These methods mutate things in the "operations" attribute (they capitalize shapes)
    # Right now, documentation generation is reading from ->operations. We want these
    # to do their stuff before documentation generation kicks in.
    $self->_input_shapes;
    $self->_output_shapes;
    $self->_inner_shapes;

    foreach my $shape_name ($self->shapes) {
      $self->shape($shape_name)->{ perl_type } = $self->get_caller_class_type($shape_name);
      $self->shape($shape_name)->{ example_code } = ( $self->get_example_code($shape_name) )[0];
    }

    my $shape_conflicts = 0;
    foreach my $op_name ($self->operations) {
      if ($self->is_inner_shape($op_name)) {
        warn "$op_name conflicts with a shape";
	$shape_conflicts = 1;
      }
    }

    die "Stopping generation due to conflicts between method names and shape names" if ($shape_conflicts);

    foreach my $op_name ($self->operations) {
      my $op_example = '';
      if ( -e $self->example_file ) {
        $op_example = $self->create_example_from_file( $op_name );
      }
      if(!$op_example) {
        $op_example = $self->generate_example_code( $op_name );
      }
      if (defined $self->operation($op_name)->{name}) {
        my $class_name = $self->namespace_shape($op_name);
        my $output = $self->process_template(
          'callargs_class.tt',
          { c => $self, op_name => $op_name, synopsis => $op_example  }
        );
        $self->save_class($class_name, $output);
      }
      if (defined $self->shapename_for_operation_output($op_name)) {
        my $class_name = $self->namespace_shape($self->shapename_for_operation_output($op_name));
        my $output = $self->process_template(
          'callresult_class.tt',
          { c => $self, op_name => $op_name }
        );
        $self->save_class($class_name, $output);
      }
    }

    foreach my $shape_name ($self->inner_shapes) {
      my $shape = $self->shape($shape_name);
      my $class_name = $self->namespace_shape($shape_name);
      my $output = $self->make_inner_class($shape, $class_name);
      $self->save_class($class_name, $output);
    }

    my $class_out = $self->process_template('service_class.tt', { c => $self });
    $self->save_class($self->api, $class_out);
  }

  sub validate_shapes {
    my $self = shift;
    foreach my $shape_name ($self->shapes) {
      my $shape = $self->shape($shape_name);
      next  unless(defined $shape->{ members });
      foreach my $member_name (keys %{ $shape->{members} }) {
        my $member = $shape->{members}->{$member_name};
        die "Shape '$shape_name' has a member '$member_name' with an undefined shape"
            unless(defined $member->{shape});
        die "Shape '$shape_name' has a member '$member_name' with an unrecognized shape: '$member->{shape}'"
            unless ($self->has_shape($member->{shape}));
        }
    }
  }

  sub perl_type_to_pod {
    my ($self, $type) = @_;
    if ($type =~ m/^(\w+Ref)\[(.+?)\]$/) {
      my ($param_type, $inner_type) = ($1, $2);
      return "$param_type\[L<$inner_type>\]" if ($type =~ m/\:\:/);
      return $type;
    } else {
      return "L<$type>" if ($type =~ m/\:\:/);
      return $type;
    }
  }

  sub doc_for_shape {
    my ($self, $shape) = @_;
    return if (not $shape);
    my $doc = $shape->{documentation};
    if (not $doc) {
      return '';
    }
    return $self->html_to_pod($doc);
  }

  sub doc_for_param_name_in_shape {
    my ($self, $shape, $param_name) = @_;
    my $doc = $shape->{members}->{$param_name}->{documentation};
    if (not $doc) {
      return '';
    }
    $doc =~ s/&amp;/\&/gsmix;
    $doc =~ s|(\(ampersand\))(\#)(\w+?;)|$1(hash)$3|gsmix;
    return $self->html_to_pod($doc);
  }

  sub doc_for_service {
    my ($self) = @_;
    if (not $self->api_struct->{documentation}) {
      return '';
    }
    return $self->html_to_pod($self->api_struct->{documentation});
  }
  sub doc_for_method {
    my ($self, $method) = @_;
    my $op = $self->operation($method);
    if (not $op->{ documentation }) {
      return '';
    }
    return $self->html_to_pod($op->{ documentation });
  }

  sub html_to_pod {
    my ($self, $html) = @_;
    use Pod::HTML2Pod;
    my $pod = Pod::HTML2Pod::convert(
      content => $html,
      a_name => 0,
      a_href => 1,
      debug => 0,
    );
    $pod =~ s/=pod//;
    $pod =~ s/=cut$//m;
    # Pod2Html leaves lines started with hashes at the end of the pod:
    # #Pod::HTML2Pod conversion notes:
    # # xx bytes of input
    # #Fri Dec  2 17:33:47 2016 devel
    # # No a_name switch not specified, so will not try to render <a name='...'>
    # # No a_href switch not specified, so will not try to render <a href='...'>
    # We want to strip that out
    $pod =~ s/^#.*$//mg;
    $pod =~ s/^(?:\s*\n)*//;
    $pod =~ s/(?:\s*\n)*$//;
    $pod .= "\n" if ($pod =~ m/=back$/);
    return $pod;
  }

  sub paginator_accessor {
    my ($self, $accessor, $wanted_prefix) = @_;

    my $prefix = '$' . ((defined $wanted_prefix) ? $wanted_prefix : 'result');
    if (ref($accessor) eq 'ARRAY'){
      warn "Complex accessor ", join ',', @$accessor;
    }

    if ($accessor =~ m/ /) {
      warn "Complex accessor $accessor";
    }
    if ($accessor eq 'NextMarker || Contents[-1].Key') {
      return '$result->NextMarker || ( (defined $result->Contents->[-1]) ? $result->Contents->[-1]->Key : undef )';
    }

    $accessor =~ s|\.|->|g;
    $accessor =~ s|(\w+)([.*?])|$1->$2|g;
    $accessor =~ s|(\w+)\[|$1\-\>\[|g;

    $accessor = "${prefix}->${accessor}";
    return $accessor;
  }
  sub paginator_result_key {
    my ($self, $paginator) = @_;
    if (ref($paginator->{ result_key }) eq 'ARRAY'){
      return $paginator->{ result_key };
    } else {
      return [ $paginator->{ result_key } ];
    }
  }
  sub paginator_pass_params {
    my ($self, $paginator, $res_name) = @_;
    if (ref($paginator->{ input_token }) eq 'ARRAY'){
      my $i = 0;
      return join ', ', map { "$_ => " . $self->paginator_accessor($paginator->{ output_token }->[ $i++ ], $res_name) } @{ $paginator->{ input_token } };
    } else {
      return "$paginator->{ input_token } => " . $self->paginator_accessor($paginator->{ output_token }, $res_name);
    }
  }

  sub to_payload_shape_name {
    my ($self, $shape_name) = @_;
    substr($shape_name,0,1) = uc(substr($shape_name,0,1));
    return $shape_name;
  }

  sub make_inner_class {
    my $self = shift;
    my $iclass = shift;
    my $inner_class = shift;

    return if (not defined $inner_class);

    my $output = '';
    if ($iclass->{type} eq 'map') {
      my $keys_shape = $self->shape($iclass->{key}->{shape});
      my $values_shape = $self->shape($iclass->{value}->{shape});
      if ($keys_shape->{enum}){
        # Some enums have names like SHA-1, SHA-256, etc that cannot be used as attributes in a Moose class. Sanitize them
        $keys_shape->{enum} = [ map { $_ =~ s/-//; $_ } @{ $keys_shape->{ enum } }  ];
        $self->process_template('map_enum.tt', { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'string') {
        $self->process_template('map_str_to_native.tt', { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => 'HashRef[Maybe[Str]]' });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'boolean') {
        $self->process_template('map_str_to_native.tt', { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => 'HashRef[Str]' });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'float') {
        $self->process_template('map_str_to_native.tt', { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => 'HashRef[Num]' });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'integer') {
        $self->process_template('map_str_to_native.tt', { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => 'HashRef[Int]' });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'double') {
        $self->process_template('map_str_to_native.tt', { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => 'HashRef[Num]' });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'list') {
        my $type = $self->get_caller_class_type($iclass->{value}->{shape});

        #Sometimes it's a list of objects, and sometimes it's a list of native things
        my $inner_shape = $self->shape($values_shape->{member}->{shape});

        if ($inner_shape->{type} eq 'structure'){
          $self->process_template('map_str_to_obj.tt', { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => "HashRef[$type]" });
        } else {
          if ($type =~ /::/) {
            $self->process_template('map_str_to_obj.tt', { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => "HashRef[$type]" });
          } else {
            $self->process_template('map_str_to_native.tt', { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => "HashRef[$type]" });
          }
        }
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'structure') {
        my $type = $self->get_caller_class_type($iclass->{value}->{shape});
        $self->process_template('map_str_to_obj.tt', { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => "HashRef[$type]" });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'map') {
        my $type = $self->get_caller_class_type($iclass->{value}->{shape});
        $self->process_template('map_str_to_obj.tt', { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => "HashRef[$type]" });
      } else {
        die "Unrecognized Map type in query API " . Dumper($iclass) . ' keys_shape ' . Dumper($keys_shape) . ' values_shape' . Dumper($values_shape);
      }
    } elsif ($iclass->{type} eq 'structure') {
      $self->process_template('object.tt', { c => $self, shape => $iclass, inner_class => $inner_class });
    }
  }
}

1;
