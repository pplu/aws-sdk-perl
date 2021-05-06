package Paws::ElasticInference;
  use Moose;
  sub service { 'api.elastic-inference' }
  sub signing_name { 'elastic-inference' }
  sub version { '2017-07-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticInference::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticInference::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticInference::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/ListTagsForResource TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticInference - Perl Interface to AWS Amazon Elastic  Inference

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ElasticInference');
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

Elastic Inference public APIs.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.elastic-inference-2017-07-25>


=head1 METHODS

=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ElasticInference::ListTagsForResource>

Returns: a L<Paws::ElasticInference::ListTagsForResourceResult> instance

Returns all tags of an Elastic Inference Accelerator.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::ElasticInference::TagMap>


=back

Each argument is described in detail in: L<Paws::ElasticInference::TagResource>

Returns: a L<Paws::ElasticInference::TagResourceResult> instance

Adds the specified tag(s) to an Elastic Inference Accelerator.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ElasticInference::UntagResource>

Returns: a L<Paws::ElasticInference::UntagResourceResult> instance

Removes the specified tag(s) from an Elastic Inference Accelerator.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

