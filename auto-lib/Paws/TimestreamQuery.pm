package Paws::TimestreamQuery;
  use Moose;
  sub service { 'query.timestream' }
  sub signing_name { 'timestream' }
  sub version { '2018-11-01' }
  sub target_prefix { 'Timestream_20181101' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CancelQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::CancelQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::DescribeEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Query {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::Query', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub QueryAll {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->Query(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->Query(@_, NextToken => $next_result->NextToken);
        push @{ $result->Rows }, @{ $next_result->Rows };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Rows') foreach (@{ $result->Rows });
        $result = $self->Query(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Rows') foreach (@{ $result->Rows });
    }

    return undef
  }


  sub operations { qw/CancelQuery DescribeEndpoints Query / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery - Perl Interface to AWS Amazon Timestream Query

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('TimestreamQuery');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/query.timestream-2018-11-01>


=head1 METHODS

=head2 CancelQuery

=over

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::CancelQuery>

Returns: a L<Paws::TimestreamQuery::CancelQueryResponse> instance

Cancels a query that has been issued. Cancellation is guaranteed only
if the query has not completed execution before the cancellation
request was issued. Because cancellation is an idempotent operation,
subsequent cancellation requests will return a C<CancellationMessage>,
indicating that the query has already been canceled.


=head2 DescribeEndpoints






Each argument is described in detail in: L<Paws::TimestreamQuery::DescribeEndpoints>

Returns: a L<Paws::TimestreamQuery::DescribeEndpointsResponse> instance

DescribeEndpoints returns a list of available endpoints to make
Timestream API calls against. This API is available through both Write
and Query.

Because TimestreamE<rsquo>s SDKs are designed to transparently work
with the serviceE<rsquo>s architecture, including the management and
mapping of the service endpoints, I<it is not recommended that you use
this API unless>:

=over

=item *

Your application uses a programming language that does not yet have SDK
support

=item *

You require better control over the client-side implementation

=back

For detailed information on how to use DescribeEndpoints, see The
Endpoint Discovery Pattern and REST APIs
(https://docs.aws.amazon.com/timestream/latest/developerguide/Using-API.endpoint-discovery.html).


=head2 Query

=over

=item QueryString => Str

=item [ClientToken => Str]

=item [MaxRows => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::Query>

Returns: a L<Paws::TimestreamQuery::QueryResponse> instance

Query is a synchronous operation that enables you to execute a query.
Query will timeout after 60 seconds. You must update the default
timeout in the SDK to support a timeout of 60 seconds. The result set
will be truncated to 1MB. Service quotas apply. For more information,
see Quotas in the Timestream Developer Guide.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 QueryAll(sub { },QueryString => Str, [ClientToken => Str, MaxRows => Int, NextToken => Str])

=head2 QueryAll(QueryString => Str, [ClientToken => Str, MaxRows => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Rows, passing the object as the first parameter, and the string 'Rows' as the second parameter 

If not, it will return a a L<Paws::TimestreamQuery::QueryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

