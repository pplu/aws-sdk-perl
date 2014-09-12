package Net::AWS::Caller::Attribute::Trait::NameInRequest {
  use Moose::Role;
  use Moose::Util;
  Moose::Util::meta_attribute_alias('NameInRequest');
  has request_name => (is => 'ro', isa => 'Str');
}

package AWS::API::Attribute::Trait::Unwrapped {
  use Moose::Role;
  use Moose::Util;
  Moose::Util::meta_attribute_alias('Unwrapped');
  has xmlname => (is => 'ro', isa => 'Str');
}

package AWS::Common::Tag {
  use Moose;
  with 'AWS::API::ResultParser';
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

package AWS::API::RegionalEndpointCaller {
  use Moose::Role;
  has region => (is => 'rw', isa => 'Str');
  requires 'service';

  sub endpoint_host {
    my $self = shift;
    return sprintf '%s.%s.amazonaws.com', $self->service, $self->region;
  }

  sub _api_endpoint {
    my $self = shift;
    return sprintf '%s://%s/', 'https', $self->endpoint_host;
  }
}

package AWS::API::SingleEndpointCaller {
  use Moose::Role;
  requires 'service';

  sub region {
    # http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    # For services that use a globally unique endpoint, such as IAM, use us-east-1
    return 'us-east-1';
  }

  sub endpoint_host {
    my $self = shift;
    return sprintf '%s.amazonaws.com', $self->service;
  }

  sub _api_endpoint {
    my $self = shift;
    return sprintf '%s://%s/', 'https', $self->endpoint_host;
  }
}

package AWS::API::MapParser {
  use Moose::Role;
}

package AWS::API::StrToObjMapParser {
  use Moose::Role;
}

package AWS::API::StrToStrMapParser {
  use Moose::Role;
}

package AWS::API::UnwrappedParser {
  use Moose::Role;
  use String::Util qw/trim/;
  use Module::Runtime qw//;
  sub result_to_args {
    my ($class, $result) = @_;
    my %args;

    foreach my $att ($class->meta->get_attribute_list) {
      next if (not my $meta = $class->meta->get_attribute($att));
      my $key = $meta->does('AWS::API::Attribute::Trait::Unwrapped') ? $meta->xmlname : $att;

      #use Data::Dumper;
      #print STDERR "ATTRIBUTE: $att RESULTKEY: $key: ", $meta->type_constraint, " result: ", Dumper($result->{$key});
      my $att_type = $meta->type_constraint;

      my $value = $result->{ $key };
      my $value_ref = ref($value);
      if ($value_ref eq 'HASH') {
        if (exists $value->{ item }) {
          $value = $value->{ item };
        } elsif (exists $value->{ entry }) {
          $value = $value->{ entry  };
        }
      }
      $value_ref = ref($value);

      #print STDERR "GOING TO DO AN $att_type\n";
      #print STDERR "VALUE: " . Dumper($value);
      #print STDERR "REF de \$value" . ref($value) . "\n";

      # We'll consider that an attribute without brackets [] isn't an array type
      if ($att_type !~ m/\[.*\]$/) {
        if ($att_type =~ m/\:\:/) {
          # Make the att_type stringify for module loading
          Module::Runtime::require_module("$att_type");
          if (defined $value) {
            if (not $value_ref) {
              $args{ $att } = $value;
            } else {
              #my $class = ("$att_type" eq 'Moose::Meta::TypeConstraint::Class') ? $att_type->class : $att_type;
              my $att_class = $att_type->class;
              $args{ $att } = $att_class->new(result_to_args($att_class, $value));
            }
          }
        } else {
          if (defined $value) {
            if ($att_type eq 'Bool') {
              if ($value eq 'true') {
                $args{ $att } = 1;
              } elsif ($value eq 'false') {
                $args{ $att } = 0;
              } elsif ($value == 1) {
                $args{ $att } = 1;
              } else {
                $args{ $att } = 0;
              }
            } else {
              $args{ $att } = trim($value);
            }
          }
        }
      } elsif (my ($type) = ($att_type =~ m/^ArrayRef\[(.*)\]$/)) {
        if ($type =~ m/\:\:/) {
          Module::Runtime::require_module($type);
          if (not defined $value) {
            $args{ $att } = [ ];
          } elsif ($value_ref eq 'ARRAY') {
            $args{ $att } = [ map { $type->new(result_to_args($type, $_ )) } @$value ] ;
          } elsif ($value_ref eq 'HASH') {
            $args{ $att } = [ $type->new(result_to_args($type, $value )) ];
          }
        } else {
          if (defined $value){
            if ($value_ref eq 'ARRAY') {
              $args{ $att } = $value; 
            } else {
              $args{ $att } = [ $value ];
            }
          }
        }
      }
    }

    return %args;
  }

  sub from_result {
    my ($class, $result) = @_;
    return $class->new(result_to_args($class, $result));
  }
}

package AWS::API::ResultParser {
  use Moose::Role;
  use String::Util qw/trim/;
  use Module::Runtime qw//;

  sub result_to_args {
    my ($class, $result) = @_;
    my %args;

    foreach my $att ($class->meta->get_attribute_list) {
      next if (not my $meta = $class->meta->get_attribute($att));

      my $key = $meta->does('AWS::API::Attribute::Trait::Unwrapped') ? $meta->xmlname : $att;

      #use Data::Dumper;
      #print STDERR "ATTRIBUTE: $att RESULTKEY: $key: ", $meta->type_constraint, " result: ", Dumper($result->{$key});
      my $att_type = $meta->type_constraint;

      my $value = $result->{ $key };
      my $value_ref = ref($value);
      if ($value_ref eq 'HASH') {
        if (exists $value->{ member }) {
          $value = $value->{ member };
        } elsif (exists $value->{ entry }) {
          $value = $value->{ entry  };
        }
      }
      $value_ref = ref($value);

      #print STDERR "GOING TO DO AN $att_type\n";
      #print STDERR "VALUE: " . Dumper($value);
      #print STDERR "REF de \$value" . ref($value) . "\n";

      # We'll consider that an attribute without brackets [] isn't an array type
      if ($att_type !~ m/\[.*\]$/) {
        if ($att_type =~ m/\:\:/) {
          # Make the att_type stringify for module loading
          Module::Runtime::require_module("$att_type");
          if (defined $value) {
            if (not $value_ref) {
              $args{ $att } = $value;
            } else {
              my $att_class = $att_type->class;

              if ($att_class->does('AWS::API::StrToObjMapParser')) {
                my $inner_class = $att_class->meta->get_attribute('Map')->type_constraint->name;
                ($inner_class) = ($inner_class =~ m/\[(.*)\]$/);

                if ($value_ref eq 'ARRAY') {
                  $args{ $att } = $att_class->new(Map => { map { ( $_->{ key } => $inner_class->new(result_to_args($inner_class, $_->{ value })) ) } @$value } );
                } elsif ($value_ref eq 'HASH') {
                  $args{ $att } = $att_class->new(Map => { $value->{ key } => $inner_class->new(result_to_args($inner_class, $value->{ value })) });
                }
              } elsif ($att_class->does('AWS::API::StrToStrMapParser')) {
                if ($value_ref eq 'ARRAY') {
                  $args{ $att } = $att_class->new(Map => { map { ( $_->{ key } => $_->{ value } ) } @$value } );
                } elsif ($value_ref eq 'HASH') {
                  $args{ $att } = $att_class->new(Map => { $value->{ key } => $value->{ value } } );
                }
              } elsif ($att_class->does('AWS::API::MapParser')) {
                $args{ $att } = $att_class->new(map { ($_->{ key } => $_->{ value }) } @$value);
              } else {
                $args{ $att } = $att_class->new(result_to_args($att_class, $value));
              }
            }
          }
        } else {
          if (defined $value) {
            if ($att_type eq 'Bool') {
              if ($value eq 'true') {
                $args{ $att } = 1;
              } elsif ($value eq 'false') {
                $args{ $att } = 0;
              } elsif ($value == 1) {
                $args{ $att } = 1;
              } else {
                $args{ $att } = 0;
              }
            } else {
              $args{ $att } = trim($value);
            }
          }

          #$args{ $att } = $result->{ $att } if (defined $result->{ $att });
        }
      } elsif (my ($type) = ($att_type =~ m/^ArrayRef\[(.*)\]$/)) {
        if ($type =~ m/\:\:/) {
          Module::Runtime::require_module($type);
          if (not defined $value) {
            $args{ $att } = [ ];
          } elsif ($value_ref eq 'ARRAY') {
            $args{ $att } = [ map { $type->new(result_to_args($type, $_ )) } @$value ] ;
          } elsif ($value_ref eq 'HASH') {
            $args{ $att } = [ $type->new(result_to_args($type, $value )) ];
          }
        } else {
          if (defined $value){
            if ($value_ref eq 'ARRAY') {
              $args{ $att } = $value; 
            } else {
              $args{ $att } = [ $value ];
            }
          }
        }
      }
    }
    return %args;
  }

  sub from_result {
    my ($class, $result) = @_;
    return $class->new(result_to_args($class, $result));
  }
}

1;
