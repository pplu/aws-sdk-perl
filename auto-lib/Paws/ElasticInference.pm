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

  
  sub DescribeAcceleratorOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticInference::DescribeAcceleratorOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccelerators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticInference::DescribeAccelerators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAcceleratorTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticInference::DescribeAcceleratorTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
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
  
  sub DescribeAllAccelerators {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAccelerators(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeAccelerators(@_, nextToken => $next_result->nextToken);
        push @{ $result->acceleratorSet }, @{ $next_result->acceleratorSet };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'acceleratorSet') foreach (@{ $result->acceleratorSet });
        $result = $self->DescribeAccelerators(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'acceleratorSet') foreach (@{ $result->acceleratorSet });
    }

    return undef
  }


  sub operations { qw/DescribeAcceleratorOfferings DescribeAccelerators DescribeAcceleratorTypes ListTagsForResource TagResource UntagResource / }

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

=head2 DescribeAcceleratorOfferings

=over

=item LocationType => Str

=item [AcceleratorTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ElasticInference::DescribeAcceleratorOfferings>

Returns: a L<Paws::ElasticInference::DescribeAcceleratorOfferingsResponse> instance

Describes the locations in which a given accelerator type or set of
types is present in a given region.


=head2 DescribeAccelerators

=over

=item [AcceleratorIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ElasticInference::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ElasticInference::DescribeAccelerators>

Returns: a L<Paws::ElasticInference::DescribeAcceleratorsResponse> instance

Describes information over a provided set of accelerators belonging to
an account.


=head2 DescribeAcceleratorTypes






Each argument is described in detail in: L<Paws::ElasticInference::DescribeAcceleratorTypes>

Returns: a L<Paws::ElasticInference::DescribeAcceleratorTypesResponse> instance

Describes the accelerator types available in a given region, as well as
their characteristics, such as memory and throughput.


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

Adds the specified tags to an Elastic Inference Accelerator.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ElasticInference::UntagResource>

Returns: a L<Paws::ElasticInference::UntagResourceResult> instance

Removes the specified tags from an Elastic Inference Accelerator.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAccelerators(sub { },[AcceleratorIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::ElasticInference::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllAccelerators([AcceleratorIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::ElasticInference::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - acceleratorSet, passing the object as the first parameter, and the string 'acceleratorSet' as the second parameter 

If not, it will return a a L<Paws::ElasticInference::DescribeAcceleratorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

