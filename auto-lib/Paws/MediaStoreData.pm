package Paws::MediaStoreData;
  use Moose;
  sub service { 'data.mediastore' }
  sub signing_name { 'mediastore' }
  sub version { '2017-09-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeleteObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStoreData::DeleteObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStoreData::DescribeObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStoreData::GetObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStoreData::ListItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStoreData::PutObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllItems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListItems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListItems(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListItems(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }


  sub operations { qw/DeleteObject DescribeObject GetObject ListItems PutObject / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStoreData - Perl Interface to AWS AWS Elemental MediaStore Data Plane

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MediaStoreData');
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

An AWS Elemental MediaStore asset is an object, similar to an object in
the Amazon S3 service. Objects are the fundamental entities that are
stored in AWS Elemental MediaStore.

For the AWS API documentation, see L<https://docs.aws.amazon.com/mediastore/>


=head1 METHODS

=head2 DeleteObject

=over

=item Path => Str


=back

Each argument is described in detail in: L<Paws::MediaStoreData::DeleteObject>

Returns: a L<Paws::MediaStoreData::DeleteObjectResponse> instance

Deletes an object at the specified path.


=head2 DescribeObject

=over

=item Path => Str


=back

Each argument is described in detail in: L<Paws::MediaStoreData::DescribeObject>

Returns: a L<Paws::MediaStoreData::DescribeObjectResponse> instance

Gets the headers for an object at the specified path.


=head2 GetObject

=over

=item Path => Str

=item [Range => Str]


=back

Each argument is described in detail in: L<Paws::MediaStoreData::GetObject>

Returns: a L<Paws::MediaStoreData::GetObjectResponse> instance

Downloads the object at the specified path.


=head2 ListItems

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Path => Str]


=back

Each argument is described in detail in: L<Paws::MediaStoreData::ListItems>

Returns: a L<Paws::MediaStoreData::ListItemsResponse> instance

Provides a list of metadata entries about folders and objects in the
specified folder.


=head2 PutObject

=over

=item Body => Str

=item Path => Str

=item [CacheControl => Str]

=item [ContentType => Str]

=item [StorageClass => Str]


=back

Each argument is described in detail in: L<Paws::MediaStoreData::PutObject>

Returns: a L<Paws::MediaStoreData::PutObjectResponse> instance

Uploads an object to the specified path. Object sizes are limited to 25
MB.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllItems(sub { },[MaxResults => Int, NextToken => Str, Path => Str])

=head2 ListAllItems([MaxResults => Int, NextToken => Str, Path => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::MediaStoreData::ListItemsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

