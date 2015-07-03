package Paws::API::Builder {
  use Moose;

  use Data::Compare;
  use Data::Dumper;
  use Data::Printer;
  use Template;
  use File::Slurp;
  use JSON;
  use v5.10;

  has api => (is => 'ro', required => 1);

  sub service_name {
    my $self = shift;
    my $svc = $self->api;
    $svc =~ s/^.*\:\://;
    return $svc;
  }

  has service => (is => 'ro', lazy => 1, default => sub { shift->api_struct->metadata->endpointPrefix });
  has version => (is => 'ro', lazy => 1, default => sub { shift->api_struct->metadata->apiVersion });
  has endpoint_role => (is => 'ro', lazy => 1, default => 'Paws::API::RegionalEndpointCaller' );

  has api_file => (is => 'ro', required => 1);
  has api_struct => (
    is => 'ro', 
    required => 1,
    handles => [ qw/operation operations inner_shapes shapes shape/ ],
  );

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
    return 'GetAllGroups' if ($name eq 'GetGroup');
    return 'DownloadAllDBLogFilePortions' if ($name eq 'DownloadDBLogFilePortion');
    return 'SelectAll' if ($name eq 'Select');
    return 'GetAllWorkflowExecutionHistories' if ($name eq 'GetWorkflowExecutionHistory');
    return 'ScanAll' if ($name eq 'Scan');
    return 'PollForAllDecisionTasks' if ($name eq 'PollForDecisionTask');
    die "Please help me generate a good name for the paginator $name";
  }

  has inner_classes => (is => 'rw', isa => 'HashRef', default => sub { {} });
  has enums => (is => 'rw', isa => 'HashRef', default => sub { {} });

  has flattened_arrays => (is => 'rw', isa => 'Bool', default => sub { 0 });

  sub _load_json_file {
    my ($self,$file) = @_;
    return {} if (not -e $file);
    return from_json(read_file($file));
  }

  has class_documentation_template => (is => 'ro', isa => 'Str', default => q#
\#\#\# main pod documentation begin \#\#\#

=head1 NAME

[% c.api %]::[% c.shapename_for_operation_output(op_name) %]

=head1 ATTRIBUTES

[% FOREACH param_name IN shape.member_list.sort -%]
  [%- member = c.shape(shape.member_get(param_name).shape) -%]
=head2 [%- IF (c.shape.is_required(param_name)) %]B<REQUIRED> [% END %][% param_name %] => [% member.perl_type %]

  [% c.doc_for_param_name_in_shape(shape, param_name) %]
[% END %]

=cut
#);

  has callclass_documentation_template => (is => 'ro', isa => 'Str', default => q#
\#\#\# main pod documentation begin \#\#\#

=head1 NAME

[% c.api %]::[% operation.name %] - Arguments for method [% operation.name %] on [% c.api %]

=head1 DESCRIPTION

This class represents the parameters used for calling the method [% operation.name %] on the 
[% c.api_struct.metadata.serviceFullName %] service. Use the attributes of this class
as arguments to method [% operation.name %].

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to [% operation.name %].

As an example:

  $service_obj->[% operation.name %](Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

[% FOREACH param_name IN shape.member_list.sort -%]
  [%- member = c.shape(shape.member_get(param_name).shape) -%]
=head2 [%- IF (c.shape.is_required(param_name) %]B<REQUIRED> [% END %][% param_name %] => [% member.perl_type %]

  [% c.doc_for_param_name_in_shape(shape, param_name) %]

[% END %]

=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method [% operation.name %] in L<[% c.api %]>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
#);

  has service_documentation_template => (is => 'ro', isa => 'Str', default => q#
\#\#\# main pod documentation begin \#\#\#

=head1 NAME

[% c.api %] - Perl Interface to AWS [% c.api_struct.metadata.serviceFullName %]

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('[% c.service_name %]')->new;
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    \# if Arg3 is an object, the HashRef will be used as arguments to the constructor
    \# of the arguments type
    Arg3 => { Att1 => 'Val1' },
    \# if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    \# the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

[% c.doc_for_service() %]

=head1 METHODS
[% FOR op IN c.api_struct.operations.keys.sort %]
  [%- op_name = c.api_struct.operations.$op.name %]
=head2 [% op_name %](
[%- out_shape = c.input_for_operation(op_name) %]
[%- req_list = out_shape.required.sort %]
[%- FOREACH out_name IN req_list.sort -%]
  [%- member = c.shape(out_shape.members.$out_name.shape) -%]
  [%- out_name %] => [% member.perl_type %]
  [%- IF (NOT loop.last) %], [% END %]
[%- END %]
[%- opt_list = c.optional_params_in_shape(out_shape) %]
[%- IF (opt_list.size > 0) %]
[%- IF (req_list.size > 0) %], [% END %][
[%- FOREACH out_name IN opt_list.sort %]
  [%- member = c.shape(out_shape.members.$out_name.shape) -%]
  [%- out_name %] => [% member.perl_type %]
  [%- IF (NOT loop.last) %], [% END %]
[%- END %]]
[%- END %])

Each argument is described in detail in: L<[% c.api %]::[% op_name %]>

Returns: [% out_shape = c.shapename_for_operation_output(op_name); IF (out_shape) %]a L<[% c.api %]::[% out_shape %]> instance[% ELSE %]nothing[% END %]

  [% c.doc_for_method(op_name) %]

[% END %]
=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
#);


  sub optional_params_in_shape {
    confess "Don't call this";
  }

  sub shapename_for_operation_output {
    confess "Don't call this";
  }

  sub result_for_operation {
    confess "Don't call this";
  }

  sub shapename_for_operation_input {
    confess "Don't call this";
  }

  sub input_for_operation {
    #confess "Don't call this";
    my ($self, $op_name) = @_;
    return $self->shape(
      $self->api_struct->operation($op_name)->input_shapename
    );
  }

  use autodie;
  sub save_class {
    my ($self, $class_name, $content) = @_;
    return if (not defined $class_name);
    my @class_parts = split /\:\:/, $class_name;
    my $class_file_name = "auto-lib/" . ( join '/', @class_parts ) . ".pm";
    if (0) {#-e $class_file_name) { #not doing this, because there are unimportant differences in files
      {
      open my $read, '<', $class_file_name;
      local $/=undef;
      my $read_content = <$read>;
      close $read;
      die "Non matching for $class_file_name: going to store $content\nvs stored: $read_content" if ($read_content ne $content);
      }
    }
    pop @class_parts;
    eval { mkdir "auto-lib/" . ( join '/', @class_parts ) };
    open my $file, ">", $class_file_name;
    print $file $content;
    close $file;
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

  sub namespace_shape {
    my ($self, $shape) = @_;
    return $self->api . '::' . $shape;
  }

  sub process_template {
    my ($self, $template, $vars) = @_;
    my $tt = Template->new;
    my $output = '';
    $tt->process(\$template, $vars, \$output) || die $tt->error();
    return $output;
  }

  sub process_api {
    my $self = shift;
    my $output = '';
    my ($calls, $results);

    foreach my $op_name ($self->operations) {
      if (defined $self->operation($op_name)->{name}) {
        my $class_name = $self->namespace_shape($self->operation($op_name)->{name});
        my $output = $self->process_template(
          $self->callargs_class_template,
          { c => $self->api_struct, op_name => $op_name }
        );
        $self->save_class($class_name, $output);
      }
      if (defined $self->operation($op_name)->output_shapename) {
        my $class_name = $self->namespace_shape($self->operation($op_name)->output_shapename);
        my $output = $self->process_template(
          $self->callresult_class_template,
          { c => $self->api_struct, op_name => $op_name }
        );
        $self->save_class($class_name, $output);
      }
    }

    foreach my $shape_name ($self->inner_shapes) {
      print "Inner Shape $shape_name\n";
      my $shape = $self->shape($shape_name);
      my $class_name = $self->namespace_shape($shape_name);
      my $output = $self->make_inner_class($shape, $class_name);
      $self->save_class($class_name, $output);
    }

    my $class_out = $self->process_template($self->service_class_template, { c => $self->api_struct });
    $self->save_class($self->api, $class_out);
  }

  sub doc_for_shape {
    my ($self, $shape) = @_;
    my $doc = $shape->{documentation};
    if (not $doc) {
      warn "No documentation for shape $shape in " . $self->api;
      return '';
    }
    return $self->html_to_pod($doc);
  }

  sub doc_for_param_name_in_shape {
    my ($self, $shape, $param_name) = @_;
    my $doc = $shape->{members}->{$param_name}->{documentation};
    if (not $doc) {
      warn "No documentation for $param_name in " . $self->api;
      return '';
    }
    return $self->html_to_pod($doc);
  }

  sub doc_for_service {
    my ($self) = @_;
    if (not $self->api_struct->{documentation}) {
      warn "No documentation for service " . $self->api;
      return '';
    }
    return $self->html_to_pod($self->api_struct->{documentation});
  }
  sub doc_for_method {
    my ($self, $method) = @_;
    my $op = $self->operation($method);
    if (not $op->{ documentation }) {
      warn "No documentation for " . $self->api . "::" . $method;
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
      a_href => 0,
      debug => 0,
    );
    $pod =~ s/=pod//;
    $pod =~ s/=cut$//m;
    $pod =~ s/#.*$//mg;
    return $pod;
  }

  sub make_inner_class {
    my $self = shift;
    my $iclass = shift;
    my $inner_class = shift;

    return if (not defined $inner_class);

      my $output = '';
      if ($iclass->{type} eq 'map'){
        my $keys_shape = $self->shape($iclass->{key}->{shape});
        my $values_shape = $self->shape($iclass->{value}->{shape});

        if ($keys_shape->{enum}){
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::MapParser';\n";

          my $type = $self->shape($iclass->{value}->{shape})->perl_class;
          my $xml_keys = $iclass->{key}->{locationName} || 'key';
          my $xml_values = $iclass->{value}->{locationName} || 'value';
          $output .= "\n";
          $output .= "  use MooseX::ClassAttribute;\n";
          $output .= "  class_has xml_keys =>(is => 'ro', default => '$xml_keys');\n";
          $output .= "  class_has xml_values =>(is => 'ro', default => '$xml_values');\n";
          $output .= "\n";

          my $members = $keys_shape->{enum};
          foreach my $param_name (sort @$members){
            $output .= "  has $param_name => (is => 'ro', isa => '$type'";
            $output .= ");\n";
          }
          $output .= "}\n1\n";
        } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'string') {
          $output .= "package $inner_class {\n"; 
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::StrToStrMapParser';\n";

          my $xml_keys = $iclass->{key}->{locationName} || 'key';
          my $xml_values = $iclass->{value}->{locationName} || 'value';
          $output .= "\n";
          $output .= "  use MooseX::ClassAttribute;\n";
          $output .= "  class_has xml_keys =>(is => 'ro', default => '$xml_keys');\n";
          $output .= "  class_has xml_values =>(is => 'ro', default => '$xml_values');\n";
          $output .= "\n";

          $output .= "  has Map => (is => 'ro', isa => 'HashRef[Str]');\n";
          $output .= "}\n1\n";
        } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'float') {
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::StrToStrMapParser';\n";

          my $xml_keys = $iclass->{key}->{locationName} || 'key';
          my $xml_values = $iclass->{value}->{locationName} || 'value';
          $output .= "\n";
          $output .= "  use MooseX::ClassAttribute;\n";
          $output .= "  class_has xml_keys =>(is => 'ro', default => '$xml_keys');\n";
          $output .= "  class_has xml_values =>(is => 'ro', default => '$xml_values');\n";
          $output .= "\n";

          $output .= "  has Map => (is => 'ro', isa => 'HashRef[Num]');\n";
          $output .= "}\n1\n";
        } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'structure') {
          my $type = $self->shape($iclass->{value}->{shape})->perl_class;
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::StrToObjMapParser';\n";

          my $xml_keys = $iclass->{key}->{locationName} || 'key';
          my $xml_values = $iclass->{value}->{locationName} || 'value';
          $output .= "\n";
          $output .= "  use MooseX::ClassAttribute;\n";
          $output .= "  class_has xml_keys =>(is => 'ro', default => '$xml_keys');\n";
          $output .= "  class_has xml_values =>(is => 'ro', default => '$xml_values');\n";
          $output .= "\n";

          $output .= "  has Map => (is => 'ro', isa => 'HashRef[$type]');\n";
          $output .= "}\n1\n";
        } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'list') {
          my $type = $self->shape($iclass->{value}->{shape})->perl_class;
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::StrToStrMapParser';\n";

          my $xml_keys = $iclass->{key}->{locationName} || 'key';
          my $xml_values = $iclass->{value}->{locationName} || 'value';
          $output .= "\n";
          $output .= "  use MooseX::ClassAttribute;\n";
          $output .= "  class_has xml_keys =>(is => 'ro', default => '$xml_keys');\n";
          $output .= "  class_has xml_values =>(is => 'ro', default => '$xml_values');\n";
          $output .= "\n";

          $output .= "  has Map => (is => 'ro', isa => 'HashRef[$type]');\n";
          $output .= "}\n1\n";
        } else {
          die "Unrecognized Map type in query API " . Dumper($iclass) . ' keys_shape ' . Dumper($keys_shape) . ' values_shape' . Dumper($values_shape);
        }
      } elsif ($iclass->{type} eq 'structure'){
        $output .= "package $inner_class {\n";
        $output .= "  use Moose;\n";
        my $members = $iclass->{members};
        foreach my $param_name (sort keys %$members){
          my $member_shape_name = $members->{ $param_name }->{ shape };
          my $param_props = $self->shape($member_shape_name);

          my $type;
          if ($param_props->{enum}) {
            # Enums passed to Str because documentation tends to have inconsistencies 
            #$type = $self->api . "::" . $param_props->{shape_name};
            #$self->register_enum($type, $param_props->{enum});
            $type = 'Str';
          } else {
            $type = $self->shape($members->{ $param_name }->{ shape })->perl_class;
          }
          my $traits = [];
          $output .= "  has $param_name => (is => 'ro', isa => '$type'";
          if (defined $members->{ $param_name }->{locationName}) {
            push @$traits, 'Unwrapped';
            $output .= ", xmlname => '$members->{ $param_name }->{locationName}'";
          }
          if (defined $members->{ $param_name }->{locationName}) {
            push @$traits, 'NameInRequest';
            $output .= ", request_name => '$members->{ $param_name }->{locationName}'";
          }
          if (defined $self->encoders_struct and my $encoder = $self->encoders_struct->{ $member_shape_name }) {
            push @$traits, 'JSONAttribute';
            $output .= ", decode_as => '$encoder->{ encoding }', method => '$encoder->{ alias }'";
          }
          if (@$traits) {
            $output .= ", traits => [" . (join ',', map { "'$_'" } @$traits) . "]";
          }
          $output .= ", required => 1" if ($self->shape($member_shape_name)->is_required($param_name));
          $output .= ");\n";
        }
        $output .= "}\n1;\n";
        return $output;
      }
  }
}

1;
