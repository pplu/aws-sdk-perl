package Paws::ResourceTagging;
  use Moose;
  sub service { 'tagging' }
  sub version { '2017-01-26' }
  sub target_prefix { 'ResourceGroupsTaggingAPI_20170126' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
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
For more information about tagging, see Working with Tag Editor and
Working with Resource Groups. For more information about permissions
you need to use the resource groups tagging APIs, see Obtaining
Permissions for Resource Groups and Obtaining Permissions for Tagging .

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

Not all resources can have tags. For a list of resources that support
tagging, see Supported Resources in the I<AWS Resource Groups and Tag
Editor User Guide>.

To make full use of the resource groups tagging APIs, you might need
additional IAM permissions, including permission to access the
resources of individual services as well as permission to view and
apply tags to those resources. For more information, see Obtaining
Permissions for Tagging in the I<AWS Resource Groups and Tag Editor
User Guide>.

=head1 METHODS

=head2 GetResources(TagsPerPage => Int, [PaginationToken => Str, ResourceTypeFilters => ArrayRef[Str|Undef], TagFilters => ArrayRef[L<Paws::ResourceTagging::TagFilter>]])

Each argument is described in detail in: L<Paws::ResourceTagging::GetResources>

Returns: a L<Paws::ResourceTagging::GetResourcesOutput> instance

  Returns all the tagged resources that are associated with the specified
tags (keys and values) located in the specified region for the AWS
account. The tags and the resource types that you specify in the
request are known as I<filters>. The response includes all tags that
are associated with the requested resources. If no filter is provided,
this action returns a paginated resource list with the associated tags.


=head2 GetTagKeys([PaginationToken => Str])

Each argument is described in detail in: L<Paws::ResourceTagging::GetTagKeys>

Returns: a L<Paws::ResourceTagging::GetTagKeysOutput> instance

  Returns all tag keys in the specified region for the AWS account.


=head2 GetTagValues(Key => Str, [PaginationToken => Str])

Each argument is described in detail in: L<Paws::ResourceTagging::GetTagValues>

Returns: a L<Paws::ResourceTagging::GetTagValuesOutput> instance

  Returns all tag values for the specified key in the specified region
for the AWS account.


=head2 TagResources(ResourceARNList => ArrayRef[Str|Undef], Tags => L<Paws::ResourceTagging::TagMap>)

Each argument is described in detail in: L<Paws::ResourceTagging::TagResources>

Returns: a L<Paws::ResourceTagging::TagResourcesOutput> instance

  Applies one or more tags to the specified resources. Note the
following:

=over

=item *

Not all resources can have tags. For a list of resources that support
tagging, see Supported Resources in the I<AWS Resource Groups and Tag
Editor User Guide>.

=item *

Each resource can have up to 50 tags. For other limits, see Tag
Restrictions in the I<Amazon EC2 User Guide for Linux Instances>.

=item *

You can only tag resources that are located in the specified region for
the AWS account.

=item *

To add tags to a resource, you need the necessary permissions for the
service that the resource belongs to as well as permissions for adding
tags. For more information, see Obtaining Permissions for Tagging in
the I<AWS Resource Groups and Tag Editor User Guide>.

=back



=head2 UntagResources(ResourceARNList => ArrayRef[Str|Undef], TagKeys => ArrayRef[Str|Undef])

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
Tagging in the I<AWS Resource Groups and Tag Editor User Guide>.

=item *

You can only tag resources that are located in the specified region for
the AWS account.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

