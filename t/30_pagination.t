#!/usr/bin/env perl

use lib 't/lib';

use strict;
use warnings;
use v5.10;
use Test::More;
use Test::Exception;
use Data::Dumper;
use Test::Exception;
use YAML;
use TestFromArray;
use Paws;
use TestPaginationCaller;

my $debug = $ENV{DEBUG_TESTS} || 0;
my $aws = Paws->new( config => { credentials => 'Test::CustomCredentials' } );

use Data::Dumper;

my @files = @ARGV;
if ( not @files ) {
    push @files, sort glob("t/30_pagination/*.pagination");
}
else {
    @files = grep { $_ =~ m/\.pagination$/ } @files;
}
BAIL_OUT("No test cases to execute") if ( not @files );
foreach my $file (@files) {
    test_file($file);
}

done_testing;

sub test_file {
    my ($file) = @_;

    my $dir           = "t/30_paginaton/";
    my $test_def_file = "$file.test.yml";
    my ( $tests, $test, $opts );

    #   eval { $test = TestFromYaml->new( file => $test_def_file ); };
    eval { $tests = YAML::LoadFile($test_def_file); };
    die "YAML error: $@ in file $test_def_file"
      if ($@);
    eval { $opts = YAML::LoadFile($file); };

    die "YAML error: $@ in file $file"
      if ($@);

  SKIP: {
        skip "$test_def_file is lacking service or call entry", 1
          if ( not exists( $tests->{service} )
            or not exists( $tests->{call} ) );

        my $request_count = 1;
        foreach my $request ( @{ $opts->{requests} } ) {

            my $response      = shift( @{ $opts->{responses} } );
            my $test_request  = shift( @{ $tests->{request}->{pages} } );
            my $test_call     =  shift( @{ $tests->{request}->{calls} } );
			my $test_response = shift( @{ $tests->{response}->{pages} } );
            my $request_test = TestFromArray->new(
                todo_reason => $tests->{todo_reason},
                is_todo     => exists( $tests->{todo_reason} ),
                service     => $tests->{service},
                method      => $tests->{call},
                tests       => $test_request->{tests}
			);
            my $response_test = TestFromArray->new(
                todo_reason => $tests->{todo_reason},
                is_todo     => exists( $tests->{todo_reason} ),
                service     => $tests->{service},
                method      => $tests->{call},
                tests       => $test_response->{tests}
            );
			my $call_test = TestFromArray->new(
                todo_reason => $tests->{todo_reason},
                is_todo     => exists( $tests->{todo_reason} ),
                service     => $tests->{service},
                method      => $tests->{call},
                tests       => $test_call->{tests}
                            );
            my $service = $aws->service(
                $request_test->service,
                region => 'fake_region',
                caller => TestPaginationCaller->new(
                    mock_dir      => $dir,
                    mock_mode     => 'REPLAY',
                    request       => $request,
                    request_test  => $request_test,
					call_test     => $call_test,
                    response      => $response,
                    response_test => $response_test
                )
            );

            my $call_method = $request_test->method;
            my $call_class  = $service->meta->name . '::' . $call_method;
            my $result;

            my $passed = lives_ok {
                $result = $service->$call_method(
                    sub {
                        _test_pagination($service->caller, $service->caller->response_test->tests->[0], $_ );
                    },
                    %{$request}
                );
                 NEXT_REQUEST:
                 $request_count++;
               
            }
            "Call "
              . $request_test->service . '->'
              . $request_test->method
              . " call count = $request_count"
              . " from $file";
           
        }
    }

    sub _test_pagination {
        my ( $caller,$test, $result ) = @_;
        my $count = $caller->counter();
        my $max   = scalar(@{$test->{expected}})-1;

        my $expected = $test->{expected}->[$count];

        ok( $expected eq $result,
            "Got expected result for #$count $expected=$result" );

        if ( $count == $max ) {
            $caller->reset_counter();
            goto NEXT_REQUEST;
        }
        $caller->inc_counter();
    }

}
