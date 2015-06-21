package Paws::API::Builder::query {

  use Data::Printer;
  use Data::Dumper;

  use autodie;

  use Moose;
  extends 'Paws::API::Builder';

  has wrapped_responses => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{ result_wrapped } });
  has response_role  => (is => 'ro', lazy => 1, default => sub { 'Paws::Net::XMLResponse' });

  has callargs_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.operation(op_name) %]
[%- shape = c.input_for_operation(op_name) %]
package [% c.api %]::[% operation.name %] {
  use Moose;
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (shape.members.${param_name}.locationName) %], traits => ['NameInRequest'], request_name => '[% shape.members.${param_name}.locationName %]' [% END %]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END %]
  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => '[% op_name %]');
  class_has _returns => (isa => 'Str', is => 'ro'[% IF (operation.output.keys.size) %], default => '[% c.api %]::[% c.shapename_for_operation_output(op_name) %]'[% END %]);
  class_has _result_key => (isa => 'Str', is => 'ro'[% IF (operation.output.keys.size) %], default => '[% op_name %]Result'[% END %]);
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
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- traits = [] -%]
  [%- member_shape_name = shape.members.$param_name.shape %]
  [%- member = c.shape(member_shape_name) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (member.locationName); traits.push('Unwrapped') %], xmlname => '[% member.locationName %]'[% END %]
  [%- IF (member.type == 'list' and member.member.locationName); traits.push('Unwrapped') %], xmlname => '[% member.member.locationName %]'[% END %]
  [%- encoder = c.encoders_struct.$member_shape_name; IF (encoder); traits.push('JSONAttribute') %], decode_as => '[% encoder.encoding %]', method => '[% encoder.alias %]'[% END %]
  [%- IF (traits.size) %], traits => [[% FOREACH trait=traits %]'[% trait %]',[% END %]][% END -%]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END %]
}
[%- END %]
1;
[% c.class_documentation_template | eval %]
#);

  has service_class_template => (is => 'ro', isa => 'Str', default => q#
[%- IF (c.enums.size) %]
use Moose::Util::TypeConstraints;
[%- FOR enum_name IN c.enums.keys.sort %]
enum '[% enum_name %]', [[% FOR val IN c.enums.$enum_name %]'[% val %]',[% END %]];
[%- END %]
[%- END -%]
package [% c.api %] {
  use Moose;
  sub service { '[% c.service %]' }
  sub version { '[% c.version %]' }
  sub flattened_arrays { [% c.flattened_arrays %] }

  with 'Paws::API::Caller', '[% c.endpoint_role %]', '[% c.signature_role %]', '[% c.parameter_role %]', '[% c.response_role %]';

  [% FOR op IN c.api_struct.operations.keys.sort %]
  [%- op_name = c.api_struct.operations.$op.name %]
  sub [% op_name %] {
    my $self = shift;
    my $call_object = $self->new_with_coercions('[% c.api %]::[% op_name %]', @_);
    return $self->caller->do_call($self, $call_object);
  }
  [%- END %]
  [%- FOR op IN [] \#c.paginators_struct.keys.sort %]
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
        my $values_shape = $self->shape($iclass->{value}->{shape});

        if ($keys_shape->{enum}){
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::MapParser';\n";

          my $type = $self->get_caller_class_type($iclass->{value}->{shape});
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
          $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
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
          $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
        } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'structure') {
          my $type = $self->get_caller_class_type($iclass->{value}->{shape});
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
          $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
        } else {
          die "Unrecognized Map type in query API " . Dumper($iclass) . 'keys_shape' . Dumper($keys_shape);
        }
      } elsif ($iclass->{type} eq 'structure'){
        $output .= "package $inner_class {\n";
        $output .= "  use Moose;\n";
        my $members = $iclass->{members};
        foreach my $param_name (sort keys %$members){
          my $member_shape_name = $members->{ $param_name }->{ shape };
          my $param_props = $self->shape($member_shape_name);

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
          $output .= ", required => 1" if ($self->required_in_shape($iclass,$param_name));
          $output .= ");\n";
        }
        $output .= "}\n1;\n";
        $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
      }
  }
}

1;
