package Paws::API::Builder {
  use Moose;

  use Data::Compare;
  use Data::Dumper;
  use Data::Printer;
  use Template;
  use File::Slurper 'read_binary';
  use JSON::MaybeXS;
  use LWP::UserAgent;
  use v5.10;

  use Paws::API::RegionBuilder;

  has api => (is => 'ro', required => 1);

  sub service_name {
    my $self = shift;
    my $svc = $self->api;
    $svc =~ s/^.*\:\://;
    return $svc;
  }

  has service_full_name => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}->{ serviceFullName } });
  has service => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}->{ endpointPrefix } });
  has version => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}->{ apiVersion } });
  has endpoint_role => (is => 'ro', lazy => 1, default => 'Paws::API::EndpointResolver' );

  has api_file => (is => 'ro', required => 1);

  has template_path => (is => 'ro', required => 1);

  has service_url_overrides => (is => 'ro', isa => 'HashRef', default => sub { {
    mq => 'https://aws.amazon.com/documentation/amazon-mq/',
    email => 'https://aws.amazon.com/documentation/ses/',
    es => 'https://aws.amazon.com/documentation/elasticsearch-service/',
    support => 'https://aws.amazon.com/documentation/aws-support/',
    sts => 'https://aws.amazon.com/documentation/iam/',
    states => 'https://aws.amazon.com/documentation/step-functions/',
   'opsworks-cm' => 'https://aws.amazon.com/documentation/opsworks/',
    monitoring => 'https://aws.amazon.com/documentation/cloudwatch/',
    events => 'https://aws.amazon.com/documentation/cloudwatch/',
    logs => 'https://aws.amazon.com/documentation/cloudwatch/',
   'cognito-identity' => 'https://aws.amazon.com/documentation/cognito/',
   'cognito-idp' => 'https://aws.amazon.com/documentation/cognito/',
   'cognito-sync' => 'https://aws.amazon.com/documentation/cognito/',
   'api.pricing' => 'https://aws.amazon.com/documentation/account-billing/',
    ce => 'https://aws.amazon.com/documentation/asccount-billing/',
    budgets => 'https://aws.amazon.com/documentation/account-billing/',
  } });

  sub is_url_working {
    my ($self, $url) = @_;
     my $ua = LWP::UserAgent->new;
    $ua->timeout(10);
    $ua->env_proxy;
    my $res = $ua->head($url);
    if ($res->is_success) {
      return 1;
    } else {
      return 0;
    }
  }

  sub is_url_not_base_redirect {
    my ($self, $url) = @_;
     my $ua = LWP::UserAgent->new;
    $ua->timeout(10);
    $ua->env_proxy;
    my $res = $ua->head($url);
    if ($res->request->uri->as_string ne 'https://aws.amazon.com/documentation/') {
      return 1;
    } else {
      return 0;
    }
  }

  has service_url => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;

    my $override = $self->service_url_overrides->{ $self->service };
    if (defined $override) {
      if ($self->is_url_working($override)) {
        return $override;
      } else {
        die "Looks like documentation for " . $self->service . " has disappeared";
      }
    }

    my $goto_url = 'https://docs.aws.amazon.com/goto/WebAPI/';
    my $goto_service_url = $goto_url . $self->service . '-' . $self->version;
    if ($self->is_url_not_base_redirect($goto_service_url)) {
      return $goto_service_url;
    }

    my $url = 'https://aws.amazon.com/documentation/';
    my $service_url = $url . $self->service;
    if ($self->is_url_working($service_url)) {
      return $service_url;
    } else {
      warn "Using default url for '" . $self->service . "' " . $self->service_full_name;
      return $url;
    }
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

  sub get_paginator_name {
    my ($self,$name) = @_;
    return $name if ($name =~ s/^Describe/DescribeAll/);
    return $name if ($name =~ s/^List/ListAll/);
    return $name if ($name =~ s/^Query/QueryAll/);
    return $name if ($name =~ s/^Get/GetAll/);
    return 'GetAllGroups' if ($name eq 'GetGroup');
    return 'DownloadAllDBLogFilePortions' if ($name eq 'DownloadDBLogFilePortion');
    return 'SelectAll' if ($name eq 'Select');
    return 'GetAllWorkflowExecutionHistories' if ($name eq 'GetWorkflowExecutionHistory');
    return 'ScanAll' if ($name eq 'Scan');
    return 'PollForAllDecisionTasks' if ($name eq 'PollForDecisionTask');
    return 'FilterAllLogEvents' if ($name eq 'FilterLogEvents');
    return 'SimulateAllCustomPolicies' if ($name eq 'SimulateCustomPolicy');
    return 'SimulateAllPrincipalPolicies' if ($name eq 'SimulatePrincipalPolicy');
    return 'LookupAllEvents' if ($name eq 'LookupEvents');
    return 'BatchGetAllTraces' if ($name eq 'BatchGetTraces');
    return 'SearchAllDevices' if ($name eq 'SearchDevices');
    return 'SearchAllProfiles' if ($name eq 'SearchProfiles');
    return 'SearchAllRooms' if ($name eq 'SearchRooms');
    return 'SearchAllSkillGroups' if ($name eq 'SearchSkillGroups');
    return 'SearchAllUsers' if ($name eq 'SearchUsers');
    return 'LookupAllPolicies' if ($name eq 'LookupPolicy');
    return 'PreviewAllAgents' if ($name eq 'PreviewAgents');
    return 'SearchAllResources' if ($name eq 'SearchResources');
    return 'SearchAllProductsAsAdmin' if ($name eq 'SearchProductsAsAdmin');
    return '' if ($name eq '');

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
        my $sh_name = $operation->{ input }->{ shape };
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
    default => sub {
      my $self = shift;
      my $ret = {};
      foreach my $shape_name ($self->shapes) {
        my $shape = $self->shape($shape_name);
        $ret->{ $shape_name } = $shape if (defined $shape->{ exception });
      }
      return $ret;
    },
    traits => [ 'Hash' ],
    handles => {
      exception_shape => 'get',
      exception_shapes => 'keys',
      is_exception_shape => 'exists',
    }
  );

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
        $s->{ locationName } = $member;
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
    my ($self,$file) = @_;
    return {} if (not -e $file);
    return decode_json(read_binary($file));
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

  sub namespace_shape {
    my ($self, $shape) = @_;
    substr($shape,0,1) = uc(substr($shape,0,1));
    return $self->api . '::' . $shape;
  }

  sub process_template {
    my ($self, $template, $vars) = @_;
    my $tt = Template->new(INCLUDE_PATH => $self->template_path);
    my $output = '';
    $tt->process($template, $vars, \$output) || die $tt->error();
    return $output;
  }

  sub operation_aws_url {
    my ($self, $op_name) = @_;

    #TODO insert custom override link to regex add self stuff like below instead of $goto_url

    my $goto_url = 'https://docs.aws.amazon.com/goto/WebAPI/';
    my $goto_op_url = $goto_url . $self->service . '-' . $self->version . '/' . $op_name;
    my $goto_op_url = $goto_url . $self->service . '/' . $op_name;
    if ($self->is_url_not_base_redirect($goto_op_url)) {
      return $goto_op_url;
    }
  };

  sub process_api {
    my $self = shift;
    my $output = '';
    my ($calls, $results);
    $self->validate_shapes;

    foreach my $shape_name ($self->shapes) {
      $self->shape($shape_name)->{perl_type} = $self->get_caller_class_type($shape_name);
    }

    foreach my $op_name ($self->operations) {
      if (defined $self->operation($op_name)->{name}) {
        my $class_name = $self->namespace_shape($op_name);
        my $aws_url = $self->operation_aws_url($op_name);
        my $output = $self->process_template(
          'callargs_class.tt',
          { c => $self, op_name => $op_name, aws_url => $aws_url }
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
