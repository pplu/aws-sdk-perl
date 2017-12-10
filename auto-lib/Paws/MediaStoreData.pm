package Paws::MediaStoreData;
  use Moose;
  sub service { 'data.mediastore' }
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

=head1 METHODS

=head2 DeleteObject(Path => Str)

Each argument is described in detail in: L<Paws::MediaStoreData::DeleteObject>

Returns: a L<Paws::MediaStoreData::DeleteObjectResponse> instance

Deletes an object at the specified path.


=head2 DescribeObject(Path => Str)

Each argument is described in detail in: L<Paws::MediaStoreData::DescribeObject>

Returns: a L<Paws::MediaStoreData::DescribeObjectResponse> instance

Gets the header for an object at the specified path.


=head2 GetObject(Path => Str, [Range => Str])

Each argument is described in detail in: L<Paws::MediaStoreData::GetObject>

Returns: a L<Paws::MediaStoreData::GetObjectResponse> instance

Downloads the object at the specified path.


=head2 ListItems([MaxResults => Int, NextToken => Str, Path => Str])

Each argument is described in detail in: L<Paws::MediaStoreData::ListItems>

Returns: a L<Paws::MediaStoreData::ListItemsResponse> instance

Provides a list of metadata entries about folders and objects in the
specified folder.


=head2 PutObject(Body => Str, Path => Str, [CacheControl => Str, ContentType => Str, StorageClass => Str])

Each argument is described in detail in: L<Paws::MediaStoreData::PutObject>

Returns: a L<Paws::MediaStoreData::PutObjectResponse> instance

Uploads an object to the specified path. Object sizes are limited to 10
MB.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

