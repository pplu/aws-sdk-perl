use MooseX::Declare;
use Moose::Util::TypeConstraints;

class AWS::Common::Tag with AWS::API::ResultParser {
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::API::Integer {
  has Value => (isa => 'Int', is => 'ro', required => 1);
  method to_params (Str $param_name) { ($param_name => $self->Value) }
}

coerce 'AWS::API::Integer', from 'Int', via { AWS::API::Integer->new(Value => $_) };

class AWS::API::String {
  has Value => (isa => 'Str', is => 'rw', required => 1);
  method to_params (Str $param_name) { ($param_name => $self->Value) }
}

coerce 'AWS::API::String', from 'Str', via { AWS::API::String->new(Value => $_) };

class AWS::API::Boolean {
  has Value => (isa => 'Bool', is => 'rw', required => 1);
  #where { $_ eq 'true' or $_ eq 'false' };
  method to_params (Str $param_name) { ( $param_name => ($self->Value?'true':'false') ) }
}

coerce 'AWS::API::Boolean', from 'Str', via { 
  my $val = $_;
  $val = 1 if ($val eq 'true');
  $val = 0 if ($val eq 'false');
  AWS::API::Boolean->new(Value => $_) 
};

class AWS::API::StringList {
  has Value => (isa => 'ArrayRef[Str]', is => 'rw', required => 1);

  method to_params (Str $param_name) {
    my $i = 1;
    my %params;
    foreach my $value (@{ $self->Value }){
      $params{ sprintf("%s.member.%d", $param_name, $i) } = $value;
      $i++
    }
    return %params
  }
}

coerce 'AWS::API::StringList',
  from 'ArrayRef',
   via { AWS::API::StringList->new( Value => $_ ) };

role AWS::API::RegionalEndpointCaller {
  has region => (is => 'rw', isa => 'Str');
  requires 'service';

  method endpoint_host {
    return sprintf '%s.%s.amazonaws.com', $self->service, $self->region;
  }

  method _api_endpoint {
    return sprintf '%s://%s/', 'https', $self->endpoint_host;
  }
}

role AWS::API::SingleEndpointCaller {
  requires 'service';

  method endpoint_host {
    return sprintf '%s.amazonaws.com', $self->service;
  }

  method _api_endpoint {
    return sprintf '%s://%s/', 'https', $self->endpoint_host;
  }
}

role AWS::API::MapParser {
  sub result_to_args {
    my ($class, $result) = @_;
    $class->new(map { ($_->{ key } => $_->{ value}) } @$result);
  }
}

role AWS::API::ResultParser {
  sub result_to_args {
    my ($class, $result) = @_;
    my %args;

    foreach my $key (keys %$result) {
      if (not ref($result->{ $key })) {
        if (defined $result->{ $key }){
          $args{ $key } = $result->{ $key };
        }
      } elsif (exists $result->{ $key }{ member } and ref($result->{ $key }{ member }) eq 'ARRAY'){
        if ($class->meta->get_attribute($key)->type_constraint =~ m/^ArrayRef\[(.*)\]/) {
          my $att_class = $1;
          if ($att_class eq 'HashRef') {
            warn "Hey!!! I found a HashRef Attribute!!!";
            $args{ $key } = $result->{ $key };
          } else {
            $args{ $key } = [ map { $att_class->from_result( $_ ) } @{ $result->{ $key }{ member } } ];
          }
        } else {
          die "Found a member in the result, but the attribute $key isn't an ArrayRef";
        }
      } elsif (exists $result->{ $key }{ member } and ref($result->{ $key }{ member }) eq 'HASH'){
        if ($class->meta->get_attribute($key)->type_constraint =~ m/^ArrayRef\[(.*)\]/) {
          my $att_class = $1;
          $args{ $key } = [ $att_class->from_result( $result->{ $key }{ member } ) ];
        } else {
          die "Found a member in the result, but the attribute $key isn't an ArrayRef";
        }
      } elsif (exists $result->{ $key }{ member } and not ref($result->{ $key }{ member }) ) {
        $args{ $key } = [ $result->{ $key }{ member } ];
      } elsif (exists $result->{ $key }{ entry }) {
        my $att_class = $class->meta->get_attribute($key)->type_constraint->class;
        $args{ $key } = $att_class->result_to_args( $result->{ $key }{ entry } ); 
      } elsif (ref($result->{ $key }) eq 'HASH') {
        my $att_class = $class->meta->get_attribute($key)->type_constraint;
        $att_class->new(%{ $result->{ $key } });
      } else {
        die "not implemented yet: $key $result->{ $key } ...";
      }
    }
    return %args;
  }

  sub from_result {
    my ($class, $result) = @_;
    my %args = $class->result_to_args($result, $class);
    return $class->new(%args);
  }
}


