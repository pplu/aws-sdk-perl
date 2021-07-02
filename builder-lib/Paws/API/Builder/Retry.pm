package Paws::API::Builder::Retry {
  use Template;
  use autodie;
  use Path::Class::File;
  use JSON::MaybeXS;
  use Moose;

  has retry_definitions_file => (is => 'ro', required => 1);
  has retry_data => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    my $file = $self->retry_definitions_file;
    die "retry_definitions_file ($file) not found" if (not -e $file);
    my $f = Path::Class::File->new($file);
    return decode_json($f->slurp);
  });

  sub generated_retry_rules {
    my $self = shift;
    my $data = $self->retry_data;

    my @rules;

    for my $policy (sort keys %{$data->{retry}{__default__}{policies}}) {
      my $policy_value = $data->{retry}{__default__}{policies}{$policy};

      if (keys %$policy_value == 1 && (keys %$policy_value)[0] eq '$ref') {
        my $policy_template = $policy_value->{'$ref'};
        $policy_value = $data->{definitions}{$policy_template};
        if (!$policy_value) {
          die "unable to find reference to template $policy_template for default policy $policy";
        }
      }

      # validate that we really have a thing that looks like a policy
      if (!exists $policy_value->{applies_when}) {
        die "don't understand policy $policy when it doesn't have applies_when";
      }

      my $applies_when_keys = join(",", sort keys %{$policy_value->{applies_when}});

      push @rules, "# $policy";

      if ($applies_when_keys eq "response") {
        my $response_keys = join(",", sort keys %{$policy_value->{applies_when}{response}});
        if ($response_keys eq "http_status_code,service_error_code") {
          push @rules,
            sprintf("sub { defined \$_[0]->http_status and \$_[0]->http_status == %d and \$_[0]->code eq \"%s\" },",
              $policy_value->{applies_when}{response}{http_status_code},
              quotemeta($policy_value->{applies_when}{response}{service_error_code}));
        } elsif ($response_keys eq "http_status_code") {
          push @rules,
            sprintf("sub { defined \$_[0]->http_status and \$_[0]->http_status == %d },",
              $policy_value->{applies_when}{response}{http_status_code});
        } else {
          die "unsure how to handle $policy and applies_when->response = $response_keys";
        }
      } elsif ($applies_when_keys eq "socket_errors") {
        if (@{$policy_value->{applies_when}{socket_errors}} == 1 &&
            $policy_value->{applies_when}{socket_errors}[0] eq "GENERAL_CONNECTION_ERROR") {
          push @rules, "sub { \$_[0]->code eq 'ConnectionError' },";
        } else {
          die "unrecognized socket_errors for policy $policy";
        }
      }
    }

    return join("\n", map { (" " x 4) . $_ } @rules);
  }

  sub save_class {
    my ($self, $class_name, $content) = @_;
    return if (not defined $class_name);
    my @class_parts = split /\:\:/, $class_name;
    my $class_file_name = "auto-lib/" . ( join '/', @class_parts ) . ".pm";
    if (0) {#-e $class_file_name) { #not doing this, because there are unimportant differences in files
      {
      my $read_content = read_text($class_file_name);
      die "Non matching for $class_file_name: going to store $content\nvs stored: $read_content" if ($read_content ne $content);
      }
    }
    pop @class_parts;
    eval { mkdir "auto-lib/" . ( join '/', @class_parts ) };
    open my $file, ">", $class_file_name;
    print $file $content;
    close $file;
  }

  sub escape_pod {
    my ($string) = @_;
    my %char2names = reverse %Pod::Escapes::Name2character;
    my $rekeys = list2re(keys %char2names);
    $string =~ s/($rekeys)/E<$char2names{$1}>/g;
    return $string;
  }

  has template_path => (is => 'ro', required => 1);



  sub process_template {
    my ($self, $template, $vars) = @_;
    my $tt = Template->new(DEBUG => 1,INCLUDE_PATH => $self->template_path,
        FILTERS => { escape_pod => \&escape_pod });
    my $output = '';
    $tt->process($template, $vars, \$output) || die $tt->error();
    return $output;
  }

  sub process {
    my ($self) = @_;
    my $class = $self->process_template(
      'default/paws_api_retry_pm.tt',
      { c => $self }
    );
    $self->save_class('Paws::API::Retry', $class);
  }
}
1;
