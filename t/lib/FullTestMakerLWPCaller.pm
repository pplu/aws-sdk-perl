package FullTestMakerLWPCaller;

# A copy of TestMakerLWPCaller, but using Paws::Net::LWPCaller and makeing
# both a request and a response test
use Moose;
extends 'Paws::Net::LWPCaller';
use Carp;
use feature qw(say);
use JSON;
use YAML qw/DumpFile Dump/;
use DataStruct::Flat;
use Data::Dumper;

has [
    qw(make_response_test
      make_request_test
      warn_response
      warn_request
      )
  ] => (
    is      => 'ro',
    isa     => 'Bool',
    default => 0,
  );

has [
    qw(response_test_dir
      request_test_dir
      )
  ] => (
    is      => 'ro',
    isa     => 'Str',
    default => "",
  );

override do_call => sub {
    my ( $self, $service, $call_object ) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object);

    warn( "FullTestMakerLWPCaller: Raw request=" . Dumper($requestObj) )
      if ( $self->warn_request() );

    $self->write_request_test( $call_object, $requestObj, $service )
      if ( $self->make_request_test() );

    my $headers = $requestObj->header_hash;

    # HTTP::Tiny has made setting Host header illegal. It derives Host from URL
    delete $headers->{Host};

    my $method   = lc $requestObj->method;
    my $response = $self->ua->$method(
        $requestObj->url,
        %$headers,
        ( defined $requestObj->content )
        ? ( content => $requestObj->content )
        : (),
    );

    warn( "FullTestMakerLWPCaller: Raw Response=" . Dumper($response) )
      if ( $self->warn_response() );

    my $lcheaders = {};
    $response->headers->scan( sub { $lcheaders->{ lc $_[0] } = $_[1] } );

    my $net_response = Paws::Net::APIResponse->new(
        status  => $response->code,
        content => $response->content,
        headers => $lcheaders,
    );

    my $result =
      $service->response_to_object->process( $call_object, $net_response );

    $self->write_response_test( $call_object, $net_response, $result, $service )
      if ( $self->make_response_test );

    return $result;
};

sub write_request_test {

    my $self = shift(@_);
    my ( $call, $request, $service ) = @_;
    my $skip_header_keys = {
        '::std_case'    => 1,
        'authorization' => 1,
        'date'          => 1,
        'x-amz-date'    => 1,
    };

    my $call_params = {%$call};

    my $file_name =
        't/09_requests/'
      . $service->service 
      . '-'
      . lc( $call->_api_call 
      . '.request' );
    
    my $method = uc($request->method());
    
    my $test_name = $file_name . ".test.yml";

    my $test_hash = {
        call    => $call->_api_call,
        service => uc( $service->service ),
        tests   => [
            {
                expected => $request->content,
                op       => 'eq',
                path     => 'content'
            },
            {
                expected => $method,
                op       => 'eq',
                path     => 'method'
            }
        ]
    };

    my @tests = ();

    foreach my $path (qw[headers parameters]) {
        my $attribute_hash = $request->$path;
        foreach my $key ( sort( keys( %{$attribute_hash} ) ) ) {
            next
              if ( $path eq "headers" and exists( $skip_header_keys->{$key} ) );

            push(
                @{ $test_hash->{tests} },
                {
                    expected => $attribute_hash->{$key},
                    op       => 'eq',
                    key      => $key,
                    path     => $path
                }
            );
        }
    }

    my @url = split( /\?/, $request->url );
    my @uri = split( /\?/, $request->uri );
    push(
        @{ $test_hash->{tests} },
        {
            expected => $url[0],
            op       => 'eq',
            path     => "url"
        }
    );
    if ( $uri[0] ) {
        push(
            @{ $test_hash->{tests} },
            {
                expected => $uri[0],
                op       => 'eq',
                path     => "url"
            }
        );
        push(
            @{ $test_hash->{tests} },
            {
                expected => $uri[0],
                op       => 'eq',
                path     => "uri"
            }
        );

        if ( index( "&", $uri[1] ) != -1 ) {
            my @params = split( "&", $uri[1] );
            foreach my $param (@params) {
                push(
                    @{ $test_hash->{tests} },
                    {
                        expected => $param,
                        op       => 'eq',
                        path     => "uri"
                    }
                );
            }
        }
        else {
            push(
                @{ $test_hash->{tests} },
                {
                    expected => $uri[1],
                    op       => 'eq',
                    path     => "uri"
                }
            );
        }
    }

    YAML::DumpFile( $self->request_test_dir() . "/" . $file_name,
        $call_params );
    YAML::DumpFile( $self->request_test_dir() . "/" . $test_name, $test_hash );
    say("Request Test: '$test_name' Written!")
}

sub write_response_test {
    my $self = shift(@_);
    my ( $call, $response, $result_oject, $service ) = @_;
    my $response_hash = {
        content => $response->content,
        headers => {'x-amz-request-id'=>$response->{headers}->{'x-amz-request-id'}},
        status  => $response->status
    };

    my $result_hash = $service->to_hash($result_oject);
    my $file_name =
        't/10_responses/'
      . $service->service . '-'
      . lc( $call->_api_call . '.response' );
    my $test_name = $file_name . ".test.yml";

    my $test_hash = {
        call    => $call->_api_call,
        service => uc( $service->service ),
    };
    my $o = DataStruct::Flat->new(
        {
            HashDelimiter  => '.',
            ArrayDelimiter => '.',
        }
    );

    my $flat = $o->flatten($result_hash);

    foreach my $path ( sort( keys( %{$flat} ) ) ) {
        push(
            @{ $test_hash->{tests} },
            {
                expected => $flat->{$path},
                op       => 'eq',
                path     => $path
            }
        );
    }

    push(
            @{ $test_hash->{tests} },
            {
                expected => $response->{headers}->{'x-amz-request-id'},
                op       => 'eq',
                path     => '_request_id'
            }
        );  #always have at least one of these

    YAML::DumpFile( $self->request_test_dir() . "/" . $file_name,
        $response_hash );
    YAML::DumpFile( $self->request_test_dir() . "/" . $test_name, $test_hash );
    say("Response Test: '$test_name' Written!")

}
1;
