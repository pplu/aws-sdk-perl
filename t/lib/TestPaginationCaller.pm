package TestPaginationCaller;
  use Moose;
  with 'Paws::Net::RetryCallerRole','Paws::Net::CallerRole';
  use Paws::Net::APIResponse;
  #use TestFromArray;
  use Test::More;
  use Test::Deep qw(cmp_deeply);
  use JSON;
  use Carp qw(croak);
  use Data::Dumper;

  has request       => ( is => 'ro',isa => 'HashRef', required => 1);
  has request_test  => ( is => 'ro',isa => 'TestFromArray', required => 1);
  has call_test     => ( is => 'ro',isa => 'TestFromArray', required => 1);
  has response      => ( is => 'ro', isa => 'HashRef', required => 1);
  has response_test => ( is => 'ro', isa => 'TestFromArray', required => 1);

  has 'counter' => (
    traits  => ['Counter'],
    is      => 'ro',
    isa     => 'Num',
    default => 0,
    handles => {
        inc_counter   => 'inc',
        dec_counter   => 'dec',
        reset_counter => 'reset',
    },
  );
  
  has debug => ( is => 'rw', default => 0 );

  sub do_call {
    my ($self, $service, $call_object) = @_;
    my $request  = $service->prepare_request_for_call($call_object);
	my $test = $self->request_test;
    $self->_do_tests($test,$request);
	my $response = $self->response;

    if (ref($response->{headers}) eq 'ARRAY') { $response->{headers} = {} }

    my $res = $self->send_request($service,$call_object);

    return $service->response_to_object->process($call_object, $res);
  }


 sub send_request {
    my ($self, $service, $call_object) = @_;
  
	my $test = $self->call_test;
    $self->_do_tests($self->call_test,$call_object); 
    my $response = $self->response;
    
    return Paws::Net::APIResponse->new(
      status  => $response->{status},
      content => $response->{content},
      headers => $response->{headers}
    );
  };
  
   
  sub _do_tests {
     my $self = shift;
     my ($test,$res) = @_;    
      
      foreach my $t ( @{ $test->tests } ) {
            my $got;
            my $path;
            if ( defined $t->{path} ) {

                $path = $t->{path};
                if ( $path eq 'url' ) {
                    my $url = $res->url;
                    ok(
                        index( $url, $t->{expected} ) != -1,
                        "Have " . $t->{expected} . " in the URL"
                    );
                }
                elsif ( $path eq 'uri' ) {
                    my $uri = $res->uri;
                    ok(
                        index( $uri, $t->{expected} ) != -1,
                        "Have " . $t->{expected} . " in the URI"
                    );
                }
                else {
                    eval {

                        
                        if ( exists( $t->{key} ) ) {
                            my $hash = $res->$path;
                            $got = $hash->{ $t->{key} }
                              if ( exists( $hash->{ $t->{key} } ) );
                            $path = "Param->key: " . $t->{key};
                        }
                        else {
                            $got = $res->$path;
                        }
                    };
                    if ($@) {
                        my $message = $@;
                        chomp $message;
                        ok( 0, "Exception accessing $t->{path}: $message" );
                    }
                    if ( not defined $got and not defined $t->{expected} ) {
                        ok( 1, "Got undef on $path from request" );
                    }
                    else {
                        
                        if (exists($t->{type}) and $t->{type} eq 'json'){
                            
                            my $got_hash = decode_json($got);
                            my $expected_hash = decode_json($t->{expected});
                             cmp_deeply($got_hash, $expected_hash,"Got $path Json from request");
                        }
                        else {
                            
                            cmp_ok( $got, $t->{op}, $t->{expected},
                               "Got $path $t->{op} from request" );
                            
                        }
                    }
                }

            }
            else {
                die
"Didn't know how to get a request to compare to. Check that test has path or dpath entry";
            }
        }
  }
  
  sub _response_test {
    
    
  }
  no Moose;
1;
