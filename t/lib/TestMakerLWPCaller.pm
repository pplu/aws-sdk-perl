package TestMakerLWPCaller {
  # A copy of TestMakerCaller, but using Paws::Net::LWPCaller
  use Moose;
  extends 'Paws::Net::LWPCaller';
  use Carp;
  use File::Slurp;
  use YAML qw/DumpFile/;
  use Hash::Flatten qw//;

  override do_call => sub {
    my ($self, $service, $call_object) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object); 

    my $headers = $requestObj->header_hash;
    # HTTP::Tiny has made setting Host header illegal. It derives Host from URL
    delete $headers->{Host};

    my $method = lc $requestObj->method;
    my $response = $self->ua->$method(
      $requestObj->url,
      %$headers,
      (defined $requestObj->content)?(content => $requestObj->content):(),
    );

    my $test_file_name = 't/10_responses/' . $service->service . '-' . lc($call_object->_api_call . '.response');
    write_file($test_file_name, $response->content);
    print "Written response to $test_file_name\n";
    my $service_class = $service->meta->name;
    $service_class =~ s/Paws\:\://;
    my $test = { call => $call_object->_api_call, service => $service_class, tests => [] };
    DumpFile("${test_file_name}.test.yml", $test);
    print "Written test skeleton to ${test_file_name}.test.yml\n";

    my $unserialized_struct;
    if ( $response->is_success ) {
        $unserialized_struct = $service->unserialize_response( $response->content );
    } else {
        #TODO: retry or croak based on error codes
        croak "POST Request failed: ", $response->code, " ", $response->message, " ",
          $response->content, "\n";
    }

    my $result = $service->response_to_object($unserialized_struct, $call_object);
    #TODO: build tests
    my $h = $service->to_hash($result);
    $h = Hash::Flatten::flatten($h, { HashDelimiter => '.', ArrayDelimiter => '.' });
    $test->{ tests } = [ map { { expected => $h->{ $_ }, op => 'eq', path => $_ } } keys %$h ];
    DumpFile("${test_file_name}.test.yml", $test);
    print "Written test case to ${test_file_name}.test.yml\n";
    return $result;
  };

}
