package Paws::ResourceTagging;
  use Moose;
  sub service { 'tagging' }
  sub signing_name { 'tagging' }
  sub version { '2017-01-26' }
  sub target_prefix { 'ResourceGroupsTaggingAPI_20170126' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub GetResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceTagging::GetResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTagKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceTagging::GetTagKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTagValues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceTagging::GetTagValues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceTagging::TagResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceTagging::UntagResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->PaginationToken) {
        $next_result = $self->GetResources(@_, PaginationToken => $next_result->PaginationToken);
        push @{ $result->ResourceTagMappingList }, @{ $next_result->ResourceTagMappingList };
      }
      return $result;
    } else {
      while ($result->PaginationToken) {
        $callback->($_ => 'ResourceTagMappingList') foreach (@{ $result->ResourceTagMappingList });
        $result = $self->GetResources(@_, PaginationToken => $result->PaginationToken);
      }
      $callback->($_ => 'ResourceTagMappingList') foreach (@{ $result->ResourceTagMappingList });
    }

    return undef
  }
  sub GetAllTagKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTagKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->PaginationToken) {
        $next_result = $self->GetTagKeys(@_, PaginationToken => $next_result->PaginationToken);
        push @{ $result->TagKeys }, @{ $next_result->TagKeys };
      }
      return $result;
    } else {
      while ($result->PaginationToken) {
        $callback->($_ => 'TagKeys') foreach (@{ $result->TagKeys });
        $result = $self->GetTagKeys(@_, PaginationToken => $result->PaginationToken);
      }
      $callback->($_ => 'TagKeys') foreach (@{ $result->TagKeys });
    }

    return undef
  }
  sub GetAllTagValues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTagValues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->PaginationToken) {
        $next_result = $self->GetTagValues(@_, PaginationToken => $next_result->PaginationToken);
        push @{ $result->TagValues }, @{ $next_result->TagValues };
      }
      return $result;
    } else {
      while ($result->PaginationToken) {
        $callback->($_ => 'TagValues') foreach (@{ $result->TagValues });
        $result = $self->GetTagValues(@_, PaginationToken => $result->PaginationToken);
      }
      $callback->($_ => 'TagValues') foreach (@{ $result->TagValues });
    }

    return undef
  }


  sub operations { qw/GetResources GetTagKeys GetTagValues TagResources UntagResources / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging - Perl Interface to AWS AWS Resource Groups Tagging API

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ResourceTagging');
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

Resource Groups Tagging API

This guide describes the API operations for the resource groups
tagging.

A tag is a label that you assign to an AWS resource. A tag consists of
a key and a value, both of which you define. For example, if you have
two Amazon EC2 instances, you might assign both a tag key of "Stack."
But the value of "Stack" might be "Testing" for one and "Production"
for the other.

Tagging can help you organize your resources and enables you to
simplify resource management, access management and cost allocation.
For more information about tagging, see Working with Tag Editor
(http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html)
and Working with Resource Groups
(http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/resource-groups.html).
For more information about permissions you need to use the resource
groups tagging APIs, see Obtaining Permissions for Resource Groups
(http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-resource-groups.html)
and Obtaining Permissions for Tagging
(http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html).

You can use the resource groups tagging APIs to complete the following
tasks:

=over

=item *

Tag and untag supported resources located in the specified region for
the AWS account

=item *

Use tag-based filters to search for resources located in the specified
region for the AWS account

=item *

List all existing tag keys in the specified region for the AWS account

=item *

List all existing values for the specified key in the specified region
for the AWS account

=back

Not all resources can have tags. For a lists of resources that you can
tag, see Supported Resources
(http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/supported-resources.html)
in the I<AWS Resource Groups and Tag Editor User Guide>.

To make full use of the resource groups tagging APIs, you might need
additional IAM permissions, including permission to access the
resources of individual services as well as permission to view and
apply tags to those resources. For more information, see Obtaining
Permissions for Tagging
(http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html)
in the I<AWS Resource Groups and Tag Editor User Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html>


=head1 METHODS

=head2 GetResources

=over

=item [PaginationToken => Str]

=item [ResourcesPerPage => Int]

=item [ResourceTypeFilters => ArrayRef[Str|Undef]]

=item [TagFilters => ArrayRef[L<Paws::ResourceTagging::TagFilter>]]

=item [TagsPerPage => Int]


=back

Each argument is described in detail in: L<Paws::ResourceTagging::GetResources>

Returns: a L<Paws::ResourceTagging::GetResourcesOutput> instance

Returns all the tagged resources that are associated with the specified
tags (keys and values) located in the specified region for the AWS
account. The tags and the resource types that you specify in the
request are known as I<filters>. The response includes all tags that
are associated with the requested resources. If no filter is provided,
this action returns a paginated resource list with the associated tags.


=head2 GetTagKeys

=over

=item [PaginationToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceTagging::GetTagKeys>

Returns: a L<Paws::ResourceTagging::GetTagKeysOutput> instance

Returns all tag keys in the specified region for the AWS account.


=head2 GetTagValues

=over

=item Key => Str

=item [PaginationToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceTagging::GetTagValues>

Returns: a L<Paws::ResourceTagging::GetTagValuesOutput> instance

Returns all tag values for the specified key in the specified region
for the AWS account.


=head2 TagResources

=over

=item ResourceARNList => ArrayRef[Str|Undef]

=item Tags => L<Paws::ResourceTagging::TagMap>


=back

Each argument is described in detail in: L<Paws::ResourceTagging::TagResources>

Returns: a L<Paws::ResourceTagging::TagResourcesOutput> instance

Applies one or more tags to the specified resources. Note the
following:

=over

=item *

Not all resources can have tags. For a list of resources that support
tagging, see Supported Resources
(http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/supported-resources.html)
in the I<AWS Resource Groups and Tag Editor User Guide>.

=item *

Each resource can have up to 50 tags. For other limits, see Tag
Restrictions
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-restrictions)
in the I<Amazon EC2 User Guide for Linux Instances>.

=item *

You can only tag resources that are located in the specified region for
the AWS account.

=item *

To add tags to a resource, you need the necessary permissions for the
service that the resource belongs to as well as permissions for adding
tags. For more information, see Obtaining Permissions for Tagging
(http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html)
in the I<AWS Resource Groups and Tag Editor User Guide>.

=back



=head2 UntagResources

=over

=item ResourceARNList => ArrayRef[Str|Undef]

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ResourceTagging::UntagResources>

Returns: a L<Paws::ResourceTagging::UntagResourcesOutput> instance

Removes the specified tags from the specified resources. When you
specify a tag key, the action removes both that key and its associated
value. The operation succeeds even if you attempt to remove tags from a
resource that were already removed. Note the following:

=over

=item *

To remove tags from a resource, you need the necessary permissions for
the service that the resource belongs to as well as permissions for
removing tags. For more information, see Obtaining Permissions for
Tagging
(http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html)
in the I<AWS Resource Groups and Tag Editor User Guide>.

=item *

You can only tag resources that are located in the specified region for
the AWS account.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllResources(sub { },[PaginationToken => Str, ResourcesPerPage => Int, ResourceTypeFilters => ArrayRef[Str|Undef], TagFilters => ArrayRef[L<Paws::ResourceTagging::TagFilter>], TagsPerPage => Int])

=head2 GetAllResources([PaginationToken => Str, ResourcesPerPage => Int, ResourceTypeFilters => ArrayRef[Str|Undef], TagFilters => ArrayRef[L<Paws::ResourceTagging::TagFilter>], TagsPerPage => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceTagMappingList, passing the object as the first parameter, and the string 'ResourceTagMappingList' as the second parameter 

If not, it will return a a L<Paws::ResourceTagging::GetResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTagKeys(sub { },[PaginationToken => Str])

=head2 GetAllTagKeys([PaginationToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TagKeys, passing the object as the first parameter, and the string 'TagKeys' as the second parameter 

If not, it will return a a L<Paws::ResourceTagging::GetTagKeysOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTagValues(sub { },Key => Str, [PaginationToken => Str])

=head2 GetAllTagValues(Key => Str, [PaginationToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TagValues, passing the object as the first parameter, and the string 'TagValues' as the second parameter 

If not, it will return a a L<Paws::ResourceTagging::GetTagValuesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

