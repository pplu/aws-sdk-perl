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

  
  sub CreateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::CreateJob', @_);
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
  sub GetPublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::GetPublicAccessBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Control::ListJobs', @_);
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
  


  sub operations { qw/CreateJob DeletePublicAccessBlock DescribeJob GetPublicAccessBlock ListJobs PutPublicAccessBlock UpdateJobPriority UpdateJobStatus / }

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


=head2 DeletePublicAccessBlock

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DeletePublicAccessBlock>

Returns: nothing

Deletes the block public access configuration for the specified
account.


=head2 DescribeJob

=over

=item AccountId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::DescribeJob>

Returns: a L<Paws::S3Control::DescribeJobResult> instance

Retrieves the configuration parameters and status for a batch
operations job.


=head2 GetPublicAccessBlock

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::S3Control::GetPublicAccessBlock>

Returns: a L<Paws::S3Control::GetPublicAccessBlockOutput> instance




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


=head2 PutPublicAccessBlock

=over

=item AccountId => Str

=item PublicAccessBlockConfiguration => L<Paws::S3Control::PublicAccessBlockConfiguration>


=back

Each argument is described in detail in: L<Paws::S3Control::PutPublicAccessBlock>

Returns: nothing




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

