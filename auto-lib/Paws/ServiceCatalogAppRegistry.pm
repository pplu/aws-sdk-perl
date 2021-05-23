package Paws::ServiceCatalogAppRegistry;
  use Moose;
  sub service { 'servicecatalog-appregistry' }
  sub signing_name { 'servicecatalog' }
  sub version { '2020-06-24' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateAttributeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::AssociateAttributeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::AssociateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAttributeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::CreateAttributeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAttributeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::DeleteAttributeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAttributeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::DisassociateAttributeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::DisassociateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAttributeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::GetAttributeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociatedAttributeGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::ListAssociatedAttributeGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociatedResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::ListAssociatedResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttributeGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::ListAttributeGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SyncResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::SyncResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAttributeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalogAppRegistry::UpdateAttributeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApplications(@_, nextToken => $next_result->nextToken);
        push @{ $result->applications }, @{ $next_result->applications };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'applications') foreach (@{ $result->applications });
        $result = $self->ListApplications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'applications') foreach (@{ $result->applications });
    }

    return undef
  }
  sub ListAllAssociatedAttributeGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociatedAttributeGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssociatedAttributeGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->attributeGroups }, @{ $next_result->attributeGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'attributeGroups') foreach (@{ $result->attributeGroups });
        $result = $self->ListAssociatedAttributeGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'attributeGroups') foreach (@{ $result->attributeGroups });
    }

    return undef
  }
  sub ListAllAssociatedResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociatedResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssociatedResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->resources }, @{ $next_result->resources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resources') foreach (@{ $result->resources });
        $result = $self->ListAssociatedResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resources') foreach (@{ $result->resources });
    }

    return undef
  }
  sub ListAllAttributeGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAttributeGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAttributeGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->attributeGroups }, @{ $next_result->attributeGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'attributeGroups') foreach (@{ $result->attributeGroups });
        $result = $self->ListAttributeGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'attributeGroups') foreach (@{ $result->attributeGroups });
    }

    return undef
  }


  sub operations { qw/AssociateAttributeGroup AssociateResource CreateApplication CreateAttributeGroup DeleteApplication DeleteAttributeGroup DisassociateAttributeGroup DisassociateResource GetApplication GetAttributeGroup ListApplications ListAssociatedAttributeGroups ListAssociatedResources ListAttributeGroups ListTagsForResource SyncResource TagResource UntagResource UpdateApplication UpdateAttributeGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry - Perl Interface to AWS AWS Service Catalog App Registry

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ServiceCatalogAppRegistry');
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

AWS Service Catalog AppRegistry enables organizations to understand the
application context of their AWS resources. AppRegistry provides a
repository of your applications, their resources, and the application
metadata that you use within your enterprise.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-appregistry-2020-06-24>


=head1 METHODS

=head2 AssociateAttributeGroup

=over

=item Application => Str

=item AttributeGroup => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::AssociateAttributeGroup>

Returns: a L<Paws::ServiceCatalogAppRegistry::AssociateAttributeGroupResponse> instance

Associates an attribute group with an application to augment the
application's metadata with the group's attributes. This feature
enables applications to be described with user-defined details that are
machine-readable, such as third-party integrations.


=head2 AssociateResource

=over

=item Application => Str

=item Resource => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::AssociateResource>

Returns: a L<Paws::ServiceCatalogAppRegistry::AssociateResourceResponse> instance

Associates a resource with an application. Both the resource and the
application can be specified either by ID or name.


=head2 CreateApplication

=over

=item ClientToken => Str

=item Name => Str

=item [Description => Str]

=item [Tags => L<Paws::ServiceCatalogAppRegistry::Tags>]


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::CreateApplication>

Returns: a L<Paws::ServiceCatalogAppRegistry::CreateApplicationResponse> instance

Creates a new application that is the top-level node in a hierarchy of
related cloud resource abstractions.


=head2 CreateAttributeGroup

=over

=item Attributes => Str

=item ClientToken => Str

=item Name => Str

=item [Description => Str]

=item [Tags => L<Paws::ServiceCatalogAppRegistry::Tags>]


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::CreateAttributeGroup>

Returns: a L<Paws::ServiceCatalogAppRegistry::CreateAttributeGroupResponse> instance

Creates a new attribute group as a container for user-defined
attributes. This feature enables users to have full control over their
cloud application's metadata in a rich machine-readable format to
facilitate integration with automated workflows and third-party tools.


=head2 DeleteApplication

=over

=item Application => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::DeleteApplication>

Returns: a L<Paws::ServiceCatalogAppRegistry::DeleteApplicationResponse> instance

Deletes an application that is specified either by its application ID
or name. All associated attribute groups and resources must be
disassociated from it before deleting an application.


=head2 DeleteAttributeGroup

=over

=item AttributeGroup => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::DeleteAttributeGroup>

Returns: a L<Paws::ServiceCatalogAppRegistry::DeleteAttributeGroupResponse> instance

Deletes an attribute group, specified either by its attribute group ID
or name.


=head2 DisassociateAttributeGroup

=over

=item Application => Str

=item AttributeGroup => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::DisassociateAttributeGroup>

Returns: a L<Paws::ServiceCatalogAppRegistry::DisassociateAttributeGroupResponse> instance

Disassociates an attribute group from an application to remove the
extra attributes contained in the attribute group from the
application's metadata. This operation reverts
C<AssociateAttributeGroup>.


=head2 DisassociateResource

=over

=item Application => Str

=item Resource => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::DisassociateResource>

Returns: a L<Paws::ServiceCatalogAppRegistry::DisassociateResourceResponse> instance

Disassociates a resource from application. Both the resource and the
application can be specified either by ID or name.


=head2 GetApplication

=over

=item Application => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::GetApplication>

Returns: a L<Paws::ServiceCatalogAppRegistry::GetApplicationResponse> instance

Retrieves metadata information about one of your applications. The
application can be specified either by its unique ID or by its name
(which is unique within one account in one region at a given point in
time). Specify by ID in automated workflows if you want to make sure
that the exact same application is returned or a
C<ResourceNotFoundException> is thrown, avoiding the ABA addressing
problem.


=head2 GetAttributeGroup

=over

=item AttributeGroup => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::GetAttributeGroup>

Returns: a L<Paws::ServiceCatalogAppRegistry::GetAttributeGroupResponse> instance

Retrieves an attribute group, either by its name or its ID. The
attribute group can be specified either by its unique ID or by its
name.


=head2 ListApplications

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::ListApplications>

Returns: a L<Paws::ServiceCatalogAppRegistry::ListApplicationsResponse> instance

Retrieves a list of all of your applications. Results are paginated.


=head2 ListAssociatedAttributeGroups

=over

=item Application => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::ListAssociatedAttributeGroups>

Returns: a L<Paws::ServiceCatalogAppRegistry::ListAssociatedAttributeGroupsResponse> instance

Lists all attribute groups that are associated with specified
application. Results are paginated.


=head2 ListAssociatedResources

=over

=item Application => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::ListAssociatedResources>

Returns: a L<Paws::ServiceCatalogAppRegistry::ListAssociatedResourcesResponse> instance

Lists all resources that are associated with specified application.
Results are paginated.


=head2 ListAttributeGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::ListAttributeGroups>

Returns: a L<Paws::ServiceCatalogAppRegistry::ListAttributeGroupsResponse> instance

Lists all attribute groups which you have access to. Results are
paginated.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::ListTagsForResource>

Returns: a L<Paws::ServiceCatalogAppRegistry::ListTagsForResourceResponse> instance

Lists all of the tags on the resource.


=head2 SyncResource

=over

=item Resource => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::SyncResource>

Returns: a L<Paws::ServiceCatalogAppRegistry::SyncResourceResponse> instance

Syncs the resource with what is currently recorded in App registry.
Specifically, the resourceE<rsquo>s App registry system tags are synced
with its associated application. The resource is removed if it is not
associated with the application. The caller must have permissions to
read and update the resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::ServiceCatalogAppRegistry::Tags>


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::TagResource>

Returns: a L<Paws::ServiceCatalogAppRegistry::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified resource.

Each tag consists of a key and an optional value. If a tag with the
same key is already associated with the resource, this action updates
its value.

This operation returns an empty response if the call was successful.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::UntagResource>

Returns: a L<Paws::ServiceCatalogAppRegistry::UntagResourceResponse> instance

Removes tags from a resource.

This operation returns an empty response if the call was successful.


=head2 UpdateApplication

=over

=item Application => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::UpdateApplication>

Returns: a L<Paws::ServiceCatalogAppRegistry::UpdateApplicationResponse> instance

Updates an existing application with new attributes.


=head2 UpdateAttributeGroup

=over

=item AttributeGroup => Str

=item [Attributes => Str]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalogAppRegistry::UpdateAttributeGroup>

Returns: a L<Paws::ServiceCatalogAppRegistry::UpdateAttributeGroupResponse> instance

Updates an existing attribute group with new details.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplications(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllApplications([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - applications, passing the object as the first parameter, and the string 'applications' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalogAppRegistry::ListApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssociatedAttributeGroups(sub { },Application => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssociatedAttributeGroups(Application => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - attributeGroups, passing the object as the first parameter, and the string 'attributeGroups' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalogAppRegistry::ListAssociatedAttributeGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssociatedResources(sub { },Application => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssociatedResources(Application => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resources, passing the object as the first parameter, and the string 'resources' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalogAppRegistry::ListAssociatedResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAttributeGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAttributeGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - attributeGroups, passing the object as the first parameter, and the string 'attributeGroups' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalogAppRegistry::ListAttributeGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

