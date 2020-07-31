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
our $SKIP_HEADER_KEYS = {
    '::std_case'              => 1,
    'authorization'           => 1,
    'date'                    => 1,
    'x-amz-date'              => 1,
    'client-ssl-socket-class' => 1,
    'client-ssl-cert-subject' => 1,
    'connection'              => 1,
    'client-ssl-cipher'       => 1,
    'client-peer'             => 1,
    'x-amz-id-2'              => 1,
    'client-date'             => 1,
    'cllient-ssl-cert-issuer' => 1,
    'x-amzn-requestid'        => 1,

};

has [
    qw(make_response_test
      make_request_test
      make_pagination_test
      warn_response
      warn_request
      )
  ] => (
    is      => 'ro',
    isa     => 'Bool',
    default => 0,
  );

has [qw(pagination_array)] => (
    is  => 'rw',
    isa => 'ArrayRef',
     
);

has [qw(paginator_responses paginator_requests paginator_raw_responses page_arrays)] => (
    is      => 'rw',
    isa     => 'ArrayRef',
    default => sub { [] }
);
has [
    qw(response_test_dir
      request_test_dir
      paginator_test_dir
      pagination_method
      pagination_more
      )
  ] => (
    is      => 'ro',
    isa     => 'Str',
    default => "",
  );

override do_call => sub {
    my ( $self, $service, $call_object ) = @_;
    my $requestObj = $service->prepare_request_for_call($call_object);
    warn(
        "FullTestMakerLWPCaller: $service Raw request=" . Dumper($requestObj) )
      if ( $self->warn_request() );

  
    my @services = split( "::", ref($service) );

    if ( $self->make_pagination_test() ) {

        die "Turn off make_request_test when using make_paginatoion_test"
          if ( $self->make_request_test() );
        die "Turn off make_response_test when using make_paginatoion_test"
          if ( $self->make_response_test() );

        die "pagination_method is required with using make_paginatoion_test "
          unless ( $self->pagination_method() );

        die "pagination_array is required with using make_paginatoion_test"
          unless ( $self->pagination_array() );

        #warn("make_paginatoion_test=".$self->make_pagination_test());
    }

    $self->write_request_test( $call_object, $requestObj, $service,
        $services[1] )
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
    $self->write_response_test( $call_object, $net_response, $result, $service,
        $services[1] )
      if ( $self->make_response_test );

    $self->gather_pagination_test( $call_object, $net_response, $result,
        $service, $services[1],$response)
      if ( $self->make_pagination_test() );

    return $result;
};

sub gather_pagination_test {
    my $self = shift;
    my ( $call, $net_response, $result_oject, $service, $load_service,$raw_response ) = @_;

    my $more = $self->pagination_more;

    my $call_params = $service->to_hash($call);

    push( @{ $self->paginator_requests },  $call_params );
    push( @{ $self->paginator_responses }, $net_response );
    push( @{ $self->paginator_raw_responses}, $raw_response );
    my $pagination_array =  $self->pagination_array();
    
    warn("JSP gather_pagination_test=".$pagination_array);
       warn("JSP gather_pagination_test=".Dumper($pagination_array));
     warn("JSP gather_pagination_test=".Dumper( $self->pagination_array()));
     
    push(@{ $self->page_arrays},$pagination_array);
    
    $pagination_array = ();
    
    $self->pagination_array($pagination_array);
    my $pagination_array =  $self->pagination_array();
    
     warn("JSP gather_pagination_test=".Dumper($pagination_array));
    exit;
    $self->write_pagination_test($service)
      unless ( $result_oject->$more );

}

sub write_pagination_test {
    my $self = shift(@_);
    my ($service) = @_;

    my $requests    = $self->paginator_requests();
    my $responses   = $self->paginator_responses();
    my $paginations = $self->pagination_array();
    my $page_arrays = $self->page_arrays();
    my $raw_responses = $self->paginator_raw_responses();
    my $call_hash;
    my $o = DataStruct::Flat->new(
        {
            HashDelimiter  => ',',
            ArrayDelimiter => '.',
        }
    );
    my $test_hash = {
        call    => $self->pagination_method,
        service => $service->service,
        request => {
            calls => [],
            pages => []
        },
        response => { pages => [] }
    };

    my $file_name =
        't/30_pagination/'
      . $service->service . '-'
      . lc( $self->pagination_method . '.pagination' );

    warn("JPS here file_name=$file_name");
my $counter=1;
    foreach my $request ( @{$requests} ) {
        my $response = shift( @{$responses} );
        my $raw_response =  shift( @{$raw_responses} );
        my $pagination = shift( @{$paginations} );
        my $page_array  = shift(@{$page_arrays});
        warn("response=".Dumper($response));
        warn("raw_response=".Dumper($raw_response));
        warn("request=".Dumper($request));
        
        warn("pagination=".Dumper($pagination));
         warn("page_array=".Dumper($page_array));
 die;
        my $call_test = [];
        my $headers         = $response->headers();
        my $request_headers = $raw_response->request()->headers();
        
        my $page_test = [ 
         {
          expected => $raw_response->request->method,
         op       => 'eq',
         path     => 'method'
         }];
        my $content_test =  {
         expected => $raw_response->request->content,
         op       => 'eq',
         path     => 'content'
         };
         $content_test->{type} ='json'
           if ($request_headers->{'content-type'} eq 'application/x-amz-json-1.1');

        push(@{$page_test},$content_test);
        $self->_clean_headers($response);
      

        push( @{ $call_hash->{requests} }, $request );

        push(
            @{ $call_hash->{responses} },
            {
                content => $response->content,
                headers => {%$headers},
                status  => $response->status
            }
        );

#        warn( "call paginator_requests=" . Dumper($call_hash) );
        
        my $flat = $o->flatten($request);
        
        foreach my $path ( sort( keys( %{$flat} ) ) ) {
          push(
            @{ $call_test },
            {
                expected => $flat->{$path},
                op       => 'eq',
                path     => $path
            }
        );
        }
        
        push(@{$test_hash->{request}->{calls}},{tests=>$call_test});
        push(@{$test_hash->{request}->{pages}},{tests=>$page_test});
        
        warn( "call test_hash=".Dumper($test_hash));

        # tests   => [
       
        # ]
        $counter++;
        die 'stop for now'
          if ($counter >2);
    }

}

sub _clean_headers {
    my $self = shift;
    my ($response) = @_;
    foreach my $key ( %{$SKIP_HEADER_KEYS} ) {
        delete( $response->{headers}->{$key} );

    }
}

sub write_request_test {

    my $self = shift(@_);
    my ( $call, $request, $service, $load_service ) = @_;

    my $call_params = $service->to_hash($call);

    my $file_name =
        't/09_requests/'
      . $service->service . '-'
      . lc( $call->_api_call . '.request' );

    my $method = uc( $request->method() );

    my $test_name = $file_name . ".test.yml";
    my $test_hash = {
        call    => $call->_api_call,
        service => $load_service,
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
              if ( $path eq "headers" and exists( $SKIP_HEADER_KEYS->{$key} ) );

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

    #warn("JSP call_params=".Dumper($call_params));
    YAML::DumpFile( $self->request_test_dir() . "/" . $file_name,
        $call_params );
    YAML::DumpFile( $self->request_test_dir() . "/" . $test_name, $test_hash );

    #say("Request Test: '$test_name' Written!")
}

sub write_response_test {
    my $self = shift(@_);
    my ( $call, $response, $result_oject, $service, $load_service ) = @_;
    my $headers       = $response->headers();
    my $response_hash = {
        content => $response->content,
        headers => {%$headers},

#{'x-amz-request-id'=>exists($response->{headers}->{'x-amz-request-id'})?$response->{headers}->{'x-amz-request-id'}:$response->{headers}->{'x-amzn-requestid'}},
        status => $response->status
    };

    my $result_hash = $service->to_hash($result_oject);
    my $file_name =
        't/10_responses/'
      . $service->service . '-'
      . lc( $call->_api_call . '.response' );
    my $test_name = $file_name . ".test.yml";

    my $test_hash = {
        call    => $call->_api_call,
        service => $load_service,
    };
    my $o = DataStruct::Flat->new(
        {
            HashDelimiter  => ',',
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
            expected => exists( $response->{headers}->{'x-amz-request-id'} )
            ? $response->{headers}->{'x-amz-request-id'}
            : $response->{headers}->{'x-amzn-requestid'},
            op   => 'eq',
            path => '_request_id'
        }
    );    #always have at least one of these

    YAML::DumpFile( $self->request_test_dir() . "/" . $file_name,
        $response_hash );
    YAML::DumpFile( $self->request_test_dir() . "/" . $test_name, $test_hash );

    #say("Response Test: '$test_name' Written!")

}
1;
