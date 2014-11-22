package TestCaller {
  use Moose::Role;
  with 'Paws::Net::Caller';
  use File::Slurp;
  use YAML qw/DumpFile/;

  has _doing_call => (is => 'rw', clearer => '_doing_call_clear');

  before do_call => sub {
    my ($self, $call) = @_;
    $self->_doing_call($call);
  };

  after do_call => sub {
    my ($self) = @_;
    $self->_doing_call_clear;
  };

  before _process_response => sub {
    my ($self, $data) = @_;
    my $service = $self->service;

    # Derive the name of the class through introspection
    my ($service_class) = $self->meta->superclasses;
    ($service_class) = $service_class->meta->superclasses;
    $service_class =~ s/^Paws:://;

    my $call = $self->_doing_call->_api_call;

    my $extension;
    if ($self->does('Paws::Net::JsonCaller')){
      $extension = 'json';
    } elsif ($self->does('Paws::Net::QueryCaller')) {
      $extension = 'xml';
    } else {
      die "Unknown caller type";
    }

    my $pretty_call = $call;
    $pretty_call =~ s/([A-Z]+)([a-z])/ "-" . lc($1) . $2 /ge;

    my $test_file = "t/10_responses/" . lc($service) . "$pretty_call.$extension";
    my $test = {
       call => $call,
       service => $service_class,
       tests => [
         { expected => '', op => 'eq', path => '' }
       ]
    };

    DumpFile("$test_file\.test\.yml", $test);

    write_file($test_file, $data);
  }; 
}

1;
