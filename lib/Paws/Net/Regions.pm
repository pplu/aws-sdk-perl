package EndpointResolver
{

  use v5.10.1;
  use Moose;
  use JSON;

  has 'rules', is => 'rw', isa => 'Str', required => 1;

  has 'default_scheme', is => 'ro', isa => 'Str', default => 'https';

  has 'json', is => 'ro', default  => sub {
    my $self = shift;
    my $json = JSON->new->pretty;
    $json = $json->relaxed([1]); # At some point input did fail without this
    local $/;
    open my $fh, '<', $self->{rules}
      or die "Could not open json: $self->{rules}";
      $json= <$fh>;
    close $fh or die "Whatever";
    decode_json($json);
  };

  sub get_rules_for_service {
    my $self = shift;
    my $service_name  = shift;
    return $self->json->{$service_name};
  }

  sub construct_endpoint {
    my $self = shift;
    my $service = shift;
    my $region = shift;
    my %args = @_;
    $args{scheme} = $self->{default_sheme}
      unless defined $args{scheme};
    my @service_rules = $self->get_rules_for_service($service);
    my $endpoint = $self->_match_rules(@service_rules, $region, %args);
    $endpoint = $self->_match_rules('_default',$region, %args)
      unless defined $endpoint;

    if ( ! defined $endpoint ) {
      if ( ! defined $region ) {
        die "NoRegionError()";
      } else {
        die "UnkownEndpointError(service $service. region: $region)"
      }
    }

    return $endpoint;
  }

  sub _match_rules {
    my ( $self, @service_rules, $region, %args ) = @_;
    return unless scalar(@service_rules) gt 0;
    for my $rule ( @service_rules ) {
      #next unless defined $rule and defined $region;
      if ( $self->_matches_rule($rule, $region, %args) ) {
        for my $entry (@{ $rule }) {
          if ( defined $entry->{properties} ) {
            encode_json($entry);
          } else {
            print "{ uri: " . $entry->{uri} . " }\n";
          }
        }
      }
    }
  }

  sub _matches_rule {
    my( $self, $rule, $region, %args ) = @_;
    for my $maybe (@{ $rule }) {
      next unless defined $maybe->{constraints};
      if ( $self->_matches_constraint(
             $region, $maybe->{constraints}, %args)) {
        return;
      }
    }
    return 1;
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
    my ($self, $region, @constraint, %args ) = @_;
    my $func  = $constraint[0][0][1];
    my $value = $constraint[0][0][2];
    return $constraint_funcs{$func}->($region,$value);
  }
}

1;

