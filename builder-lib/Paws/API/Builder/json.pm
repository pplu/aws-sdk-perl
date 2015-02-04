package Paws::API::Builder::json {

  use Data::Printer;
  use Data::Dumper;

  use autodie;

  use Moose;

  extends 'Paws::API::Builder';

  has service => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}{ endpointPrefix } });
  has version => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}{ apiVersion } });
  has endpoint_role => (is => 'ro', lazy => 1, default => sub { defined $_[0]->api_struct->{metadata}{ globalEndpoint } ? 
                                                                   'Paws::API::SingleEndpointCaller':
                                                                   'Paws::API::RegionalEndpointCaller' 
                                                              } );
  has target_prefix => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}{ targetPrefix } });
  has json_version => (
    is => 'ro', 
    lazy => 1, 
    default => sub { 
      my $ver = $_[0]->api_struct->{metadata}->{ jsonVersion }; 
      return sprintf("%.1f", $ver) 
    }
  );
  has wrapped_responses => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{ result_wrapped } });
  has response_role  => (is => 'ro', lazy => 1, default => sub { 'Paws::Net::JsonResponse' });

  has callargs_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.operation(op_name) %]
[%- shape = c.input_for_operation(op_name) %]
package [% c.api %]::[% operation.name %] {
  use Moose;
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (member.xmlname) %], traits => ['NameInRequest'], request_name => '[% member.xmlname %]' [% END %]
  [%- IF (member.members.xmlname) %], traits => ['NameInRequest'], request_name => '[% member.members.xmlname %]' [% END %]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END %]
  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => '[% op_name %]');
  class_has _returns => (isa => 'Str', is => 'ro'[% IF (operation.output.keys.size) %], default => '[% c.api %]::[% c.shapename_for_operation_output(op_name) %]'[% END %]);
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
[% c.callclass_documentation_template | eval %]
#);

  has callresult_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.result_for_operation(op_name) %]
[%- shape = c.result_for_operation(op_name) %]
[%- IF (shape) %]
package [% c.api %]::[% c.shapename_for_operation_output(op_name) %] {
  use Moose;
  with 'Paws::API::ResultParser';
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (member.members.xmlname) %], traits => ['Unwrapped'], xmlname => '[% member.members.xmlname %]'[% END %]
  [%- IF (member.xmlname) %], traits => ['Unwrapped'], xmlname => '[% member.xmlname %]'[% END %]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END %]
}
[%- END %]
[% c.class_documentation_template | eval %]
1;#);

  has service_class_template => (is => 'ro', isa => 'Str', default => q#
use Paws::API;
[% IF (c.enums.size) %]
use Moose::Util::TypeConstraints;
[%- FOR enum_name IN c.enums.keys.sort %]
enum '[% enum_name %]', [[% FOR val IN c.enums.$enum_name %]'[% val %]',[% END %]];
[%- END %]
[% END %]

package [% c.api %] {
  use Moose;
  sub service { '[% c.service %]' }
  sub version { '[% c.version %]' }
  sub target_prefix { '[% c.target_prefix %]' }
  sub json_version { "[% c.json_version %]" }

  with 'Paws::API::Caller', '[% c.endpoint_role %]', '[% c.signature_role %]', '[% c.parameter_role %]', '[% c.response_role %]';

  [% FOR op IN c.api_struct.operations.keys.sort %]
  [%- op_name = c.api_struct.operations.$op.name %]
  sub [% op_name %] {
    my $self = shift;
    return $self->caller->do_call('[% c.api %]::[% op_name %]', @_);
  }
  [%- END %]
  [%- FOR op IN c.paginators_struct.keys.sort %]
  sub [% c.get_paginator_name(op) %] {
    [%- paginator = c.paginators_struct.$op %]
    my $self = shift;

    my $result = $self->[% op %](@_);
    my $array = [];
    push @$array, @{ $result->[% paginator.result_key %] };

    while ($result->[% paginator.output_token %]) {
      $result = $self->[% op %](@_, [% paginator.input_token %] => $result->[% paginator.output_token %]);
      push @$array, @{ $result->[% paginator.result_key %] };
    }

    return '[% c.api %]::[% op %]'->_returns->new([% paginator.result_key %] => $array);
  }
  [%- END %]
}
1;
[% c.service_documentation_template | eval %]
#);

  sub make_inner_class {
    my $self = shift;
    my $iclass = shift;
    my $inner_class = shift;

    return if (not defined $inner_class);

      my $output = '';
      if ($iclass->{type} eq 'map'){
        my $keys_shape = $self->shape($iclass->{key}->{shape});
        if ($keys_shape->{enum}){
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::MapParser';\n";
          my $type = $self->get_caller_class_type($iclass->{value}->{shape});
          my $members = $keys_shape->{enum};
          foreach my $param_name (sort @$members){
            $output .= "  has $param_name => (is => 'ro', isa => '$type'";
            $output .= ");\n";
          }
          $output .= "}\n1;\n";
          $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
        } elsif ($keys_shape->{type} eq 'string') {
          $output .= "package $inner_class {\n"; 
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::StrToStrMapParser';\n";
          $output .= "  has Map => (is => 'ro', isa => 'HashRef[Str]');\n";
          $output .= "}\n1;\n";
          $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
        } elsif ($keys_shape->{type} eq 'structure') {
          my $type = $self->get_caller_class_type($iclass->{members});
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::StrToObjMapParser';\n";

          $output .= "  has Map => (is => 'ro', isa => 'HashRef[$type]');\n";
          $output .= "}\n1;\n";
          $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
        } elsif ($keys_shape->{type} eq 'list') {
          my $type = $self->get_caller_class_type($iclass->{members});
          warn "Take a look at $inner_class (has $type)\n";
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::StrToObjMapParser';\n";

          $output .= "  has Map => (is => 'ro', isa => 'HashRef[$type]');\n";
          $output .= "}\n1;\n";
          $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
        } else {
          die "Unrecognized Map type in json API " . Dumper($iclass);
        }
      } elsif($iclass->{type} eq 'structure') {
        $output .= "package $inner_class {\n";
        $output .= "  use Moose;\n";
        my $members = $iclass->{members};
        foreach my $param_name (sort keys %$members){
          my $param_props = $self->shape($members->{ $param_name }->{ shape });

          my $callit = $self->get_caller_class_type($members->{ $param_name }->{ shape });
          $self->make_inner_class($param_props,$callit);

          my $type;
          if ($param_props->{enum}) {
            # Enums passed to Str because documentation tends to have inconsistencies 
            #$type = $self->api . "::" . $param_props->{shape_name};
            #$self->register_enum($type, $param_props->{enum});
            $type = 'Str';
          } else {
            $type = eval { $self->get_caller_class_type($members->{ $param_name }->{ shape }) };
            if ($@) { die "In Inner Class: $inner_class: $@"; }
          }
          $output .= "  has $param_name => (is => 'ro', isa => '$type'";
          if (defined $param_props->{xmlname}) {
            $output .= ", traits => ['Unwrapped'], xmlname => '$param_props->{xmlname}'";
          }
          $output .= ", required => 1" if ($self->required_in_shape($iclass,$param_name));
          $output .= ");\n";
        }
        $output .= "}\n1;\n";
        $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
      }
    }
}

1;
