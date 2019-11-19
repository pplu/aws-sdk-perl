# Generated from json/service_class.tt
package Paws::ResourceTagging;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'tagging' }
  sub signing_name { 'tagging' }
  sub version { '2017-01-26' }
  sub target_prefix { 'ResourceGroupsTaggingAPI_20170126' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
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

You can use the resource groups tagging API operations to complete the
following tasks:

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

To use resource groups tagging API operations, you must add the
following permissions to your IAM policy:

=over

=item *

C<tag:GetResources>

=item *

C<tag:TagResources>

=item *

C<tag:UntagResources>

=item *

C<tag:GetTagKeys>

=item *

C<tag:GetTagValues>

=back

You'll also need permissions to access the resources of individual
services so that you can tag and untag those resources.

For more information on IAM policies, see Managing IAM Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage.html)
in the I<IAM User Guide>.

You can use the Resource Groups Tagging API to tag resources for the
following AWS services.

=over

=item *

Alexa for Business (a4b)

=item *

API Gateway

=item *

AWS AppStream

=item *

AWS AppSync

=item *

AWS App Mesh

=item *

Amazon Athena

=item *

Amazon Aurora

=item *

AWS Backup

=item *

AWS Certificate Manager

=item *

AWS Certificate Manager Private CA

=item *

Amazon Cloud Directory

=item *

AWS CloudFormation

=item *

Amazon CloudFront

=item *

AWS CloudHSM

=item *

AWS CloudTrail

=item *

Amazon CloudWatch (alarms only)

=item *

Amazon CloudWatch Events

=item *

Amazon CloudWatch Logs

=item *

AWS CodeBuild

=item *

AWS CodeCommit

=item *

AWS CodePipeline

=item *

AWS CodeStar

=item *

Amazon Cognito Identity

=item *

Amazon Cognito User Pools

=item *

Amazon Comprehend

=item *

AWS Config

=item *

AWS Data Pipeline

=item *

AWS Database Migration Service

=item *

AWS Datasync

=item *

AWS Direct Connect

=item *

AWS Directory Service

=item *

Amazon DynamoDB

=item *

Amazon EBS

=item *

Amazon EC2

=item *

Amazon ECR

=item *

Amazon ECS

=item *

AWS Elastic Beanstalk

=item *

Amazon Elastic File System

=item *

Elastic Load Balancing

=item *

Amazon ElastiCache

=item *

Amazon Elasticsearch Service

=item *

AWS Elemental MediaLive

=item *

AWS Elemental MediaPackage

=item *

AWS Elemental MediaTailor

=item *

Amazon EMR

=item *

Amazon FSx

=item *

Amazon Glacier

=item *

AWS Glue

=item *

Amazon Inspector

=item *

AWS IoT Analytics

=item *

AWS IoT Core

=item *

AWS IoT Device Defender

=item *

AWS IoT Device Management

=item *

AWS IoT Greengrass

=item *

AWS Key Management Service

=item *

Amazon Kinesis

=item *

Amazon Kinesis Data Analytics

=item *

Amazon Kinesis Data Firehose

=item *

AWS Lambda

=item *

AWS License Manager

=item *

Amazon Machine Learning

=item *

Amazon MQ

=item *

Amazon MSK

=item *

Amazon Neptune

=item *

AWS OpsWorks

=item *

Amazon RDS

=item *

Amazon Redshift

=item *

AWS Resource Access Manager

=item *

AWS Resource Groups

=item *

AWS RoboMaker

=item *

Amazon Route 53

=item *

Amazon Route 53 Resolver

=item *

Amazon S3 (buckets only)

=item *

Amazon SageMaker

=item *

AWS Secrets Manager

=item *

AWS Service Catalog

=item *

Amazon Simple Notification Service (SNS)

=item *

Amazon Simple Queue Service (SQS)

=item *

AWS Simple System Manager (SSM)

=item *

AWS Step Functions

=item *

AWS Storage Gateway

=item *

AWS Transfer for SFTP

=item *

Amazon VPC

=item *

Amazon WorkSpaces

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html>


=head1 METHODS

=head2 GetResources

=over

=item [PaginationToken => Str]

=item [ResourcesPerPage => Int]

=item [ResourceTypeFilters => ArrayRef[Str|Undef]]

=item [TagFilters => ArrayRef[ResourceTagging_TagFilter]]

=item [TagsPerPage => Int]


=back

Each argument is described in detail in: L<Paws::ResourceTagging::GetResources>

Returns: a L<Paws::ResourceTagging::GetResourcesOutput> instance

Returns all the tagged or previously tagged resources that are located
in the specified region for the AWS account. You can optionally specify
I<filters> (tags and resource types) in your request, depending on what
information you want returned. The response includes all tags that are
associated with the requested resources.

You can check the C<PaginationToken> response parameter to determine if
a query completed. Queries can occasionally return fewer results on a
page than allowed. The C<PaginationToken> response parameter value is
C<null> I<only> when there are no more results to display.


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

=item Tags => ResourceTagging_TagMap


=back

Each argument is described in detail in: L<Paws::ResourceTagging::TagResources>

Returns: a L<Paws::ResourceTagging::TagResourcesOutput> instance

Applies one or more tags to the specified resources. Note the
following:

=over

=item *

Not all resources can have tags. For a list of resources that support
tagging, see Supported Resources
(http://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html)
in the I<AWS Resource Groups User Guide>.

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
(http://docs.aws.amazon.com/ARG/latest/userguide/obtaining-permissions-for-tagging.html)
in the I<AWS Resource Groups User Guide>.

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
(http://docs.aws.amazon.com/ARG/latest/userguide/obtaining-permissions-for-tagging.html)
in the I<AWS Resource Groups User Guide>.

=item *

You can only tag resources that are located in the specified region for
the AWS account.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllResources(sub { },[PaginationToken => Str, ResourcesPerPage => Int, ResourceTypeFilters => ArrayRef[Str|Undef], TagFilters => ArrayRef[ResourceTagging_TagFilter], TagsPerPage => Int])

=head2 GetAllResources([PaginationToken => Str, ResourcesPerPage => Int, ResourceTypeFilters => ArrayRef[Str|Undef], TagFilters => ArrayRef[ResourceTagging_TagFilter], TagsPerPage => Int])


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

