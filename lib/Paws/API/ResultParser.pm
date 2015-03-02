package Paws::API::ResultParser {
  use Moose::Role;
  use String::Util qw/trim/;
  use Module::Runtime qw//;

  sub result_to_args {
    my ($class, $result) = @_;
    my %args;

    foreach my $att ($class->meta->get_attribute_list) {
      next if (not my $meta = $class->meta->get_attribute($att));

      my $key = $meta->does('Paws::API::Attribute::Trait::Unwrapped') ? $meta->xmlname : $att;
      my $att_type = $meta->type_constraint;

      #use Data::Dumper;
      #print STDERR "GOING TO DO AN $att_type\n";
      #print STDERR "VALUE: " . Dumper($result);

      # We'll consider that an attribute without brackets [] isn't an array type
      if ($att_type !~ m/\[.*\]$/) {
        my $value = $result->{ $key };
        my $value_ref = ref($value);

        if ($att_type =~ m/\:\:/) {
          # Make the att_type stringify for module loading
          Module::Runtime::require_module("$att_type");
          if (defined $value) {
            if (not $value_ref) {
              $args{ $att } = $value;
            } else {
              my $att_class = $att_type->class;

              if ($att_class->does('Paws::API::StrToObjMapParser')) {
                my $xml_keys = $att_class->xml_keys;
                my $xml_values = $att_class->xml_values;

                if ($value_ref eq 'HASH') {
                  if (exists $value->{ member }) {
                    $value = $value->{ member };
                  } elsif (exists $value->{ entry }) {
                    $value = $value->{ entry  };
                  } elsif (keys %$value == 1) {
                    $value = $value->{ (keys %$value)[0] };
                  } else {
                    #die "Can't detect the item that has the array in the response hash";
                  }
                  $value_ref = ref($value);
                }
        
                my $inner_class = $att_class->meta->get_attribute('Map')->type_constraint->name;
                ($inner_class) = ($inner_class =~ m/\[(.*)\]$/);
                Module::Runtime::require_module("$inner_class");
                if ($value_ref eq 'ARRAY') {
                  $args{ $att } = $att_class->new(Map => { map { ( $_->{ $xml_keys } => $inner_class->new(result_to_args($inner_class, $_->{ $xml_values })) ) } @$value } );
                } elsif ($value_ref eq 'HASH') {
                  $args{ $att } = $att_class->new(Map => { $value->{ $xml_keys } => $inner_class->new(result_to_args($inner_class, $value->{ $xml_values })) });
                } elsif (not defined $value){
                  $args{ $att } = $att_class->new(Map => {});
                }
              } elsif ($att_class->does('Paws::API::StrToStrMapParser')) {
                my $xml_keys = $att_class->xml_keys;
                my $xml_values = $att_class->xml_values;

                if ($value_ref eq 'HASH') {
                  if (exists $value->{ member }) {
                    $value = $value->{ member };
                  } elsif (exists $value->{ entry }) {
                    $value = $value->{ entry  };
                  } elsif (keys %$value == 1) {
                    $value = $value->{ (keys %$value)[0] };
                  } else {
                    #die "Can't detect the item that has the array in the response hash";
                  }
                  $value_ref = ref($value);
                }
        
                if ($value_ref eq 'ARRAY') {
                  $args{ $att } = $att_class->new(Map => { map { ( $_->{ $xml_keys } => $_->{ $xml_values } ) } @$value } );
                } elsif ($value_ref eq 'HASH') {
                  $args{ $att } = $att_class->new(Map => { $value->{ $xml_keys } => $value->{ $xml_values } } );
                }
              } elsif ($att_class->does('Paws::API::MapParser')) {
                my $xml_keys = $att_class->xml_keys;
                my $xml_values = $att_class->xml_values;

                if ($value_ref eq 'HASH') {
                  if (exists $value->{ member }) {
                    $value = $value->{ member };
                  } elsif (exists $value->{ entry }) {
                    $value = $value->{ entry  };
                  } elsif (keys %$value == 1) {
                    $value = $value->{ (keys %$value)[0] };
                  } else {
                    #die "Can't detect the item that has the array in the response hash";
                  }
                  $value_ref = ref($value);
                }
        

                $args{ $att } = $att_class->new(map { ($_->{ $xml_keys } => $_->{ $xml_values }) } @$value);
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
        }
      } elsif (my ($type) = ($att_type =~ m/^ArrayRef\[(.*)\]$/)) {
        my $value = $result->{ $att };
        $value = $result->{ $key } if (not defined $value and $key ne $att);
        my $value_ref = ref($value);

        if ($value_ref eq 'HASH') {
          if (exists $value->{ member }) {
            $value = $value->{ member };
          } elsif (exists $value->{ entry }) {
            $value = $value->{ entry  };
          } elsif (keys %$value == 1) {
            $value = $value->{ (keys %$value)[0] };
          } else {
            #die "Can't detect the item that has the array in the response hash";
          }
          $value_ref = ref($value);
        }
 
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
