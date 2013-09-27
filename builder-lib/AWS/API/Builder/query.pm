use MooseX::Declare;
class AWS::API::Builder::query {

  use Data::Dumper;
  use Data::Compare;

  has struct => (is => 'ro', required => 1);
  has api => (is => 'ro', required => 1);
  has service => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{ endpointPrefix } });
  has version => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{ apiVersion } });
  has operations => (is => 'ro', lazy => 1, default => sub { [ keys %{ $_[0]->struct->{operations} } ] });

  method operation (Str $op) { return $self->struct->{operations}->{ $op } or die "method doesn't exist $op" }

  method process_api {
    my $output = '';
    my ($calls, $results);

    foreach my $op (@{ $self->operations }){
      my $operation = $self->operation($op);
      my $api_call = $operation->{name};
 
      if ($operation->{ input }{type} eq 'structure'){
        $calls .= $self->make_call_class($operation->{ input }{members}, $api_call);
      } else {
        die "Found an input that's not a structure";
      }
      if ($operation->{ output }{type} eq 'structure'){
        $results .= $self->make_result_class($operation->{ output }{members}, $api_call);
      } else {
        die "Found an input that's not a structure";
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

    my $output = '';
    $output .= "class $api with AWS::API::Caller {\n";
    $output .= "  has service => (is => 'ro', isa => 'Str', default => '$service');\n";
    $output .= "  has version => (is => 'ro', isa => 'Str', default => '$api_version');\n\n";
  
    foreach my $op (keys %{ $self->struct->{operations} }){
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
      foreach my $param_name (keys %$members){
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
      foreach my $param_name (keys %$members){
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
      $output .= "class $inner_class with AWS::API::ResultParser {\n";
      my $members = $self->inner_classes->{ $inner_class }->{members};
      foreach my $param_name (keys %$members){
        my $param_props = $members->{ $param_name };
        my $type = eval { $self->get_caller_class_type($param_props, $param_name) };
        if ($@) { die "In Inner Class: $inner_class: $@"; }
        $output .= "  has $param_name => (is => 'ro', isa => '$type'";
        $output .= ", required => 1" if (defined $param_props->{required} and $param_props->{required} == 1);
        $output .= ");\n";
      }
      $output .= "}\n\n";
     
    }
  
    return $output;
  }
  
  has inner_classes => (is => 'rw', isa => 'HashRef', default => sub { {} });

  method register_inner_class (Str $class_name, HashRef $definition) {
    # TODO: die if a $class_name already exists, but has a different $definition (needs a deep
    #       inspection)
    if (defined $self->inner_classes->{ $class_name } and not Compare($self->inner_classes->{ $class_name }, $definition)){
      die "$class_name tried to register with " . Dumper($definition) . "but it was already registered with " . Dumper($self->inner_classes->{ $class_name });
    } else {
      $self->inner_classes->{ $class_name } = $definition;
    }
  }

  method get_caller_class_type ($param_props, $param_name) {
    my $type;
    if (not exists $param_props->{ type }) {
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'list') {
      my $inner_type = $self->get_caller_class_type($param_props->{members}, $param_name);
      $type = "ArrayRef[$inner_type]";
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'timestamp') {
      # AWS::API::TimeStamp
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'boolean') {
      # Bool
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'integer') {
      $type = 'Int';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'structure') {
      # This is an inner class. We have to generate an inner class
      $type = $param_props->{ class };
      die "doesn't have a class entry for $param_name with def " . Dumper($param_props) if (not defined $param_props->{ class });
  
      if ($type !~ /^AWS\:\:/) {
        # If the type isn't in the AWS namespace, we prefix it with our class name,
        # and queue it for building. Else the class is assumed to already be built
        my $api = $self->api;
        $type = "${api}::${type}";
        $param_props->{ 'class' } = $type;
        $self->register_inner_class($type, $param_props);
      }
    }
    #TODO: change for die when all types are generated
    die "Unknown type: $param_props->{ type }" if (not defined $type);
    return $type;
  } 
}

1;
