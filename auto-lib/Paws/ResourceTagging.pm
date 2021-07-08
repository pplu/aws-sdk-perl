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

  
  sub DescribeReportCreation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceTagging::DescribeReportCreation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComplianceSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceTagging::GetComplianceSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
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
  sub StartReportCreation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceTagging::StartReportCreation', @_);
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
  
  sub GetAllComplianceSummary {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetComplianceSummary(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->PaginationToken) {
        $next_result = $self->GetComplianceSummary(@_, PaginationToken => $next_result->PaginationToken);
        push @{ $result->SummaryList }, @{ $next_result->SummaryList };
      }
      return $result;
    } else {
      while ($result->PaginationToken) {
        $callback->($_ => 'SummaryList') foreach (@{ $result->SummaryList });
        $result = $self->GetComplianceSummary(@_, PaginationToken => $result->PaginationToken);
      }
      $callback->($_ => 'SummaryList') foreach (@{ $result->SummaryList });
    }

    return undef
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


  sub operations { qw/DescribeReportCreation GetComplianceSummary GetResources GetTagKeys GetTagValues StartReportCreation TagResources UntagResources / }

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

For the AWS API documentation, see L<https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html>


=head1 METHODS

=head2 DescribeReportCreation






Each argument is described in detail in: L<Paws::ResourceTagging::DescribeReportCreation>

Returns: a L<Paws::ResourceTagging::DescribeReportCreationOutput> instance

Describes the status of the C<StartReportCreation> operation.

You can call this operation only from the organization's management
account and from the us-east-1 Region.


=head2 GetComplianceSummary

=over

=item [GroupBy => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [PaginationToken => Str]

=item [RegionFilters => ArrayRef[Str|Undef]]

=item [ResourceTypeFilters => ArrayRef[Str|Undef]]

=item [TagKeyFilters => ArrayRef[Str|Undef]]

=item [TargetIdFilters => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ResourceTagging::GetComplianceSummary>

Returns: a L<Paws::ResourceTagging::GetComplianceSummaryOutput> instance

Returns a table that shows counts of resources that are noncompliant
with their tag policies.

For more information on tag policies, see Tag Policies
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
in the I<AWS Organizations User Guide.>

You can call this operation only from the organization's management
account and from the us-east-1 Region.

This operation supports pagination, where the response can be sent in
multiple pages. You should check the C<PaginationToken> response
parameter to determine if there are additional results available to
return. Repeat the query, passing the C<PaginationToken> response
parameter value as an input to the next request until you recieve a
C<null> value. A null value for C<PaginationToken> indicates that there
are no more results waiting to be returned.


=head2 GetResources

=over

=item [ExcludeCompliantResources => Bool]

=item [IncludeComplianceDetails => Bool]

=item [PaginationToken => Str]

=item [ResourceARNList => ArrayRef[Str|Undef]]

=item [ResourcesPerPage => Int]

=item [ResourceTypeFilters => ArrayRef[Str|Undef]]

=item [TagFilters => ArrayRef[L<Paws::ResourceTagging::TagFilter>]]

=item [TagsPerPage => Int]


=back

Each argument is described in detail in: L<Paws::ResourceTagging::GetResources>

Returns: a L<Paws::ResourceTagging::GetResourcesOutput> instance

Returns all the tagged or previously tagged resources that are located
in the specified Region for the AWS account.

Depending on what information you want returned, you can also specify
the following:

=over

=item *

I<Filters> that specify what tags and resource types you want returned.
The response includes all tags that are associated with the requested
resources.

=item *

Information about compliance with the account's effective tag policy.
For more information on tag policies, see Tag Policies
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
in the I<AWS Organizations User Guide.>

=back

This operation supports pagination, where the response can be sent in
multiple pages. You should check the C<PaginationToken> response
parameter to determine if there are additional results available to
return. Repeat the query, passing the C<PaginationToken> response
parameter value as an input to the next request until you recieve a
C<null> value. A null value for C<PaginationToken> indicates that there
are no more results waiting to be returned.


=head2 GetTagKeys

=over

=item [PaginationToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceTagging::GetTagKeys>

Returns: a L<Paws::ResourceTagging::GetTagKeysOutput> instance

Returns all tag keys currently in use in the specified Region for the
calling AWS account.

This operation supports pagination, where the response can be sent in
multiple pages. You should check the C<PaginationToken> response
parameter to determine if there are additional results available to
return. Repeat the query, passing the C<PaginationToken> response
parameter value as an input to the next request until you recieve a
C<null> value. A null value for C<PaginationToken> indicates that there
are no more results waiting to be returned.


=head2 GetTagValues

=over

=item Key => Str

=item [PaginationToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceTagging::GetTagValues>

Returns: a L<Paws::ResourceTagging::GetTagValuesOutput> instance

Returns all tag values for the specified key that are used in the
specified AWS Region for the calling AWS account.

This operation supports pagination, where the response can be sent in
multiple pages. You should check the C<PaginationToken> response
parameter to determine if there are additional results available to
return. Repeat the query, passing the C<PaginationToken> response
parameter value as an input to the next request until you recieve a
C<null> value. A null value for C<PaginationToken> indicates that there
are no more results waiting to be returned.


=head2 StartReportCreation

=over

=item S3Bucket => Str


=back

Each argument is described in detail in: L<Paws::ResourceTagging::StartReportCreation>

Returns: a L<Paws::ResourceTagging::StartReportCreationOutput> instance

Generates a report that lists all tagged resources in the accounts
across your organization and tells whether each resource is compliant
with the effective tag policy. Compliance data is refreshed daily. The
report is generated asynchronously.

The generated report is saved to the following location:

C<s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv>

You can call this operation only from the organization's management
account and from the us-east-1 Region.


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

Not all resources can have tags. For a list of services with resources
that support tagging using this operation, see Services that support
the Resource Groups Tagging API
(https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html).

=item *

Each resource can have up to 50 tags. For other limits, see Tag Naming
and Usage Conventions
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions)
in the I<AWS General Reference.>

=item *

You can only tag resources that are located in the specified AWS Region
for the AWS account.

=item *

To add tags to a resource, you need the necessary permissions for the
service that the resource belongs to as well as permissions for adding
tags. For more information, see the documentation for each service.

=back

Do not store personally identifiable information (PII) or other
confidential or sensitive information in tags. We use tags to provide
you with billing and administration services. Tags are not intended to
be used for private or sensitive data.


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
removing tags. For more information, see the documentation for the
service whose resource you want to untag.

=item *

You can only tag resources that are located in the specified AWS Region
for the calling AWS account.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllComplianceSummary(sub { },[GroupBy => ArrayRef[Str|Undef], MaxResults => Int, PaginationToken => Str, RegionFilters => ArrayRef[Str|Undef], ResourceTypeFilters => ArrayRef[Str|Undef], TagKeyFilters => ArrayRef[Str|Undef], TargetIdFilters => ArrayRef[Str|Undef]])

=head2 GetAllComplianceSummary([GroupBy => ArrayRef[Str|Undef], MaxResults => Int, PaginationToken => Str, RegionFilters => ArrayRef[Str|Undef], ResourceTypeFilters => ArrayRef[Str|Undef], TagKeyFilters => ArrayRef[Str|Undef], TargetIdFilters => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SummaryList, passing the object as the first parameter, and the string 'SummaryList' as the second parameter 

If not, it will return a a L<Paws::ResourceTagging::GetComplianceSummaryOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResources(sub { },[ExcludeCompliantResources => Bool, IncludeComplianceDetails => Bool, PaginationToken => Str, ResourceARNList => ArrayRef[Str|Undef], ResourcesPerPage => Int, ResourceTypeFilters => ArrayRef[Str|Undef], TagFilters => ArrayRef[L<Paws::ResourceTagging::TagFilter>], TagsPerPage => Int])

=head2 GetAllResources([ExcludeCompliantResources => Bool, IncludeComplianceDetails => Bool, PaginationToken => Str, ResourceARNList => ArrayRef[Str|Undef], ResourcesPerPage => Int, ResourceTypeFilters => ArrayRef[Str|Undef], TagFilters => ArrayRef[L<Paws::ResourceTagging::TagFilter>], TagsPerPage => Int])


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

