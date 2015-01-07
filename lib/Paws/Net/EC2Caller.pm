package Paws::Net::EC2Caller {
  use Moose::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime); 
  use Module::Runtime qw//;

  has array_flatten_string => (is => 'ro', isa => 'Str', lazy => 1, default => sub {
    my $self = shift;
    return ($self->flattened_arrays)?'%s.%d':'%s.member.%d';
  });

  # converts objects into perl hash
  sub to_hash {
    my ($self, $params) = @_;
    my $refHash;
    foreach my $att (grep { $_ !~ m/^_/ } $params->meta->get_attribute_list) {
      my $key = $att;
      if (defined $params->$att) {
        my $att_type = $params->meta->get_attribute($att)->type_constraint;
        if ($att_type eq 'Bool') {
          $refHash->{ $key } = ($params->$att)?1:0;
        } elsif ($self->_is_internal_type($att_type)) {
          $refHash->{ $key } = $params->$att;
        } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
          if ($self->_is_internal_type("$1")){
            $refHash->{ $key } = $params->$att;
          } else {
            $refHash->{ $key } = [ map { $self->to_hash($_) } @{ $params->$att } ];
          }
        } elsif ($att_type =~ m/^HashRef\[(.*)\]/) {
          if ($self->_is_internal_type("$1")){
            $refHash->{ $key } = $params->$att;
          } else {
            $refHash->{ $key } = { map { ($_ => $self->to_hash($params->$att->{$_}) ) } keys %{ $params->$att } };
          }
        } elsif ($att_type->isa('Moose::Meta::TypeConstraint::Enum')) {
          $refHash->{ $key } = $params->$att;
        } else {
          $refHash->{ $key } = $self->to_hash($params->$att);
        }
      }
    }
    return $refHash;
  }

  # converts the params the user passed to the call into objects that represent the call
  sub new_with_coercions {
    my ($self, $class, %params) = @_;

    Module::Runtime::require_module($class);
    my %p;
    foreach my $att ($class->meta->get_attribute_list){
      next if (not exists $params{ $att });
      my $type = $class->meta->get_attribute($att)->type_constraint;
      if ($type eq 'Bool') {
        $p{ $att } = ($params{ $att } == 1)?1:0;
      } elsif ($type eq 'Str' or $type eq 'Num' or $type eq 'Int') {
        $p{ $att } = $params{ $att };
      } elsif ($type =~ m/^ArrayRef\[(.*?)\]$/){
        my $subtype = "$1";
        if ($subtype eq 'Str' or $subtype eq 'Num' or $subtype eq 'Int' or $subtype eq 'Bool') {
          $p{ $att } = $params{ $att };
        } else {
          $p{ $att } = [ map { $self->new_with_coercions("$subtype", %{ $_ }) } @{ $params{ $att } } ]; 
        }
      } else {
        $p{ $att } = $self->new_with_coercions("$type", %{ $params{ $att } });
      }
    }
    return $class->new(%p);
  }

  sub _is_internal_type {
    my ($self, $att_type) = @_;
    return ($att_type eq 'Str' or $att_type eq 'Int' or $att_type eq 'Bool' or $att_type eq 'Num');
  }

  # converts the objects that represent the call into parameters that the API can understand
  sub _to_querycaller_params {
    my ($self, $params) = @_;
    my %p;
    foreach my $att (grep { $_ !~ m/^_/ } $params->meta->get_attribute_list) {
      my $key;
      if ($params->meta->get_attribute($att)->does('Paws::API::Attribute::Trait::Unwrapped')){
        $key = $params->meta->get_attribute($att)->xmlname;
      } elsif ($params->meta->get_attribute($att)->does('Paws::Net::Caller::Attribute::Trait::NameInRequest')){
        $key = $params->meta->get_attribute($att)->request_name;
      } else {
        $key = $att;
      }
      
      # This is due to code found in serialize.py (EC2Serializer)
      substr($key,0,1) = uc(substr($key,0,1));

      if (defined $params->$att) {
        my $att_type = $params->meta->get_attribute($att)->type_constraint;

        if ($self->_is_internal_type($att_type)) {
          $p{ $key } = $params->{$att};
        } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
          if ($self->_is_internal_type("$1")){
            my $i = 1;
            foreach my $value (@{ $params->$att }){
              $p{ sprintf($self->array_flatten_string, $key, $i) } = $value;
              $i++
            }
          } else {
            my $i = 1;
            foreach my $value (@{ $params->$att }){
              my %complex_value = $self->_to_querycaller_params($value);
              map { $p{ sprintf($self->array_flatten_string . ".%s", $key, $i, $_) } = $complex_value{$_} } keys %complex_value;
              $i++
            }
          }
        } else {
          my %complex_value = $self->_to_querycaller_params($params->$att);
          map { $p{ "$key.$_" } = $complex_value{$_} } keys %complex_value;
        }
      }
    }
    return %p;
  }

  sub _api_caller {
    my ($self, $call_class, $call_params_object, $request) = @_;
    $request->url($self->endpoint);
    $request->method('POST');

    $request->parameters({ Action => $call_class->_api_call, 
                           Version   => $self->version,
                           $self->_to_querycaller_params($call_params_object) 
    });

    $request->generate_content_from_parameters;

    return $request;
  }
}

1;
