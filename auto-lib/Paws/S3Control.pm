package Paws::S3Control;
  warn "Paws::S3Control is not stable / supported / entirely developed" unless $ENV{'PAWS_SILENCE_UNSTABLE_WARNINGS'};
  use Moose;
  sub service { 's3-control' }
  sub signing_name { 's3' }
  sub version { '2018-08-20' }
  sub flattened_arrays { 0 }
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
  sub DeleteAccessPointPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeleteAccessPointPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::DeletePublicAccessBlock', @_);
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
  sub GetAccessPointPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetAccessPointPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessPointPolicyStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetAccessPointPolicyStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetPublicAccessBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessPoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::ListAccessPoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccessPointPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::PutAccessPointPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::PutPublicAccessBlock', @_);
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
  


  sub operations { qw/CreateAccessPoint CreateJob DeleteAccessPoint DeleteAccessPointPolicy DeletePublicAccessBlock DescribeJob GetAccessPoint GetAccessPointPolicy GetAccessPointPolicyStatus GetPublicAccessBlock ListAccessPoints ListJobs PutAccessPointPolicy PutPublicAccessBlock UpdateJobPriority UpdateJobStatus / }

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

AWS S3 Control provides access to Amazon S3 control plane operations.

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

Returns: nothing

Creates an access point and associates it with the specified bucket.


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


=back

Each argument is described in detail in: L<Paws::S3Control::CreateJob>

Returns: a L<Paws::S3Control::CreateJobResult> instance

Creates an Amazon S3 batch operations job.


=head2 DeleteAccessPoint

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteAccessPoint>

Returns: nothing

Deletes the specified access point.


=head2 DeleteAccessPointPolicy

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeleteAccessPointPolicy>

Returns: nothing

Deletes the access point policy for the specified access point.


=head2 DeletePublicAccessBlock

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeletePublicAccessBlock>

Returns: nothing

Removes the C<PublicAccessBlock> configuration for an Amazon Web
Services account.


=head2 DescribeJob

=over

=item AccountId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DescribeJob>

Returns: a L<Paws::S3Control::DescribeJobResult> instance

Retrieves the configuration parameters and status for a batch
operations job.


=head2 GetAccessPoint

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetAccessPoint>

Returns: a L<Paws::S3Control::GetAccessPointResult> instance

Returns configuration information about the specified access point.


=head2 GetAccessPointPolicy

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetAccessPointPolicy>

Returns: a L<Paws::S3Control::GetAccessPointPolicyResult> instance

Returns the access point policy associated with the specified access
point.


=head2 GetAccessPointPolicyStatus

=over

=item AccountId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetAccessPointPolicyStatus>

Returns: a L<Paws::S3Control::GetAccessPointPolicyStatusResult> instance

Indicates whether the specified access point currently has a policy
that allows public access. For more information about public access
through access points, see Managing Data Access with Amazon S3 Access
Points
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-points.html) in
the I<Amazon Simple Storage Service Developer Guide>.


=head2 GetPublicAccessBlock

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetPublicAccessBlock>

Returns: a L<Paws::S3Control::GetPublicAccessBlockOutput> instance

Retrieves the C<PublicAccessBlock> configuration for an Amazon Web
Services account.


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
If the specified bucket has more than 1000 access points (or the number
specified in C<maxResults>, whichever is less), then the response will
include a continuation token that you can use to list the additional
access points.


=head2 ListJobs

=over

=item AccountId => Str

=item [JobStatuses => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::S3Control::ListJobs>

Returns: a L<Paws::S3Control::ListJobsResult> instance

Lists current jobs and jobs that have ended within the last 30 days for
the AWS account making the request.


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


=head2 PutPublicAccessBlock

=over

=item AccountId => Str

=item PublicAccessBlockConfiguration => L<Paws::S3Control::PublicAccessBlockConfiguration>


=back

Each argument is described in detail in: L<Paws::S3Control::PutPublicAccessBlock>

Returns: nothing

Creates or modifies the C<PublicAccessBlock> configuration for an
Amazon Web Services account.


=head2 UpdateJobPriority

=over

=item AccountId => Str

=item JobId => Str

=item Priority => Int


=back

Each argument is described in detail in: L<Paws::S3Control::UpdateJobPriority>

Returns: a L<Paws::S3Control::UpdateJobPriorityResult> instance

Updates an existing job's priority.


=head2 UpdateJobStatus

=over

=item AccountId => Str

=item JobId => Str

=item RequestedJobStatus => Str

=item [StatusUpdateReason => Str]


=back

Each argument is described in detail in: L<Paws::S3Control::UpdateJobStatus>

Returns: a L<Paws::S3Control::UpdateJobStatusResult> instance

Updates the status for the specified job. Use this operation to confirm
that you want to run a job or to cancel an existing job.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

