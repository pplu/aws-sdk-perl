package Paws::ResourceGroups;
  use Moose;
  sub service { 'resource-groups' }
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


=head1 METHODS

=head2 CreateGroup(Name => Str, ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>, [Description => Str, Tags => L<Paws::ResourceGroups::Tags>])

Each argument is described in detail in: L<Paws::ResourceGroups::CreateGroup>

Returns: a L<Paws::ResourceGroups::CreateGroupOutput> instance

Creates a group with a specified name, description, and resource query.


=head2 DeleteGroup(GroupName => Str)

Each argument is described in detail in: L<Paws::ResourceGroups::DeleteGroup>

Returns: a L<Paws::ResourceGroups::DeleteGroupOutput> instance

Deletes a specified resource group. Deleting a resource group does not
delete resources that are members of the group; it only deletes the
group structure.


=head2 GetGroup(GroupName => Str)

Each argument is described in detail in: L<Paws::ResourceGroups::GetGroup>

Returns: a L<Paws::ResourceGroups::GetGroupOutput> instance

Returns information about a specified resource group.


=head2 GetGroupQuery(GroupName => Str)

Each argument is described in detail in: L<Paws::ResourceGroups::GetGroupQuery>

Returns: a L<Paws::ResourceGroups::GetGroupQueryOutput> instance

Returns the resource query associated with the specified resource
group.


=head2 GetTags(Arn => Str)

Each argument is described in detail in: L<Paws::ResourceGroups::GetTags>

Returns: a L<Paws::ResourceGroups::GetTagsOutput> instance

Returns a list of tags that are associated with a resource, specified
by an ARN.


=head2 ListGroupResources(GroupName => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ResourceGroups::ListGroupResources>

Returns: a L<Paws::ResourceGroups::ListGroupResourcesOutput> instance

Returns a list of ARNs of resources that are members of a specified
resource group.


=head2 ListGroups([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ResourceGroups::ListGroups>

Returns: a L<Paws::ResourceGroups::ListGroupsOutput> instance

Returns a list of existing resource groups in your account.


=head2 SearchResources(ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ResourceGroups::SearchResources>

Returns: a L<Paws::ResourceGroups::SearchResourcesOutput> instance

Returns a list of AWS resource identifiers that matches a specified
query. The query uses the same format as a resource query in a
CreateGroup or UpdateGroupQuery operation.


=head2 Tag(Arn => Str, Tags => L<Paws::ResourceGroups::Tags>)

Each argument is described in detail in: L<Paws::ResourceGroups::Tag>

Returns: a L<Paws::ResourceGroups::TagOutput> instance

Adds specified tags to a resource with the specified ARN. Existing tags
on a resource are not changed if they are not specified in the request
parameters.


=head2 Untag(Arn => Str, Keys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::ResourceGroups::Untag>

Returns: a L<Paws::ResourceGroups::UntagOutput> instance

Deletes specified tags from a specified resource.


=head2 UpdateGroup(GroupName => Str, [Description => Str])

Each argument is described in detail in: L<Paws::ResourceGroups::UpdateGroup>

Returns: a L<Paws::ResourceGroups::UpdateGroupOutput> instance

Updates an existing group with a new or changed description. You cannot
update the name of a resource group.


=head2 UpdateGroupQuery(GroupName => Str, ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>)

Each argument is described in detail in: L<Paws::ResourceGroups::UpdateGroupQuery>

Returns: a L<Paws::ResourceGroups::UpdateGroupQueryOutput> instance

Updates the resource query of a group.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

