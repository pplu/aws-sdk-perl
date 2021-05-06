package Paws::ImportExport;
  use Moose;
  sub service { 'importexport' }
  sub signing_name { 'importexport' }
  sub version { '2010-06-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V2Signature', 'Paws::Net::QueryCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'notStartsWith',
          'cn-'
        ]
      ],
      uri => 'https://importexport.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub CancelJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImportExport::CancelJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImportExport::CreateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetShippingLabel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImportExport::GetShippingLabel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImportExport::GetStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImportExport::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImportExport::UpdateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListJobs(@_, Marker => $next_result->Jobs->[-1]->JobId);
        push @{ $result->Jobs }, @{ $next_result->Jobs };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
        $result = $self->ListJobs(@_, Marker => $result->Jobs->[-1]->JobId);
      }
      $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
    }

    return undef
  }


  sub operations { qw/CancelJob CreateJob GetShippingLabel GetStatus ListJobs UpdateJob / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport - Perl Interface to AWS AWS Import/Export

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ImportExport');
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

AWS Import/Export Service AWS Import/Export accelerates transferring
large amounts of data between the AWS cloud and portable storage
devices that you mail to us. AWS Import/Export transfers data directly
onto and off of your storage devices using Amazon's high-speed internal
network and bypassing the Internet. For large data sets, AWS
Import/Export is often faster than Internet transfer and more cost
effective than upgrading your connectivity.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/importexport-2010-06-01>


=head1 METHODS

=head2 CancelJob

=over

=item JobId => Str

=item [APIVersion => Str]


=back

Each argument is described in detail in: L<Paws::ImportExport::CancelJob>

Returns: a L<Paws::ImportExport::CancelJobOutput> instance

This operation cancels a specified job. Only the job owner can cancel
it. The operation fails if the job has already started or is complete.


=head2 CreateJob

=over

=item JobType => Str

=item Manifest => Str

=item ValidateOnly => Bool

=item [APIVersion => Str]

=item [ManifestAddendum => Str]


=back

Each argument is described in detail in: L<Paws::ImportExport::CreateJob>

Returns: a L<Paws::ImportExport::CreateJobOutput> instance

This operation initiates the process of scheduling an upload or
download of your data. You include in the request a manifest that
describes the data transfer specifics. The response to the request
includes a job ID, which you can use in other operations, a signature
that you use to identify your storage device, and the address where you
should ship your storage device.


=head2 GetShippingLabel

=over

=item JobIds => ArrayRef[Str|Undef]

=item [APIVersion => Str]

=item [City => Str]

=item [Company => Str]

=item [Country => Str]

=item [Name => Str]

=item [PhoneNumber => Str]

=item [PostalCode => Str]

=item [StateOrProvince => Str]

=item [Street1 => Str]

=item [Street2 => Str]

=item [Street3 => Str]


=back

Each argument is described in detail in: L<Paws::ImportExport::GetShippingLabel>

Returns: a L<Paws::ImportExport::GetShippingLabelOutput> instance

This operation generates a pre-paid UPS shipping label that you will
use to ship your device to AWS for processing.


=head2 GetStatus

=over

=item JobId => Str

=item [APIVersion => Str]


=back

Each argument is described in detail in: L<Paws::ImportExport::GetStatus>

Returns: a L<Paws::ImportExport::GetStatusOutput> instance

This operation returns information about a job, including where the job
is in the processing pipeline, the status of the results, and the
signature value associated with the job. You can only return
information about jobs you own.


=head2 ListJobs

=over

=item [APIVersion => Str]

=item [Marker => Str]

=item [MaxJobs => Int]


=back

Each argument is described in detail in: L<Paws::ImportExport::ListJobs>

Returns: a L<Paws::ImportExport::ListJobsOutput> instance

This operation returns the jobs associated with the requester. AWS
Import/Export lists the jobs in reverse chronological order based on
the date of creation. For example if Job Test1 was created 2009Dec30
and Test2 was created 2010Feb05, the ListJobs operation would return
Test2 followed by Test1.


=head2 UpdateJob

=over

=item JobId => Str

=item JobType => Str

=item Manifest => Str

=item ValidateOnly => Bool

=item [APIVersion => Str]


=back

Each argument is described in detail in: L<Paws::ImportExport::UpdateJob>

Returns: a L<Paws::ImportExport::UpdateJobOutput> instance

You use this operation to change the parameters specified in the
original manifest file by supplying a new manifest file. The manifest
file attached to this request replaces the original manifest file. You
can only use the operation after a CreateJob request but before the
data transfer starts and you can only use it on jobs you own.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllJobs(sub { },[APIVersion => Str, Marker => Str, MaxJobs => Int])

=head2 ListAllJobs([APIVersion => Str, Marker => Str, MaxJobs => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Jobs, passing the object as the first parameter, and the string 'Jobs' as the second parameter 

If not, it will return a a L<Paws::ImportExport::ListJobsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

