package Paws::ApiGatewayManagement;
  use Moose;
  sub service { 'execute-api' }
  sub signing_name { 'execute-api' }
  sub version { '2018-11-29' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub PostToConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayManagement::PostToConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/PostToConnection / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayManagement - Perl Interface to AWS AmazonApiGatewayManagementApi

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ApiGatewayManagement');
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

The Amazon API Gateway Management API allows you to directly manage
runtime aspects of your deployed APIs. To use it, you must explicitly
set the SDK's endpoint to point to the endpoint of your deployed API.
The endpoint will be of the form
https://{api-id}.execute-api.{region}.amazonaws.com/{stage}, or will be
the endpoint corresponding to your API's custom domain and base path,
if applicable.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/execute-api-2018-11-29>


=head1 METHODS

=head2 PostToConnection

=over

=item ConnectionId => Str

=item Data => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayManagement::PostToConnection>

Returns: nothing

Sends the provided data to the specified connection.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

