package Paws::MediaStore;
  use Moose;
  sub service { 'mediastore' }
  sub signing_name { 'mediastore' }
  sub version { '2017-09-01' }
  sub target_prefix { 'MediaStore_20170901' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateContainer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::CreateContainer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContainer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::DeleteContainer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContainerPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::DeleteContainerPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCorsPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::DeleteCorsPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::DeleteLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContainer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::DescribeContainer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContainerPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::GetContainerPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCorsPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::GetCorsPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::GetLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContainers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::ListContainers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutContainerPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::PutContainerPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutCorsPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::PutCorsPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaStore::PutLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllContainers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContainers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContainers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Containers }, @{ $next_result->Containers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Containers') foreach (@{ $result->Containers });
        $result = $self->ListContainers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Containers') foreach (@{ $result->Containers });
    }

    return undef
  }


  sub operations { qw/CreateContainer DeleteContainer DeleteContainerPolicy DeleteCorsPolicy DeleteLifecyclePolicy DescribeContainer GetContainerPolicy GetCorsPolicy GetLifecyclePolicy ListContainers PutContainerPolicy PutCorsPolicy PutLifecyclePolicy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore - Perl Interface to AWS AWS Elemental MediaStore

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MediaStore');
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

An AWS Elemental MediaStore container is a namespace that holds folders
and objects. You use a container endpoint to create, read, and delete
objects.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01>


=head1 METHODS

=head2 CreateContainer

=over

=item ContainerName => Str


=back

Each argument is described in detail in: L<Paws::MediaStore::CreateContainer>

Returns: a L<Paws::MediaStore::CreateContainerOutput> instance

Creates a storage container to hold objects. A container is similar to
a bucket in the Amazon S3 service.


=head2 DeleteContainer

=over

=item ContainerName => Str


=back

Each argument is described in detail in: L<Paws::MediaStore::DeleteContainer>

Returns: a L<Paws::MediaStore::DeleteContainerOutput> instance

Deletes the specified container. Before you make a C<DeleteContainer>
request, delete any objects in the container or in any folders in the
container. You can delete only empty containers.


=head2 DeleteContainerPolicy

=over

=item ContainerName => Str


=back

Each argument is described in detail in: L<Paws::MediaStore::DeleteContainerPolicy>

Returns: a L<Paws::MediaStore::DeleteContainerPolicyOutput> instance

Deletes the access policy that is associated with the specified
container.


=head2 DeleteCorsPolicy

=over

=item ContainerName => Str


=back

Each argument is described in detail in: L<Paws::MediaStore::DeleteCorsPolicy>

Returns: a L<Paws::MediaStore::DeleteCorsPolicyOutput> instance

Deletes the cross-origin resource sharing (CORS) configuration
information that is set for the container.

To use this operation, you must have permission to perform the
C<MediaStore:DeleteCorsPolicy> action. The container owner has this
permission by default and can grant this permission to others.


=head2 DeleteLifecyclePolicy

=over

=item ContainerName => Str


=back

Each argument is described in detail in: L<Paws::MediaStore::DeleteLifecyclePolicy>

Returns: a L<Paws::MediaStore::DeleteLifecyclePolicyOutput> instance

Removes an object lifecycle policy from a container.


=head2 DescribeContainer

=over

=item [ContainerName => Str]


=back

Each argument is described in detail in: L<Paws::MediaStore::DescribeContainer>

Returns: a L<Paws::MediaStore::DescribeContainerOutput> instance

Retrieves the properties of the requested container. This request is
commonly used to retrieve the endpoint of a container. An endpoint is a
value assigned by the service when a new container is created. A
container's endpoint does not change after it has been assigned. The
C<DescribeContainer> request returns a single C<Container> object based
on C<ContainerName>. To return all C<Container> objects that are
associated with a specified AWS account, use ListContainers.


=head2 GetContainerPolicy

=over

=item ContainerName => Str


=back

Each argument is described in detail in: L<Paws::MediaStore::GetContainerPolicy>

Returns: a L<Paws::MediaStore::GetContainerPolicyOutput> instance

Retrieves the access policy for the specified container. For
information about the data that is included in an access policy, see
the AWS Identity and Access Management User Guide
(https://aws.amazon.com/documentation/iam/).


=head2 GetCorsPolicy

=over

=item ContainerName => Str


=back

Each argument is described in detail in: L<Paws::MediaStore::GetCorsPolicy>

Returns: a L<Paws::MediaStore::GetCorsPolicyOutput> instance

Returns the cross-origin resource sharing (CORS) configuration
information that is set for the container.

To use this operation, you must have permission to perform the
C<MediaStore:GetCorsPolicy> action. By default, the container owner has
this permission and can grant it to others.


=head2 GetLifecyclePolicy

=over

=item ContainerName => Str


=back

Each argument is described in detail in: L<Paws::MediaStore::GetLifecyclePolicy>

Returns: a L<Paws::MediaStore::GetLifecyclePolicyOutput> instance

Retrieves the object lifecycle policy that is assigned to a container.


=head2 ListContainers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaStore::ListContainers>

Returns: a L<Paws::MediaStore::ListContainersOutput> instance

Lists the properties of all containers in AWS Elemental MediaStore.

You can query to receive all the containers in one response. Or you can
include the C<MaxResults> parameter to receive a limited number of
containers in each response. In this case, the response includes a
token. To get the next set of containers, send the command again, this
time with the C<NextToken> parameter (with the returned token as its
value). The next set of responses appears, with a token if there are
still more containers to receive.

See also DescribeContainer, which gets the properties of one container.


=head2 PutContainerPolicy

=over

=item ContainerName => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::MediaStore::PutContainerPolicy>

Returns: a L<Paws::MediaStore::PutContainerPolicyOutput> instance

Creates an access policy for the specified container to restrict the
users and clients that can access it. For information about the data
that is included in an access policy, see the AWS Identity and Access
Management User Guide (https://aws.amazon.com/documentation/iam/).

For this release of the REST API, you can create only one policy for a
container. If you enter C<PutContainerPolicy> twice, the second command
modifies the existing policy.


=head2 PutCorsPolicy

=over

=item ContainerName => Str

=item CorsPolicy => ArrayRef[L<Paws::MediaStore::CorsRule>]


=back

Each argument is described in detail in: L<Paws::MediaStore::PutCorsPolicy>

Returns: a L<Paws::MediaStore::PutCorsPolicyOutput> instance

Sets the cross-origin resource sharing (CORS) configuration on a
container so that the container can service cross-origin requests. For
example, you might want to enable a request whose origin is
http://www.example.com to access your AWS Elemental MediaStore
container at my.example.container.com by using the browser's
XMLHttpRequest capability.

To enable CORS on a container, you attach a CORS policy to the
container. In the CORS policy, you configure rules that identify
origins and the HTTP methods that can be executed on your container.
The policy can contain up to 398,000 characters. You can add up to 100
rules to a CORS policy. If more than one rule applies, the service uses
the first applicable rule listed.


=head2 PutLifecyclePolicy

=over

=item ContainerName => Str

=item LifecyclePolicy => Str


=back

Each argument is described in detail in: L<Paws::MediaStore::PutLifecyclePolicy>

Returns: a L<Paws::MediaStore::PutLifecyclePolicyOutput> instance

Writes an object lifecycle policy to a container. If the container
already has an object lifecycle policy, the service replaces the
existing policy with the new policy.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllContainers(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllContainers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Containers, passing the object as the first parameter, and the string 'Containers' as the second parameter 

If not, it will return a a L<Paws::MediaStore::ListContainersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

