package Paws::SageMakerRuntime;
  use Moose;
  sub service { 'runtime.sagemaker' }
  sub version { '2017-05-13' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub InvokeEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerRuntime::InvokeEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/InvokeEndpoint / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerRuntime - Perl Interface to AWS Amazon SageMaker Runtime

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SageMakerRuntime');
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

Amazon SageMaker runtime API.

=head1 METHODS

=head2 InvokeEndpoint(Body => Str, EndpointName => Str, [Accept => Str, ContentType => Str])

Each argument is described in detail in: L<Paws::SageMakerRuntime::InvokeEndpoint>

Returns: a L<Paws::SageMakerRuntime::InvokeEndpointOutput> instance

After you deploy a model into production using Amazon SageMaker hosting
services, your client applications use this API to get inferences from
the model hosted at the specified endpoint.

For an overview of Amazon SageMaker, see How It Works
(http://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html)

Amazon SageMaker strips all POST headers except those supported by the
API. Amazon SageMaker might add additional headers. You should not rely
on the behavior of headers outside those enumerated in the request
syntax.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

