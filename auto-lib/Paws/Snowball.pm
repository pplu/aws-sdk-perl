package Paws::Snowball;
  use Moose;
  sub service { 'snowball' }
  sub version { '2016-06-30' }
  sub target_prefix { 'AWSIESnowballJobManagementService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CancelJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Snowball::CancelJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Snowball::CreateAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Snowball::CreateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Snowball::DescribeAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Snowball::DescribeAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Snowball::DescribeJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobManifest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Snowball::GetJobManifest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobUnlockCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Snowball::GetJobUnlockCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSnowballUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Snowball::GetSnowballUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Snowball::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Snowball::UpdateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CancelJob CreateAddress CreateJob DescribeAddress DescribeAddresses DescribeJob GetJobManifest GetJobUnlockCode GetSnowballUsage ListJobs UpdateJob / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball - Perl Interface to AWS Amazon Import/Export Snowball

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Snowball');
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

This is a test of the welcome page front matter.

=head1 METHODS

=head2 CancelJob(JobId => Str)

Each argument is described in detail in: L<Paws::Snowball::CancelJob>

Returns: a L<Paws::Snowball::CancelJobResult> instance

  Cancels the specified job. Note that you can only cancel a job before
its C<JobState> value changes to C<PreparingAppliance>. Requesting the
C<ListJobs> or C<DescribeJob> action will return a job's C<JobState> as
part of the response element data returned.


=head2 CreateAddress(Address => L<Paws::Snowball::Address>)

Each argument is described in detail in: L<Paws::Snowball::CreateAddress>

Returns: a L<Paws::Snowball::CreateAddressResult> instance

  Creates an address for a Snowball to be shipped to.

Addresses are validated at the time of creation. The address you
provide must be located within the serviceable area of your region. If
the address is invalid or unsupported, then an exception is thrown.


=head2 CreateJob(AddressId => Str, JobType => Str, Resources => L<Paws::Snowball::JobResource>, RoleARN => Str, ShippingOption => Str, [Description => Str, KmsKeyARN => Str, Notification => L<Paws::Snowball::Notification>, SnowballCapacityPreference => Str])

Each argument is described in detail in: L<Paws::Snowball::CreateJob>

Returns: a L<Paws::Snowball::CreateJobResult> instance

  Creates a job to import or export data between Amazon S3 and your
on-premises data center. Note that your AWS account must have the right
trust policies and permissions in place to create a job for Snowball.
For more information, see api-reference-policies.


=head2 DescribeAddress(AddressId => Str)

Each argument is described in detail in: L<Paws::Snowball::DescribeAddress>

Returns: a L<Paws::Snowball::DescribeAddressResult> instance

  Takes an C<AddressId> and returns specific details about that address
in the form of an C<Address> object.


=head2 DescribeAddresses([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Snowball::DescribeAddresses>

Returns: a L<Paws::Snowball::DescribeAddressesResult> instance

  Returns a specified number of C<ADDRESS> objects. Calling this API in
one of the US regions will return addresses from the list of all
addresses associated with this account in all US regions.


=head2 DescribeJob(JobId => Str)

Each argument is described in detail in: L<Paws::Snowball::DescribeJob>

Returns: a L<Paws::Snowball::DescribeJobResult> instance

  Returns information about a specific job including shipping
information, job status, and other important metadata.


=head2 GetJobManifest(JobId => Str)

Each argument is described in detail in: L<Paws::Snowball::GetJobManifest>

Returns: a L<Paws::Snowball::GetJobManifestResult> instance

  Returns a link to an Amazon S3 presigned URL for the manifest file
associated with the specified C<JobId> value. You can access the
manifest file for up to 60 minutes after this request has been made. To
access the manifest file after 60 minutes have passed, you'll have to
make another call to the C<GetJobManifest> action.

The manifest is an encrypted file that you can download after your job
enters the C<WithCustomer> status. The manifest is decrypted by using
the C<UnlockCode> code value, when you pass both values to the Snowball
through the Snowball client when the client is started for the first
time.

As a best practice, we recommend that you don't save a copy of an
C<UnlockCode> value in the same location as the manifest file for that
job. Saving these separately helps prevent unauthorized parties from
gaining access to the Snowball associated with that job.

Note that the credentials of a given job, including its manifest file
and unlock code, expire 90 days after the job is created.


=head2 GetJobUnlockCode(JobId => Str)

Each argument is described in detail in: L<Paws::Snowball::GetJobUnlockCode>

Returns: a L<Paws::Snowball::GetJobUnlockCodeResult> instance

  Returns the C<UnlockCode> code value for the specified job. A
particular C<UnlockCode> value can be accessed for up to 90 days after
the associated job has been created.

The C<UnlockCode> value is a 29-character code with 25 alphanumeric
characters and 4 hyphens. This code is used to decrypt the manifest
file when it is passed along with the manifest to the Snowball through
the Snowball client when the client is started for the first time.

As a best practice, we recommend that you don't save a copy of the
C<UnlockCode> in the same location as the manifest file for that job.
Saving these separately helps prevent unauthorized parties from gaining
access to the Snowball associated with that job.


=head2 GetSnowballUsage()

Each argument is described in detail in: L<Paws::Snowball::GetSnowballUsage>

Returns: a L<Paws::Snowball::GetSnowballUsageResult> instance

  Returns information about the Snowball service limit for your account,
and also the number of Snowballs your account has in use.

Note that the default service limit for the number of Snowballs that
you can have at one time is 1. If you want to increase your service
limit, contact AWS Support.


=head2 ListJobs([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Snowball::ListJobs>

Returns: a L<Paws::Snowball::ListJobsResult> instance

  Returns an array of C<JobListEntry> objects of the specified length.
Each C<JobListEntry> object contains a job's state, a job's ID, and a
value that indicates whether the job is a job part, in the case of
export jobs. Calling this API action in one of the US regions will
return jobs from the list of all jobs associated with this account in
all US regions.


=head2 UpdateJob(JobId => Str, [AddressId => Str, Description => Str, Notification => L<Paws::Snowball::Notification>, Resources => L<Paws::Snowball::JobResource>, RoleARN => Str, ShippingOption => Str, SnowballCapacityPreference => Str])

Each argument is described in detail in: L<Paws::Snowball::UpdateJob>

Returns: a L<Paws::Snowball::UpdateJobResult> instance

  While a job's C<JobState> value is C<New>, you can update some of the
information associated with a job. Once the job changes to a different
job state, usually within 60 minutes of the job being created, this
action is no longer available.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

