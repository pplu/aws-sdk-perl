use MooseX::Declare;
class AWS::API::Builder::query {

  use Data::Printer;
  use Data::Dumper;
  use Data::Compare;

  has struct => (is => 'ro', required => 1);
  has api => (is => 'ro', required => 1);
  has service => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{ endpoint_prefix } });
  has version => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{ api_version } });
  has operations => (is => 'ro', lazy => 1, default => sub { [ keys %{ $_[0]->struct->{operations} } ] });
  has single_endpoint => (is => 'ro', lazy => 1, default => sub { defined $_[0]->struct->{ global_endpoint } });

  method operation (Str $op) { return $self->struct->{operations}->{ $op } or die "method doesn't exist $op" }

  method process_api {
    my $output = '';
    my ($calls, $results);

    foreach my $op (sort @{ $self->operations }){
      my $operation = $self->operation($op);
      my $api_call = $operation->{name};
 
      if      (not keys %{$operation->{ input }}){
        # There is no input class
        $calls .= $self->make_call_class({ }, $api_call); 
      } elsif ($operation->{ input }{type} eq 'structure'){
        $calls .= $self->make_call_class($operation->{ input }{members}, $api_call);
      } else {
        die "Found an input that's not a structure " . Dumper($operation->{ input });
      }
      if      (not keys %{$operation->{ output }}){
        # There is no output class
      } elsif ($operation->{ output }{type} eq 'structure'){
        $results .= $self->make_result_class($operation->{ output }{members}, $api_call);
      } else {
        die "Found an input that's not a structure " . Dumper($operation);
      } 
    }

    $output .= "use MooseX::Declare;\n";
    $output .= "use AWS::API;\n";
    # First call may register more inner classes
    $self->make_inner_classes();
    $output .= $self->make_inner_classes();
    $output .= $calls;
    $output .= $results;
    $output .= $self->make_api_class;
  }

  method make_api_class {
    my $api = $self->api;
    my $service = $self->service;
    my $api_version = $self->version;

    my $caller = ($self->single_endpoint)?'SingleEndpointCaller':'RegionalEndpointCaller';
    my $output = '';
    $output .= "class $api with AWS::API::Caller with AWS::API::$caller {\n";
    $output .= "  has service => (is => 'ro', isa => 'Str', default => '$service');\n";
    $output .= "  has version => (is => 'ro', isa => 'Str', default => '$api_version');\n\n";
  
    foreach my $op (sort keys %{ $self->struct->{operations} }){
      my $op_name = $self->struct->{operations}->{$op}->{name};
      $output .= "  method $op_name (%args) {\n";
      $output .= "    my \$call = ${api}::${op_name}->new(\%args);\n";
      $output .= "    my \$result = \$self->_api_caller(\$call->_api_call, \$call);\n";
      $output .= "    my \$o_result = ${api}::${op_name}Result->from_result(\$result->{ \$call->_result_key });\n";
      $output .= "    return \$o_result;\n";
      $output .= "  }\n\n";
    } 
    $output .= "}\n\n";
    return $output;
  }
  
  method make_call_class ($members, $api_call) {
      my $api = $self->api;
      my $class = "${api}::${api_call}";
      my $output;
      $output .= "class $class {\n";
      foreach my $param_name (sort keys %$members){
        my $param_props = $members->{ $param_name };
        my $type = eval { $self->get_caller_class_type($param_props, $param_name) };
        if ($@) { die "In input class $class: $@"; }
        $output .= "  has $param_name => (is => 'ro', isa => '$type'";
        $output .= ", required => 1" if (defined $param_props->{required} and $param_props->{required} == 1);
        $output .= ");\n";
      }
  
      $output .= "\n";
      $output .= "  has _api_call => (isa => 'Str', is => 'ro', default => '$api_call');\n";
      $output .= "  has _returns => (isa => '${api}::${api_call}Result', is => 'ro');\n";
      $output .= "  has _result_key => (isa => 'Str', is => 'ro', default => '${api_call}Result');\n";
      $output .= "}\n";
  
      return $output;
  }

  method make_result_class ($members, $api_call) {
      my $api = $self->api;
      my $class = "${api}::${api_call}Result";
      my $output;
      $output .= "class $class with AWS::API::ResultParser {\n";
      foreach my $param_name (sort keys %$members){
        my $param_props = $members->{ $param_name };
        my $type = eval { $self->get_caller_class_type($param_props, $param_name) };
        if ($@) { die "In output class $class: $@"; }
        $output .= "  has $param_name => (is => 'ro', isa => '$type'";
        $output .= ", required => 1" if (defined $param_props->{required} and $param_props->{required} == 1);
        $output .= ");\n";
      }
      $output .= "}\n";
  
      return $output;
  }

  
  method make_inner_classes {
    my $output = '';
  
    foreach my $inner_class (sort keys %{ $self->inner_classes }) {
      if ($self->inner_classes->{ $inner_class }->{type} eq 'map'){
        $output .= "class $inner_class with AWS::API::MapParser {\n";
        my $type = $self->get_caller_class_type($self->inner_classes->{ $inner_class }->{members}, '');
        my $members = $self->inner_classes->{ $inner_class }->{keys}->{enum};
        foreach my $param_name (sort @$members){
          $output .= "  has $param_name => (is => 'ro', isa => '$type'";
          $output .= ");\n";
        }
        $output .= "}\n\n";
      } else {
        $output .= "class $inner_class with AWS::API::ResultParser {\n";
        my $members = $self->inner_classes->{ $inner_class }->{members};
        foreach my $param_name (sort keys %$members){
          my $param_props = $members->{ $param_name };
          my $type = eval { $self->get_caller_class_type($param_props, $param_name) };
          if ($@) { die "In Inner Class: $inner_class: $@"; }
          $output .= "  has $param_name => (is => 'ro', isa => '$type'";
          $output .= ", required => 1" if (defined $param_props->{required} and $param_props->{required} == 1);
          $output .= ");\n";
        }
        $output .= "}\n\n";
      }
    }
  
    return $output;
  }
  
  has inner_classes => (is => 'rw', isa => 'HashRef', default => sub { {} });

  method register_inner_class (Str $class_name, HashRef $definition) {
    if (defined $self->inner_classes->{ $class_name } and not $self->definitions_equal($self->inner_classes->{ $class_name }, $definition)){
      print "---- New Definition ------\n";
      p $definition;
      print "---- Registered Definition ----\n";
      p $self->inner_classes->{ $class_name };
      die "$class_name tried to register but was already registered";
    } else {
      $self->inner_classes->{ $class_name } = $definition;
    }
  }

  method definitions_equal ($left, $right) {
    return Compare(
      [ keys %{ $left->{members} } ],
      [ keys %{ $right->{members} } ]
    );
  }

  method get_caller_class_type ($param_props, $param_name) {
    my $type;
    if (not exists $param_props->{ type }) {
      die "doesn't have a type entry for $param_name with def " . Dumper($param_props);
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'list') {
      my $inner_type = $self->get_caller_class_type($param_props->{members}, $param_name);
      $type = "ArrayRef[$inner_type]";
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'timestamp') {
      # TODO: AWS::API::TimeStamp
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'long') {
      #TODO: Check
      $type = 'Num';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'double') {
      #TODO: Check
      $type = 'Int';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'float') {
      #TODO: Check
      $type = 'Num';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'boolean') {
      # TODO: Bool
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'integer') {
      $type = 'Int';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'string') {
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'blob') {
      # TODO: check
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'map') {
      my $api = $self->api;
      $type = "${api}::$param_name";
      $self->register_inner_class($type, $param_props);
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'structure') {
      # This is an inner class. We have to generate an inner class
      $type = $param_props->{ shape_name };
      die "doesn't have a shape_name entry for $param_name with def " . Dumper($param_props) if (not defined $type);
  
      if ($type !~ /^AWS\:\:/) {
        # If the type isn't in the AWS namespace, we prefix it with our class name,
        # and queue it for building. Else the class is assumed to already be built
        my $api = $self->api;
        $type = "${api}::${type}";
        $param_props->{ 'class' } = $type;
        $self->register_inner_class($type, $param_props);
      }
    }
    if (not defined $type) {
      p $param_props;
      die "Unknown type: $param_props->{ type }";
    }
    return $type;
  } 
}

1;
