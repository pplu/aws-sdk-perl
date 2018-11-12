package Paws::ResourceGroups;
  use Moose;
  sub service { 'resource-groups' }
  sub signing_name { 'resource-groups' }
  sub version { '2017-11-27' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::GetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroupQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::GetGroupQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::GetTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::ListGroupResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::SearchResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Tag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::Tag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Untag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::Untag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::UpdateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroupQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::UpdateGroupQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllGroupResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroupResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroupResources(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceIdentifiers }, @{ $next_result->ResourceIdentifiers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceIdentifiers') foreach (@{ $result->ResourceIdentifiers });
        $result = $self->ListGroupResources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceIdentifiers') foreach (@{ $result->ResourceIdentifiers });
    }

    return undef
  }
  sub ListAllGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->ListGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Groups') foreach (@{ $result->Groups });
    }

    return undef
  }
  sub SearchAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchResources(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceIdentifiers }, @{ $next_result->ResourceIdentifiers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceIdentifiers') foreach (@{ $result->ResourceIdentifiers });
        $result = $self->SearchResources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceIdentifiers') foreach (@{ $result->ResourceIdentifiers });
    }

    return undef
  }


  sub operations { qw/CreateGroup DeleteGroup GetGroup GetGroupQuery GetTags ListGroupResources ListGroups SearchResources Tag Untag UpdateGroup UpdateGroupQuery / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups - Perl Interface to AWS AWS Resource Groups

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ResourceGroups');
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

AWS Resource Groups

AWS Resource Groups lets you organize AWS resources such as Amazon EC2
instances, Amazon Relational Database Service databases, and Amazon S3
buckets into groups using criteria that you define as tags. A resource
group is a collection of resources that match the resource types
specified in a query, and share one or more tags or portions of tags.
You can create a group of resources based on their roles in your cloud
infrastructure, lifecycle stages, regions, application layers, or
virtually any criteria. Resource groups enable you to automate
management tasks, such as those in AWS Systems Manager Automation
documents, on tag-related resources in AWS Systems Manager. Groups of
tagged resources also let you quickly view a custom console in AWS
Systems Manager that shows AWS Config compliance and other monitoring
data about member resources.

To create a resource group, build a resource query, and specify tags
that identify the criteria that members of the group have in common.
Tags are key-value pairs.

For more information about Resource Groups, see the AWS Resource Groups
User Guide
(https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html).

AWS Resource Groups uses a REST-compliant API that you can use to
perform the following types of operations.

=over

=item *

Create, Read, Update, and Delete (CRUD) operations on resource groups
and resource query entities

=item *

Applying, editing, and removing tags from resource groups

=item *

Resolving resource group member ARNs so they can be returned as search
results

=item *

Getting data about resources that are members of a group

=item *

Searching AWS resources based on a resource query

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27>


=head1 METHODS

=head2 CreateGroup

=over

=item Name => Str

=item ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>

=item [Description => Str]

=item [Tags => L<Paws::ResourceGroups::Tags>]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::CreateGroup>

Returns: a L<Paws::ResourceGroups::CreateGroupOutput> instance

Creates a group with a specified name, description, and resource query.


=head2 DeleteGroup

=over

=item GroupName => Str


=back

Each argument is described in detail in: L<Paws::ResourceGroups::DeleteGroup>

Returns: a L<Paws::ResourceGroups::DeleteGroupOutput> instance

Deletes a specified resource group. Deleting a resource group does not
delete resources that are members of the group; it only deletes the
group structure.


=head2 GetGroup

=over

=item GroupName => Str


=back

Each argument is described in detail in: L<Paws::ResourceGroups::GetGroup>

Returns: a L<Paws::ResourceGroups::GetGroupOutput> instance

Returns information about a specified resource group.


=head2 GetGroupQuery

=over

=item GroupName => Str


=back

Each argument is described in detail in: L<Paws::ResourceGroups::GetGroupQuery>

Returns: a L<Paws::ResourceGroups::GetGroupQueryOutput> instance

Returns the resource query associated with the specified resource
group.


=head2 GetTags

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::ResourceGroups::GetTags>

Returns: a L<Paws::ResourceGroups::GetTagsOutput> instance

Returns a list of tags that are associated with a resource, specified
by an ARN.


=head2 ListGroupResources

=over

=item GroupName => Str

=item [Filters => ArrayRef[L<Paws::ResourceGroups::ResourceFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::ListGroupResources>

Returns: a L<Paws::ResourceGroups::ListGroupResourcesOutput> instance

Returns a list of ARNs of resources that are members of a specified
resource group.


=head2 ListGroups

=over

=item [Filters => ArrayRef[L<Paws::ResourceGroups::GroupFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::ListGroups>

Returns: a L<Paws::ResourceGroups::ListGroupsOutput> instance

Returns a list of existing resource groups in your account.


=head2 SearchResources

=over

=item ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::SearchResources>

Returns: a L<Paws::ResourceGroups::SearchResourcesOutput> instance

Returns a list of AWS resource identifiers that matches a specified
query. The query uses the same format as a resource query in a
CreateGroup or UpdateGroupQuery operation.


=head2 Tag

=over

=item Arn => Str

=item Tags => L<Paws::ResourceGroups::Tags>


=back

Each argument is described in detail in: L<Paws::ResourceGroups::Tag>

Returns: a L<Paws::ResourceGroups::TagOutput> instance

Adds specified tags to a resource with the specified ARN. Existing tags
on a resource are not changed if they are not specified in the request
parameters.


=head2 Untag

=over

=item Arn => Str

=item Keys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::Untag>

Returns: a L<Paws::ResourceGroups::UntagOutput> instance

Deletes specified tags from a specified resource.


=head2 UpdateGroup

=over

=item GroupName => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::UpdateGroup>

Returns: a L<Paws::ResourceGroups::UpdateGroupOutput> instance

Updates an existing group with a new or changed description. You cannot
update the name of a resource group.


=head2 UpdateGroupQuery

=over

=item GroupName => Str

=item ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>


=back

Each argument is described in detail in: L<Paws::ResourceGroups::UpdateGroupQuery>

Returns: a L<Paws::ResourceGroups::UpdateGroupQueryOutput> instance

Updates the resource query of a group.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllGroupResources(sub { },GroupName => Str, [Filters => ArrayRef[L<Paws::ResourceGroups::ResourceFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllGroupResources(GroupName => Str, [Filters => ArrayRef[L<Paws::ResourceGroups::ResourceFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceIdentifiers, passing the object as the first parameter, and the string 'ResourceIdentifiers' as the second parameter 

If not, it will return a a L<Paws::ResourceGroups::ListGroupResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroups(sub { },[Filters => ArrayRef[L<Paws::ResourceGroups::GroupFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllGroups([Filters => ArrayRef[L<Paws::ResourceGroups::GroupFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::ResourceGroups::ListGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllResources(sub { },ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>, [MaxResults => Int, NextToken => Str])

=head2 SearchAllResources(ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceIdentifiers, passing the object as the first parameter, and the string 'ResourceIdentifiers' as the second parameter 

If not, it will return a a L<Paws::ResourceGroups::SearchResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

