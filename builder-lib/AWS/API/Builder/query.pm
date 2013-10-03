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
  has endpoint_role => (is => 'ro', lazy => 1, default => sub { defined $_[0]->struct->{ global_endpoint } ? 
                                                                   'AWS::API::SingleEndpointCaller':
                                                                   'AWS::API::RegionalEndpointCaller' 
                                                              } );
  has signature_role => (is => 'ro', lazy => 1, default => sub { sprintf "Net::AWS::%sSignature", uc $_[0]->struct->{signature_version} } );
  has parameter_role => (is => 'ro', lazy => 1, default => sub { my $type = $_[0]->struct->{type}; substr($type,0,1) = uc substr($type,0,1); return "Net::AWS::${type}Caller" });

  method operation (Str $op) { return $self->struct->{operations}->{ $op } or die "method doesn't exist $op" }

  method process_api {
    my $output = '';
    my ($calls, $results);

    print $self->api . " has signature " . $self->signature_role . "\n";

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

    my $parameter_role = $self->parameter_role;
    my $signature_role = $self->signature_role;
    my $endpoint_role  = $self->endpoint_role;
    my $output = '';
    $output .= "class $api with (Net::AWS::Caller, $endpoint_role, $signature_role, $parameter_role) {\n";
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
        my $type = eval { $self->get_caller_class_type($param_props) };
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
        my $type = eval { $self->get_caller_class_type($param_props) };
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
        my $type = $self->get_caller_class_type($self->inner_classes->{ $inner_class }->{members});
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
          my $type = eval { $self->get_caller_class_type($param_props) };
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
      print "---- Registered Definition ----\n";
      my $temp = [ sort keys %{ $self->inner_classes->{ $class_name }->{members} } ];
      p $temp;
      print "---- New Definition ------\n";
      $temp = [ sort keys %{ $definition->{members} } ];
      p $temp;
      die "$class_name tried to register but was already registered";
    } else {
      $self->inner_classes->{ $class_name } = $definition;
    }
  }

  method definitions_equal ($left, $right) {
    return Compare(
      [ sort keys %{ $left->{members} } ],
      [ sort keys %{ $right->{members} } ]
    );
  }

  method get_caller_class_type ($param_props) {
    my $param_name = $param_props->{shape_name};

    my $type;
    if (not exists $param_props->{ type }) {
      die "doesn't have a type entry for $param_name with def " . Dumper($param_props);
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'list') {
      my $inner_type = $self->get_caller_class_type($param_props->{members});
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
