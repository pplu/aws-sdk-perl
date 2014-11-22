package Paws::API::UnwrappedParser {
  use Moose::Role;
  use String::Util qw/trim/;
  use Module::Runtime qw//;
  sub result_to_args {
    my ($class, $result) = @_;
    my %args;

    foreach my $att ($class->meta->get_attribute_list) {
      next if (not my $meta = $class->meta->get_attribute($att));
      my $key = $meta->does('Paws::API::Attribute::Trait::Unwrapped') ? $meta->xmlname : $att;

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

1;
