package Paws::S3Control;
  warn "Paws::S3Control is not stable / supported / entirely developed" unless $ENV{'PAWS_SILENCE_UNSTABLE_WARNINGS'};
  use Moose;
  sub service { 's3-control' }
  sub signing_name { 's3' }
  sub version { '2018-08-20' }
  sub flattened_arrays { 1 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::S3V4Signature', 'Paws::Net::RestXmlCaller';

  
  sub CreateAccessPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::CreateAccessPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccessPointForObjectLambda {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::CreateAccessPointForObjectLambda', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::CreateBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::CreateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeleteAccessPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessPointForObjectLambda {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeleteAccessPointForObjectLambda', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessPointPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeleteAccessPointPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessPointPolicyForObjectLambda {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeleteAccessPointPolicyForObjectLambda', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeleteBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketLifecycleConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeleteBucketLifecycleConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeleteBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeleteBucketTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJobTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeleteJobTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeletePublicAccessBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStorageLensConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeleteStorageLensConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStorageLensConfigurationTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeleteStorageLensConfigurationTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DescribeJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetAccessPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessPointConfigurationForObjectLambda {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetAccessPointConfigurationForObjectLambda', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessPointForObjectLambda {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetAccessPointForObjectLambda', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessPointPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetAccessPointPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessPointPolicyForObjectLambda {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetAccessPointPolicyForObjectLambda', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessPointPolicyStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetAccessPointPolicyStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessPointPolicyStatusForObjectLambda {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetAccessPointPolicyStatusForObjectLambda', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLifecycleConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetBucketLifecycleConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetBucketTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetJobTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetPublicAccessBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStorageLensConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetStorageLensConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStorageLensConfigurationTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetStorageLensConfigurationTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessPoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::ListAccessPoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessPointsForObjectLambda {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::ListAccessPointsForObjectLambda', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRegionalBuckets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::ListRegionalBuckets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStorageLensConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::ListStorageLensConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccessPointConfigurationForObjectLambda {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::PutAccessPointConfigurationForObjectLambda', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccessPointPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::PutAccessPointPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccessPointPolicyForObjectLambda {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::PutAccessPointPolicyForObjectLambda', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketLifecycleConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::PutBucketLifecycleConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::PutBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::PutBucketTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutJobTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::PutJobTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::PutPublicAccessBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutStorageLensConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::PutStorageLensConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutStorageLensConfigurationTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::PutStorageLensConfigurationTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJobPriority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::UpdateJobPriority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJobStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::UpdateJobStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccessPointsForObjectLambda {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccessPointsForObjectLambda(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccessPointsForObjectLambda(@_, NextToken => $next_result->NextToken);
        push @{ $result->ObjectLambdaAccessPointList }, @{ $next_result->ObjectLambdaAccessPointList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ObjectLambdaAccessPointList') foreach (@{ $result->ObjectLambdaAccessPointList });
        $result = $self->ListAccessPointsForObjectLambda(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ObjectLambdaAccessPointList') foreach (@{ $result->ObjectLambdaAccessPointList });
    }

    return undef
  }


  sub operations { qw/CreateAccessPoint CreateAccessPointForObjectLambda CreateBucket CreateJob DeleteAccessPoint DeleteAccessPointForObjectLambda DeleteAccessPointPolicy DeleteAccessPointPolicyForObjectLambda DeleteBucket DeleteBucketLifecycleConfiguration DeleteBucketPolicy DeleteBucketTagging DeleteJobTagging DeletePublicAccessBlock DeleteStorageLensConfiguration DeleteStorageLensConfigurationTagging DescribeJob GetAccessPoint GetAccessPointConfigurationForObjectLambda GetAccessPointForObjectLambda GetAccessPointPolicy GetAccessPointPolicyForObjectLambda GetAccessPointPolicyStatus GetAccessPointPolicyStatusForObjectLambda GetBucket GetBucketLifecycleConfiguration GetBucketPolicy GetBucketTagging GetJobTagging GetPublicAccessBlock GetStorageLensConfiguration GetStorageLensConfigurationTagging ListAccessPoints ListAccessPointsForObjectLambda ListJobs ListRegionalBuckets ListStorageLensConfigurations PutAccessPointConfigurationForObjectLambda PutAccessPointPolicy PutAccessPointPolicyForObjectLambda PutBucketLifecycleConfiguration PutBucketPolicy PutBucketTagging PutJobTagging PutPublicAccessBlock PutStorageLensConfiguration PutStorageLensConfigurationTagging UpdateJobPriority UpdateJobStatus / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control - Perl Interface to AWS AWS S3 Control

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('S3Control');
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

AWS S3 Control provides access to Amazon S3 control plane actions.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control-2018-08-20>


=head1 METHODS

=head2 CreateAccessPoint

=over

=item AccountId => Str

=item Bucket => Str

=item Name => Str

=item [PublicAccessBlockConfiguration => L<Paws::S3Control::PublicAccessBlockConfiguration>]

=item [VpcConfiguration => L<Paws::S3Control::VpcConfiguration>]


=back

Each argument is described in detail in: L<Paws::S3Control::CreateAccessPoint>

Returns: a L<Paws::S3Control::CreateAccessPointResult> instance

Creates an access point and associates it with the specified bucket.
For more information, see Managing Data Access with Amazon S3 Access
Points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html)
in the I<Amazon S3 User Guide>.

S3 on Outposts only supports VPC-style access points.

For more information, see Accessing Amazon S3 on Outposts using virtual
private cloud (VPC) only access points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html#API_control_CreateAccessPoint_Examples)
section.

The following actions are related to C<CreateAccessPoint>:

=over

=item *

GetAccessPoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)

=item *

DeleteAccessPoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html)

=item *

ListAccessPoints
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)

=back



=head2 CreateAccessPointForObjectLambda

=over

=item AccountId => Str

=item Configuration => L<Paws::S3Control::ObjectLambdaConfiguration>

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::CreateAccessPointForObjectLambda>

Returns: a L<Paws::S3Control::CreateAccessPointForObjectLambdaResult> instance

Creates an Object Lambda Access Point. For more information, see
Transforming objects with Object Lambda Access Points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html)
in the I<Amazon S3 User Guide>.

The following actions are related to
C<CreateAccessPointForObjectLambda>:

=over

=item *

DeleteAccessPointForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html)

=item *

GetAccessPointForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html)

=item *

ListAccessPointsForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html)

=back



=head2 CreateBucket

=over

=item Bucket => Str

=item [ACL => Str]

=item [CreateBucketConfiguration => L<Paws::S3Control::CreateBucketConfiguration>]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWrite => Str]

=item [GrantWriteACP => Str]

=item [ObjectLockEnabledForBucket => Bool]

=item [OutpostId => Str]


=back

Each argument is described in detail in: L<Paws::S3Control::CreateBucket>

Returns: a L<Paws::S3Control::CreateBucketResult> instance

This action creates an Amazon S3 on Outposts bucket. To create an S3
bucket, see Create Bucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
in the I<Amazon S3 API Reference>.

Creates a new Outposts bucket. By creating the bucket, you become the
bucket owner. To create an Outposts bucket, you must have S3 on
Outposts. For more information, see Using Amazon S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in I<Amazon S3 User Guide>.

Not every string is an acceptable bucket name. For information on
bucket naming restrictions, see Working with Amazon S3 Buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/BucketRestrictions.html#bucketnamingrules).

S3 on Outposts buckets support:

=over

=item *

Tags

=item *

LifecycleConfigurations for deleting expired objects

=back

For a complete list of restrictions and Amazon S3 feature limitations
on S3 on Outposts, see Amazon S3 on Outposts Restrictions and
Limitations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OnOutpostsRestrictionsLimitations.html).

For an example of the request syntax for Amazon S3 on Outposts that
uses the S3 on Outposts endpoint hostname prefix and
C<x-amz-outpost-id> in your API request, see the Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html#API_control_CreateBucket_Examples)
section.

The following actions are related to C<CreateBucket> for Amazon S3 on
Outposts:

=over

=item *

PutObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

=item *

GetBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html)

=item *

DeleteBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html)

=item *

CreateAccessPoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

=item *

PutAccessPointPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html)

=back



=head2 CreateJob

=over

=item AccountId => Str

=item ClientRequestToken => Str

=item Manifest => L<Paws::S3Control::JobManifest>

=item Operation => L<Paws::S3Control::JobOperation>

=item Priority => Int

=item Report => L<Paws::S3Control::JobReport>

=item RoleArn => Str

=item [ConfirmationRequired => Bool]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::S3Control::S3Tag>]]


=back

Each argument is described in detail in: L<Paws::S3Control::CreateJob>

Returns: a L<Paws::S3Control::CreateJobResult> instance

You can use S3 Batch Operations to perform large-scale batch actions on
Amazon S3 objects. Batch Operations can run a single action on lists of
Amazon S3 objects that you specify. For more information, see S3 Batch
Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
in the I<Amazon S3 User Guide>.

This action creates a S3 Batch Operations job.

Related actions include:

=over

=item *

DescribeJob
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

=item *

ListJobs
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

=item *

UpdateJobPriority
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html)

=item *

UpdateJobStatus
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

=item *

JobOperation
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_JobOperation.html)

=back



=head2 DeleteAccessPoint

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteAccessPoint>

Returns: nothing

Deletes the specified access point.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html#API_control_DeleteAccessPoint_Examples)
section.

The following actions are related to C<DeleteAccessPoint>:

=over

=item *

CreateAccessPoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

=item *

GetAccessPoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)

=item *

ListAccessPoints
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)

=back



=head2 DeleteAccessPointForObjectLambda

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteAccessPointForObjectLambda>

Returns: nothing

Deletes the specified Object Lambda Access Point.

The following actions are related to
C<DeleteAccessPointForObjectLambda>:

=over

=item *

CreateAccessPointForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html)

=item *

GetAccessPointForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html)

=item *

ListAccessPointsForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html)

=back



=head2 DeleteAccessPointPolicy

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteAccessPointPolicy>

Returns: nothing

Deletes the access point policy for the specified access point.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html#API_control_DeleteAccessPointPolicy_Examples)
section.

The following actions are related to C<DeleteAccessPointPolicy>:

=over

=item *

PutAccessPointPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html)

=item *

GetAccessPointPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html)

=back



=head2 DeleteAccessPointPolicyForObjectLambda

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteAccessPointPolicyForObjectLambda>

Returns: nothing

Removes the resource policy for an Object Lambda Access Point.

The following actions are related to
C<DeleteAccessPointPolicyForObjectLambda>:

=over

=item *

GetAccessPointPolicyForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html)

=item *

PutAccessPointPolicyForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html)

=back



=head2 DeleteBucket

=over

=item AccountId => Str

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteBucket>

Returns: nothing

This action deletes an Amazon S3 on Outposts bucket. To delete an S3
bucket, see DeleteBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)
in the I<Amazon S3 API Reference>.

Deletes the Amazon S3 on Outposts bucket. All objects (including all
object versions and delete markers) in the bucket must be deleted
before the bucket itself can be deleted. For more information, see
Using Amazon S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in I<Amazon S3 User Guide>.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html#API_control_DeleteBucket_Examples)
section.

B<Related Resources>

=over

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html)

=item *

GetBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html)

=item *

DeleteObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)

=back



=head2 DeleteBucketLifecycleConfiguration

=over

=item AccountId => Str

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteBucketLifecycleConfiguration>

Returns: nothing

This action deletes an Amazon S3 on Outposts bucket's lifecycle
configuration. To delete an S3 bucket's lifecycle configuration, see
DeleteBucketLifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html)
in the I<Amazon S3 API Reference>.

Deletes the lifecycle configuration from the specified Outposts bucket.
Amazon S3 on Outposts removes all the lifecycle configuration rules in
the lifecycle subresource associated with the bucket. Your objects
never expire, and Amazon S3 on Outposts no longer automatically deletes
any objects on the basis of rules contained in the deleted lifecycle
configuration. For more information, see Using Amazon S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in I<Amazon S3 User Guide>.

To use this action, you must have permission to perform the
C<s3-outposts:DeleteLifecycleConfiguration> action. By default, the
bucket owner has this permission and the Outposts bucket owner can
grant this permission to others.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html#API_control_DeleteBucketLifecycleConfiguration_Examples)
section.

For more information about object expiration, see Elements to Describe
Lifecycle Actions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions).

Related actions include:

=over

=item *

PutBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html)

=item *

GetBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)

=back



=head2 DeleteBucketPolicy

=over

=item AccountId => Str

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteBucketPolicy>

Returns: nothing

This action deletes an Amazon S3 on Outposts bucket policy. To delete
an S3 bucket policy, see DeleteBucketPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketPolicy.html)
in the I<Amazon S3 API Reference>.

This implementation of the DELETE action uses the policy subresource to
delete the policy of a specified Amazon S3 on Outposts bucket. If you
are using an identity other than the root user of the AWS account that
owns the bucket, the calling identity must have the
C<s3-outposts:DeleteBucketPolicy> permissions on the specified Outposts
bucket and belong to the bucket owner's account to use this action. For
more information, see Using Amazon S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in I<Amazon S3 User Guide>.

If you don't have C<DeleteBucketPolicy> permissions, Amazon S3 returns
a C<403 Access Denied> error. If you have the correct permissions, but
you're not using an identity that belongs to the bucket owner's
account, Amazon S3 returns a C<405 Method Not Allowed> error.

As a security precaution, the root user of the AWS account that owns a
bucket can always use this action, even if the policy explicitly denies
the root user the ability to perform this action.

For more information about bucket policies, see Using Bucket Policies
and User Policies
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html#API_control_DeleteBucketPolicy_Examples)
section.

The following actions are related to C<DeleteBucketPolicy>:

=over

=item *

GetBucketPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html)

=item *

PutBucketPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html)

=back



=head2 DeleteBucketTagging

=over

=item AccountId => Str

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteBucketTagging>

Returns: nothing

This action deletes an Amazon S3 on Outposts bucket's tags. To delete
an S3 bucket tags, see DeleteBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html)
in the I<Amazon S3 API Reference>.

Deletes the tags from the Outposts bucket. For more information, see
Using Amazon S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in I<Amazon S3 User Guide>.

To use this action, you must have permission to perform the
C<PutBucketTagging> action. By default, the bucket owner has this
permission and can grant this permission to others.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html#API_control_DeleteBucketTagging_Examples)
section.

The following actions are related to C<DeleteBucketTagging>:

=over

=item *

GetBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html)

=item *

PutBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html)

=back



=head2 DeleteJobTagging

=over

=item AccountId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteJobTagging>

Returns: a L<Paws::S3Control::DeleteJobTaggingResult> instance

Removes the entire tag set from the specified S3 Batch Operations job.
To use this operation, you must have permission to perform the
C<s3:DeleteJobTagging> action. For more information, see Controlling
access and labeling jobs using tags
(https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
in the I<Amazon S3 User Guide>.

Related actions include:

=over

=item *

CreateJob
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

=item *

GetJobTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html)

=item *

PutJobTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html)

=back



=head2 DeletePublicAccessBlock

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeletePublicAccessBlock>

Returns: nothing

Removes the C<PublicAccessBlock> configuration for an AWS account. For
more information, see Using Amazon S3 block public access
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

Related actions include:

=over

=item *

GetPublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html)

=item *

PutPublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html)

=back



=head2 DeleteStorageLensConfiguration

=over

=item AccountId => Str

=item ConfigId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteStorageLensConfiguration>

Returns: nothing

Deletes the Amazon S3 Storage Lens configuration. For more information
about S3 Storage Lens, see Assessing your storage activity and usage
with Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in
the I<Amazon S3 User Guide>.

To use this action, you must have permission to perform the
C<s3:DeleteStorageLensConfiguration> action. For more information, see
Setting permissions to use Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
in the I<Amazon S3 User Guide>.


=head2 DeleteStorageLensConfigurationTagging

=over

=item AccountId => Str

=item ConfigId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteStorageLensConfigurationTagging>

Returns: a L<Paws::S3Control::DeleteStorageLensConfigurationTaggingResult> instance

Deletes the Amazon S3 Storage Lens configuration tags. For more
information about S3 Storage Lens, see Assessing your storage activity
and usage with Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in
the I<Amazon S3 User Guide>.

To use this action, you must have permission to perform the
C<s3:DeleteStorageLensConfigurationTagging> action. For more
information, see Setting permissions to use Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
in the I<Amazon S3 User Guide>.


=head2 DescribeJob

=over

=item AccountId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DescribeJob>

Returns: a L<Paws::S3Control::DescribeJobResult> instance

Retrieves the configuration parameters and status for a Batch
Operations job. For more information, see S3 Batch Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
in the I<Amazon S3 User Guide>.

Related actions include:

=over

=item *

CreateJob
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

=item *

ListJobs
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

=item *

UpdateJobPriority
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html)

=item *

UpdateJobStatus
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

=back



=head2 GetAccessPoint

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetAccessPoint>

Returns: a L<Paws::S3Control::GetAccessPointResult> instance

Returns configuration information about the specified access point.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples)
section.

The following actions are related to C<GetAccessPoint>:

=over

=item *

CreateAccessPoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

=item *

DeleteAccessPoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html)

=item *

ListAccessPoints
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)

=back



=head2 GetAccessPointConfigurationForObjectLambda

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetAccessPointConfigurationForObjectLambda>

Returns: a L<Paws::S3Control::GetAccessPointConfigurationForObjectLambdaResult> instance

Returns configuration for an Object Lambda Access Point.

The following actions are related to
C<GetAccessPointConfigurationForObjectLambda>:

=over

=item *

PutAccessPointConfigurationForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointConfigurationForObjectLambda.html)

=back



=head2 GetAccessPointForObjectLambda

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetAccessPointForObjectLambda>

Returns: a L<Paws::S3Control::GetAccessPointForObjectLambdaResult> instance

Returns configuration information about the specified Object Lambda
Access Point

The following actions are related to C<GetAccessPointForObjectLambda>:

=over

=item *

CreateAccessPointForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html)

=item *

DeleteAccessPointForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html)

=item *

ListAccessPointsForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html)

=back



=head2 GetAccessPointPolicy

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetAccessPointPolicy>

Returns: a L<Paws::S3Control::GetAccessPointPolicyResult> instance

Returns the access point policy associated with the specified access
point.

The following actions are related to C<GetAccessPointPolicy>:

=over

=item *

PutAccessPointPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html)

=item *

DeleteAccessPointPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html)

=back



=head2 GetAccessPointPolicyForObjectLambda

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetAccessPointPolicyForObjectLambda>

Returns: a L<Paws::S3Control::GetAccessPointPolicyForObjectLambdaResult> instance

Returns the resource policy for an Object Lambda Access Point.

The following actions are related to
C<GetAccessPointPolicyForObjectLambda>:

=over

=item *

DeleteAccessPointPolicyForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html)

=item *

PutAccessPointPolicyForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html)

=back



=head2 GetAccessPointPolicyStatus

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetAccessPointPolicyStatus>

Returns: a L<Paws::S3Control::GetAccessPointPolicyStatusResult> instance

Indicates whether the specified access point currently has a policy
that allows public access. For more information about public access
through access points, see Managing Data Access with Amazon S3 access
points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html)
in the I<Amazon S3 User Guide>.


=head2 GetAccessPointPolicyStatusForObjectLambda

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetAccessPointPolicyStatusForObjectLambda>

Returns: a L<Paws::S3Control::GetAccessPointPolicyStatusForObjectLambdaResult> instance

Returns the status of the resource policy associated with an Object
Lambda Access Point.


=head2 GetBucket

=over

=item AccountId => Str

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetBucket>

Returns: a L<Paws::S3Control::GetBucketResult> instance

Gets an Amazon S3 on Outposts bucket. For more information, see Using
Amazon S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.

If you are using an identity other than the root user of the AWS
account that owns the Outposts bucket, the calling identity must have
the C<s3-outposts:GetBucket> permissions on the specified Outposts
bucket and belong to the Outposts bucket owner's account in order to
use this action. Only users from Outposts bucket owner account with the
right permissions can perform actions on an Outposts bucket.

If you don't have C<s3-outposts:GetBucket> permissions or you're not
using an identity that belongs to the bucket owner's account, Amazon S3
returns a C<403 Access Denied> error.

The following actions are related to C<GetBucket> for Amazon S3 on
Outposts:

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html#API_control_GetBucket_Examples)
section.

=over

=item *

PutObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html)

=item *

DeleteBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html)

=back



=head2 GetBucketLifecycleConfiguration

=over

=item AccountId => Str

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetBucketLifecycleConfiguration>

Returns: a L<Paws::S3Control::GetBucketLifecycleConfigurationResult> instance

This action gets an Amazon S3 on Outposts bucket's lifecycle
configuration. To get an S3 bucket's lifecycle configuration, see
GetBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)
in the I<Amazon S3 API Reference>.

Returns the lifecycle configuration information set on the Outposts
bucket. For more information, see Using Amazon S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
and for information about lifecycle configuration, see Object Lifecycle
Management
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
in I<Amazon S3 User Guide>.

To use this action, you must have permission to perform the
C<s3-outposts:GetLifecycleConfiguration> action. The Outposts bucket
owner has this permission, by default. The bucket owner can grant this
permission to others. For more information about permissions, see
Permissions Related to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html#API_control_GetBucketLifecycleConfiguration_Examples)
section.

C<GetBucketLifecycleConfiguration> has the following special error:

=over

=item *

Error code: C<NoSuchLifecycleConfiguration>

=over

=item *

Description: The lifecycle configuration does not exist.

=item *

HTTP Status Code: 404 Not Found

=item *

SOAP Fault Code Prefix: Client

=back

=back

The following actions are related to
C<GetBucketLifecycleConfiguration>:

=over

=item *

PutBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html)

=item *

DeleteBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html)

=back



=head2 GetBucketPolicy

=over

=item AccountId => Str

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetBucketPolicy>

Returns: a L<Paws::S3Control::GetBucketPolicyResult> instance

This action gets a bucket policy for an Amazon S3 on Outposts bucket.
To get a policy for an S3 bucket, see GetBucketPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicy.html)
in the I<Amazon S3 API Reference>.

Returns the policy of a specified Outposts bucket. For more
information, see Using Amazon S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.

If you are using an identity other than the root user of the AWS
account that owns the bucket, the calling identity must have the
C<GetBucketPolicy> permissions on the specified bucket and belong to
the bucket owner's account in order to use this action.

Only users from Outposts bucket owner account with the right
permissions can perform actions on an Outposts bucket. If you don't
have C<s3-outposts:GetBucketPolicy> permissions or you're not using an
identity that belongs to the bucket owner's account, Amazon S3 returns
a C<403 Access Denied> error.

As a security precaution, the root user of the AWS account that owns a
bucket can always use this action, even if the policy explicitly denies
the root user the ability to perform this action.

For more information about bucket policies, see Using Bucket Policies
and User Policies
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html#API_control_GetBucketPolicy_Examples)
section.

The following actions are related to C<GetBucketPolicy>:

=over

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=item *

PutBucketPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html)

=item *

DeleteBucketPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html)

=back



=head2 GetBucketTagging

=over

=item AccountId => Str

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetBucketTagging>

Returns: a L<Paws::S3Control::GetBucketTaggingResult> instance

This action gets an Amazon S3 on Outposts bucket's tags. To get an S3
bucket tags, see GetBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html)
in the I<Amazon S3 API Reference>.

Returns the tag set associated with the Outposts bucket. For more
information, see Using Amazon S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.

To use this action, you must have permission to perform the
C<GetBucketTagging> action. By default, the bucket owner has this
permission and can grant this permission to others.

C<GetBucketTagging> has the following special error:

=over

=item *

Error code: C<NoSuchTagSetError>

=over

=item *

Description: There is no tag set associated with the bucket.

=back

=back

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html#API_control_GetBucketTagging_Examples)
section.

The following actions are related to C<GetBucketTagging>:

=over

=item *

PutBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html)

=item *

DeleteBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html)

=back



=head2 GetJobTagging

=over

=item AccountId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetJobTagging>

Returns: a L<Paws::S3Control::GetJobTaggingResult> instance

Returns the tags on an S3 Batch Operations job. To use this operation,
you must have permission to perform the C<s3:GetJobTagging> action. For
more information, see Controlling access and labeling jobs using tags
(https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
in the I<Amazon S3 User Guide>.

Related actions include:

=over

=item *

CreateJob
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

=item *

PutJobTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html)

=item *

DeleteJobTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html)

=back



=head2 GetPublicAccessBlock

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetPublicAccessBlock>

Returns: a L<Paws::S3Control::GetPublicAccessBlockOutput> instance

Retrieves the C<PublicAccessBlock> configuration for an AWS account.
For more information, see Using Amazon S3 block public access
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

Related actions include:

=over

=item *

DeletePublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html)

=item *

PutPublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html)

=back



=head2 GetStorageLensConfiguration

=over

=item AccountId => Str

=item ConfigId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetStorageLensConfiguration>

Returns: a L<Paws::S3Control::GetStorageLensConfigurationResult> instance

Gets the Amazon S3 Storage Lens configuration. For more information,
see Assessing your storage activity and usage with Amazon S3 Storage
Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in
the I<Amazon S3 User Guide>.

To use this action, you must have permission to perform the
C<s3:GetStorageLensConfiguration> action. For more information, see
Setting permissions to use Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
in the I<Amazon S3 User Guide>.


=head2 GetStorageLensConfigurationTagging

=over

=item AccountId => Str

=item ConfigId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetStorageLensConfigurationTagging>

Returns: a L<Paws::S3Control::GetStorageLensConfigurationTaggingResult> instance

Gets the tags of Amazon S3 Storage Lens configuration. For more
information about S3 Storage Lens, see Assessing your storage activity
and usage with Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in
the I<Amazon S3 User Guide>.

To use this action, you must have permission to perform the
C<s3:GetStorageLensConfigurationTagging> action. For more information,
see Setting permissions to use Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
in the I<Amazon S3 User Guide>.


=head2 ListAccessPoints

=over

=item AccountId => Str

=item [Bucket => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::S3Control::ListAccessPoints>

Returns: a L<Paws::S3Control::ListAccessPointsResult> instance

Returns a list of the access points currently associated with the
specified bucket. You can retrieve up to 1000 access points per call.
If the specified bucket has more than 1,000 access points (or the
number specified in C<maxResults>, whichever is less), the response
will include a continuation token that you can use to list the
additional access points.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples)
section.

The following actions are related to C<ListAccessPoints>:

=over

=item *

CreateAccessPoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

=item *

DeleteAccessPoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html)

=item *

GetAccessPoint
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)

=back



=head2 ListAccessPointsForObjectLambda

=over

=item AccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::S3Control::ListAccessPointsForObjectLambda>

Returns: a L<Paws::S3Control::ListAccessPointsForObjectLambdaResult> instance

Returns a list of the access points associated with the Object Lambda
Access Point. You can retrieve up to 1000 access points per call. If
there are more than 1,000 access points (or the number specified in
C<maxResults>, whichever is less), the response will include a
continuation token that you can use to list the additional access
points.

The following actions are related to
C<ListAccessPointsForObjectLambda>:

=over

=item *

CreateAccessPointForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html)

=item *

DeleteAccessPointForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html)

=item *

GetAccessPointForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html)

=back



=head2 ListJobs

=over

=item AccountId => Str

=item [JobStatuses => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::S3Control::ListJobs>

Returns: a L<Paws::S3Control::ListJobsResult> instance

Lists current S3 Batch Operations jobs and jobs that have ended within
the last 30 days for the AWS account making the request. For more
information, see S3 Batch Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
in the I<Amazon S3 User Guide>.

Related actions include:

=over

=item *

CreateJob
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

=item *

DescribeJob
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

=item *

UpdateJobPriority
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html)

=item *

UpdateJobStatus
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

=back



=head2 ListRegionalBuckets

=over

=item AccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OutpostId => Str]


=back

Each argument is described in detail in: L<Paws::S3Control::ListRegionalBuckets>

Returns: a L<Paws::S3Control::ListRegionalBucketsResult> instance

Returns a list of all Outposts buckets in an Outpost that are owned by
the authenticated sender of the request. For more information, see
Using Amazon S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.

For an example of the request syntax for Amazon S3 on Outposts that
uses the S3 on Outposts endpoint hostname prefix and
C<x-amz-outpost-id> in your request, see the Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListRegionalBuckets.html#API_control_ListRegionalBuckets_Examples)
section.


=head2 ListStorageLensConfigurations

=over

=item AccountId => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::S3Control::ListStorageLensConfigurations>

Returns: a L<Paws::S3Control::ListStorageLensConfigurationsResult> instance

Gets a list of Amazon S3 Storage Lens configurations. For more
information about S3 Storage Lens, see Assessing your storage activity
and usage with Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in
the I<Amazon S3 User Guide>.

To use this action, you must have permission to perform the
C<s3:ListStorageLensConfigurations> action. For more information, see
Setting permissions to use Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
in the I<Amazon S3 User Guide>.


=head2 PutAccessPointConfigurationForObjectLambda

=over

=item AccountId => Str

=item Configuration => L<Paws::S3Control::ObjectLambdaConfiguration>

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::PutAccessPointConfigurationForObjectLambda>

Returns: nothing

Replaces configuration for an Object Lambda Access Point.

The following actions are related to
C<PutAccessPointConfigurationForObjectLambda>:

=over

=item *

GetAccessPointConfigurationForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointConfigurationForObjectLambda.html)

=back



=head2 PutAccessPointPolicy

=over

=item AccountId => Str

=item Name => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::S3Control::PutAccessPointPolicy>

Returns: nothing

Associates an access policy with the specified access point. Each
access point can have only one policy, so a request made to this API
replaces any existing policy associated with the specified access
point.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html#API_control_PutAccessPointPolicy_Examples)
section.

The following actions are related to C<PutAccessPointPolicy>:

=over

=item *

GetAccessPointPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html)

=item *

DeleteAccessPointPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html)

=back



=head2 PutAccessPointPolicyForObjectLambda

=over

=item AccountId => Str

=item Name => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::S3Control::PutAccessPointPolicyForObjectLambda>

Returns: nothing

Creates or replaces resource policy for an Object Lambda Access Point.
For an example policy, see Creating Object Lambda Access Points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-create.html#olap-create-cli)
in the I<Amazon S3 User Guide>.

The following actions are related to
C<PutAccessPointPolicyForObjectLambda>:

=over

=item *

DeleteAccessPointPolicyForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html)

=item *

GetAccessPointPolicyForObjectLambda
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html)

=back



=head2 PutBucketLifecycleConfiguration

=over

=item AccountId => Str

=item Bucket => Str

=item [LifecycleConfiguration => L<Paws::S3Control::LifecycleConfiguration>]


=back

Each argument is described in detail in: L<Paws::S3Control::PutBucketLifecycleConfiguration>

Returns: nothing

This action puts a lifecycle configuration to an Amazon S3 on Outposts
bucket. To put a lifecycle configuration to an S3 bucket, see
PutBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)
in the I<Amazon S3 API Reference>.

Creates a new lifecycle configuration for the S3 on Outposts bucket or
replaces an existing lifecycle configuration. Outposts buckets only
support lifecycle configurations that delete/expire objects after a
certain period of time and abort incomplete multipart uploads.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html#API_control_PutBucketLifecycleConfiguration_Examples)
section.

The following actions are related to
C<PutBucketLifecycleConfiguration>:

=over

=item *

GetBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)

=item *

DeleteBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html)

=back



=head2 PutBucketPolicy

=over

=item AccountId => Str

=item Bucket => Str

=item Policy => Str

=item [ConfirmRemoveSelfBucketAccess => Bool]


=back

Each argument is described in detail in: L<Paws::S3Control::PutBucketPolicy>

Returns: nothing

This action puts a bucket policy to an Amazon S3 on Outposts bucket. To
put a policy on an S3 bucket, see PutBucketPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketPolicy.html)
in the I<Amazon S3 API Reference>.

Applies an Amazon S3 bucket policy to an Outposts bucket. For more
information, see Using Amazon S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.

If you are using an identity other than the root user of the AWS
account that owns the Outposts bucket, the calling identity must have
the C<PutBucketPolicy> permissions on the specified Outposts bucket and
belong to the bucket owner's account in order to use this action.

If you don't have C<PutBucketPolicy> permissions, Amazon S3 returns a
C<403 Access Denied> error. If you have the correct permissions, but
you're not using an identity that belongs to the bucket owner's
account, Amazon S3 returns a C<405 Method Not Allowed> error.

As a security precaution, the root user of the AWS account that owns a
bucket can always use this action, even if the policy explicitly denies
the root user the ability to perform this action.

For more information about bucket policies, see Using Bucket Policies
and User Policies
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html#API_control_PutBucketPolicy_Examples)
section.

The following actions are related to C<PutBucketPolicy>:

=over

=item *

GetBucketPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html)

=item *

DeleteBucketPolicy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html)

=back



=head2 PutBucketTagging

=over

=item AccountId => Str

=item Bucket => Str

=item Tagging => L<Paws::S3Control::Tagging>


=back

Each argument is described in detail in: L<Paws::S3Control::PutBucketTagging>

Returns: nothing

This action puts tags on an Amazon S3 on Outposts bucket. To put tags
on an S3 bucket, see PutBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html)
in the I<Amazon S3 API Reference>.

Sets the tags for an S3 on Outposts bucket. For more information, see
Using Amazon S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.

Use tags to organize your AWS bill to reflect your own cost structure.
To do this, sign up to get your AWS account bill with tag key values
included. Then, to see the cost of combined resources, organize your
billing information according to resources with the same tag key
values. For example, you can tag several resources with a specific
application name, and then organize your billing information to see the
total cost of that application across several services. For more
information, see Cost allocation and tagging
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html).

Within a bucket, if you add a tag that has the same key as an existing
tag, the new value overwrites the old value. For more information, see
Using cost allocation in Amazon S3 bucket tags
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html).

To use this action, you must have permissions to perform the
C<s3-outposts:PutBucketTagging> action. The Outposts bucket owner has
this permission by default and can grant this permission to others. For
more information about permissions, see Permissions Related to Bucket
Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing access permissions to your Amazon S3 resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

C<PutBucketTagging> has the following special errors:

=over

=item *

Error code: C<InvalidTagError>

=over

=item *

Description: The tag provided was not a valid tag. This error can occur
if the tag did not pass input validation. For information about tag
restrictions, see User-Defined Tag Restrictions
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
and AWS-Generated Cost Allocation Tag Restrictions
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/aws-tag-restrictions.html).

=back

=item *

Error code: C<MalformedXMLError>

=over

=item *

Description: The XML provided does not match the schema.

=back

=item *

Error code: C<OperationAbortedError>

=over

=item *

Description: A conflicting conditional action is currently in progress
against this resource. Try again.

=back

=item *

Error code: C<InternalError>

=over

=item *

Description: The service was unable to apply the provided tag to the
bucket.

=back

=back

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of C<x-amz-outpost-id> to be passed with the
request and an S3 on Outposts endpoint hostname prefix instead of
C<s3-control>. For an example of the request syntax for Amazon S3 on
Outposts that uses the S3 on Outposts endpoint hostname prefix and the
C<x-amz-outpost-id> derived using the access point ARN, see the
Examples
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html#API_control_PutBucketTagging_Examples)
section.

The following actions are related to C<PutBucketTagging>:

=over

=item *

GetBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html)

=item *

DeleteBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html)

=back



=head2 PutJobTagging

=over

=item AccountId => Str

=item JobId => Str

=item Tags => ArrayRef[L<Paws::S3Control::S3Tag>]


=back

Each argument is described in detail in: L<Paws::S3Control::PutJobTagging>

Returns: a L<Paws::S3Control::PutJobTaggingResult> instance

Sets the supplied tag-set on an S3 Batch Operations job.

A tag is a key-value pair. You can associate S3 Batch Operations tags
with any job by sending a PUT request against the tagging subresource
that is associated with the job. To modify the existing tag set, you
can either replace the existing tag set entirely, or make changes
within the existing tag set by retrieving the existing tag set using
GetJobTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html),
modify that tag set, and use this action to replace the tag set with
the one you modified. For more information, see Controlling access and
labeling jobs using tags
(https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
in the I<Amazon S3 User Guide>.

=over

=item *

If you send this request with an empty tag set, Amazon S3 deletes the
existing tag set on the Batch Operations job. If you use this method,
you are charged for a Tier 1 Request (PUT). For more information, see
Amazon S3 pricing (http://aws.amazon.com/s3/pricing/).

=item *

For deleting existing tags for your Batch Operations job, a
DeleteJobTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html)
request is preferred because it achieves the same result without
incurring charges.

=item *

A few things to consider about using tags:

=over

=item *

Amazon S3 limits the maximum number of tags to 50 tags per job.

=item *

You can associate up to 50 tags with a job as long as they have unique
tag keys.

=item *

A tag key can be up to 128 Unicode characters in length, and tag values
can be up to 256 Unicode characters in length.

=item *

The key and values are case sensitive.

=item *

For tagging-related restrictions related to characters and encodings,
see User-Defined Tag Restrictions
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
in the I<AWS Billing and Cost Management User Guide>.

=back

=back

To use this action, you must have permission to perform the
C<s3:PutJobTagging> action.

Related actions include:

=over

=item *

CreatJob
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

=item *

GetJobTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html)

=item *

DeleteJobTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html)

=back



=head2 PutPublicAccessBlock

=over

=item AccountId => Str

=item PublicAccessBlockConfiguration => L<Paws::S3Control::PublicAccessBlockConfiguration>


=back

Each argument is described in detail in: L<Paws::S3Control::PutPublicAccessBlock>

Returns: nothing

Creates or modifies the C<PublicAccessBlock> configuration for an AWS
account. For more information, see Using Amazon S3 block public access
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

Related actions include:

=over

=item *

GetPublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html)

=item *

DeletePublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html)

=back



=head2 PutStorageLensConfiguration

=over

=item AccountId => Str

=item ConfigId => Str

=item StorageLensConfiguration => L<Paws::S3Control::StorageLensConfiguration>

=item [Tags => ArrayRef[L<Paws::S3Control::StorageLensTag>]]


=back

Each argument is described in detail in: L<Paws::S3Control::PutStorageLensConfiguration>

Returns: nothing

Puts an Amazon S3 Storage Lens configuration. For more information
about S3 Storage Lens, see Working with Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in
the I<Amazon S3 User Guide>.

To use this action, you must have permission to perform the
C<s3:PutStorageLensConfiguration> action. For more information, see
Setting permissions to use Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
in the I<Amazon S3 User Guide>.


=head2 PutStorageLensConfigurationTagging

=over

=item AccountId => Str

=item ConfigId => Str

=item Tags => ArrayRef[L<Paws::S3Control::StorageLensTag>]


=back

Each argument is described in detail in: L<Paws::S3Control::PutStorageLensConfigurationTagging>

Returns: a L<Paws::S3Control::PutStorageLensConfigurationTaggingResult> instance

Put or replace tags on an existing Amazon S3 Storage Lens
configuration. For more information about S3 Storage Lens, see
Assessing your storage activity and usage with Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in
the I<Amazon S3 User Guide>.

To use this action, you must have permission to perform the
C<s3:PutStorageLensConfigurationTagging> action. For more information,
see Setting permissions to use Amazon S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
in the I<Amazon S3 User Guide>.


=head2 UpdateJobPriority

=over

=item AccountId => Str

=item JobId => Str

=item Priority => Int


=back

Each argument is described in detail in: L<Paws::S3Control::UpdateJobPriority>

Returns: a L<Paws::S3Control::UpdateJobPriorityResult> instance

Updates an existing S3 Batch Operations job's priority. For more
information, see S3 Batch Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
in the I<Amazon S3 User Guide>.

Related actions include:

=over

=item *

CreateJob
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

=item *

ListJobs
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

=item *

DescribeJob
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

=item *

UpdateJobStatus
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

=back



=head2 UpdateJobStatus

=over

=item AccountId => Str

=item JobId => Str

=item RequestedJobStatus => Str

=item [StatusUpdateReason => Str]


=back

Each argument is described in detail in: L<Paws::S3Control::UpdateJobStatus>

Returns: a L<Paws::S3Control::UpdateJobStatusResult> instance

Updates the status for the specified job. Use this action to confirm
that you want to run a job or to cancel an existing job. For more
information, see S3 Batch Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
in the I<Amazon S3 User Guide>.

Related actions include:

=over

=item *

CreateJob
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

=item *

ListJobs
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

=item *

DescribeJob
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

=item *

UpdateJobStatus
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccessPointsForObjectLambda(sub { },AccountId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAccessPointsForObjectLambda(AccountId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ObjectLambdaAccessPointList, passing the object as the first parameter, and the string 'ObjectLambdaAccessPointList' as the second parameter 

If not, it will return a a L<Paws::S3Control::ListAccessPointsForObjectLambdaResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

