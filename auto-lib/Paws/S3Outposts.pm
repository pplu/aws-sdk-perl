package Paws::S3Outposts;
  use Moose;
  sub service { 's3-outposts' }
  sub signing_name { 's3-outposts' }
  sub version { '2017-07-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Outposts::CreateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Outposts::DeleteEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Outposts::ListEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->Endpoints }, @{ $next_result->Endpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
        $result = $self->ListEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
    }

    return undef
  }


  sub operations { qw/CreateEndpoint DeleteEndpoint ListEndpoints / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Outposts - Perl Interface to AWS Amazon S3 on Outposts

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('S3Outposts');
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

Amazon S3 on Outposts provides access to S3 on Outposts operations.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-outposts-2017-07-25>


=head1 METHODS

=head2 CreateEndpoint

=over

=item OutpostId => Str

=item SecurityGroupId => Str

=item SubnetId => Str


=back

Each argument is described in detail in: L<Paws::S3Outposts::CreateEndpoint>

Returns: a L<Paws::S3Outposts::CreateEndpointResult> instance

S3 on Outposts access points simplify managing data access at scale for
shared datasets in Amazon S3 on Outposts. S3 on Outposts uses endpoints
to connect to Outposts buckets so that you can perform actions within
your virtual private cloud (VPC).

This action creates an endpoint and associates it with the specified
Outpost.

Related actions include:

=over

=item *

DeleteEndpoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)

=item *

ListEndpoints
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)

=back



=head2 DeleteEndpoint

=over

=item EndpointId => Str

=item OutpostId => Str


=back

Each argument is described in detail in: L<Paws::S3Outposts::DeleteEndpoint>

Returns: nothing

S3 on Outposts access points simplify managing data access at scale for
shared datasets in Amazon S3 on Outposts. S3 on Outposts uses endpoints
to connect to Outposts buckets so that you can perform actions within
your virtual private cloud (VPC).

This action deletes an endpoint.

Related actions include:

=over

=item *

CreateEndpoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)

=item *

ListEndpoints
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)

=back



=head2 ListEndpoints

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::S3Outposts::ListEndpoints>

Returns: a L<Paws::S3Outposts::ListEndpointsResult> instance

S3 on Outposts access points simplify managing data access at scale for
shared datasets in Amazon S3 on Outposts. S3 on Outposts uses endpoints
to connect to Outposts buckets so that you can perform actions within
your virtual private cloud (VPC).

This action lists endpoints associated with the Outpost.

Related actions include:

=over

=item *

CreateEndpoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)

=item *

DeleteEndpoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEndpoints(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEndpoints([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Endpoints, passing the object as the first parameter, and the string 'Endpoints' as the second parameter 

If not, it will return a a L<Paws::S3Outposts::ListEndpointsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

