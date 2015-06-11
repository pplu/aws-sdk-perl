package Paws::Net::Regions {
  use Moose;
  use JSON;

  has 'rules', is => 'rw', isa => 'Str', required => 1;

  has 'default_scheme', is => 'ro', isa => 'Str', default => 'https';

  has 'json', is => 'ro', lazy => 1, default  => sub {
    my $self = shift;
    my $json = JSON->new->pretty;
    $json = $json->relaxed([1]); # At some point input did fail without this
    local $/ = undef;
    open my $fh, '<', $self->{rules}
      or die "Could not open json: $self->{rules}";
    $json = <$fh>;
    close $fh or die "Whatever";
    decode_json($json);
  };

  sub get_rules_for_service {
    my $self = shift;
    my $service_name  = shift;
print "SERVICE NAME: $service_name\n";
    return $self->json->{$service_name};
  }

  sub construct_endpoint {
    my $self = shift;
    my $service = shift;
    my $region = shift;
    my %args = @_;
    $args{scheme} = $self->{default_sheme}
      unless defined $args{scheme};

    my $service_rules = $self->get_rules_for_service($service);
    $service_rules = $self->get_rules_for_service('_default');

    my $endpoint_info = $self->_match_rules($service_rules, $region, %args);

    if ( not defined $endpoint_info ) {
      die "NoRegionError()";
    } else {
      die "UnkownEndpointError(service $service. region: $region)"
    }

    return $endpoint_info;
  }

  sub _match_rules {
    my ( $self, $service_rules, $region, %args ) = @_;

    return undef if (not defined $service_rules);
    return undef if scalar(@$service_rules) == 0;

    for my $rule ( @$service_rules ) {
      if ( $self->_matches_rule($rule, $region, %args) ) {
        return { uri => $rule->{ uri }, %{ $self->{ properties } } };
      }
    }
    return undef;
  }

  sub _matches_rule {
    my( $self, $rule, $region, %args ) = @_;
    for my $constraint (@{ $rule->{ constraints} }) {
      if ( $self->_matches_constraint($region, $constraint, %args)) {
        return 1;
      }
    }
    return 0;
  }

  sub _matches_constraint {
    my %constraint_funcs = (
      startsWith => sub {
        my ( $a, $v ) = @_;
        print "DEBUG: str $a starts with $v\n";
        $a =~ /^$v.*/i;
      },
      notStartsWith => sub {
        my ( $a, $v ) = @_;
        print "DEBUG str $a not starts with $v\n";
        $a !~ /^$v.*/i;
      },
      equals => sub {
        my ( $a, $v ) = @_;
        print "DEBUG str '$a' is equal to '$v'\n";
        $a =~ /^$v$/i;
      },
      notEquals => sub {
        # in the sample json, notEqual region's is always null
        # this needs review
        return;
       # my ( $a, $v ) = @_;
       # print "DEBUG str '' != $v\n";
       # '' !~ /^$v$/i;
      },
      oneOf => sub {
        my ( $a, @v ) = @_;
        print "DEBUG str $a in \@v\n";
        for my $b (@v) {
          return 1 if $a =~ /$b/;
        }
        return;
      }
    );
    my ($self, $region, $constraint, %args ) = @_;
    my $property = $constraint->[0];
    die "We only know how to apply constraints to region" if ($property ne 'region');
    my $func  = $constraint->[1];
    my $value = $constraint->[2];
    return $constraint_funcs{$func}->($region,$value);
  }
}

1;

