package Paws::MediaConvert;
  use Moose;
  sub service { 'mediaconvert' }
  sub signing_name { 'mediaconvert' }
  sub version { '2017-08-29' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::AssociateCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::CancelJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::CreateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJobTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::CreateJobTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePreset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::CreatePreset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::CreateQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJobTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::DeleteJobTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePreset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::DeletePreset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::DeleteQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::DescribeEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::DisassociateCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::GetJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::GetJobTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPreset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::GetPreset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::GetQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::ListJobTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPresets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::ListPresets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::ListQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJobTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::UpdateJobTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePreset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::UpdatePreset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConvert::UpdateQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->Endpoints }, @{ $next_result->Endpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
        $result = $self->DescribeEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
    }

    return undef
  }
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Jobs }, @{ $next_result->Jobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
        $result = $self->ListJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
    }

    return undef
  }
  sub ListAllJobTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListJobTemplates(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobTemplates }, @{ $next_result->JobTemplates };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobTemplates') foreach (@{ $result->JobTemplates });
        $result = $self->ListJobTemplates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobTemplates') foreach (@{ $result->JobTemplates });
    }

    return undef
  }
  sub ListAllPresets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPresets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPresets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Presets }, @{ $next_result->Presets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Presets') foreach (@{ $result->Presets });
        $result = $self->ListPresets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Presets') foreach (@{ $result->Presets });
    }

    return undef
  }
  sub ListAllQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListQueues(@_, NextToken => $next_result->NextToken);
        push @{ $result->Queues }, @{ $next_result->Queues };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Queues') foreach (@{ $result->Queues });
        $result = $self->ListQueues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Queues') foreach (@{ $result->Queues });
    }

    return undef
  }


  sub operations { qw/AssociateCertificate CancelJob CreateJob CreateJobTemplate CreatePreset CreateQueue DeleteJobTemplate DeletePreset DeleteQueue DescribeEndpoints DisassociateCertificate GetJob GetJobTemplate GetPreset GetQueue ListJobs ListJobTemplates ListPresets ListQueues ListTagsForResource TagResource UntagResource UpdateJobTemplate UpdatePreset UpdateQueue / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert - Perl Interface to AWS AWS Elemental MediaConvert

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MediaConvert');
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

AWS Elemental MediaConvert

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29>


=head1 METHODS

=head2 AssociateCertificate

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::MediaConvert::AssociateCertificate>

Returns: a L<Paws::MediaConvert::AssociateCertificateResponse> instance

Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN)
with AWS Elemental MediaConvert.


=head2 CancelJob

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MediaConvert::CancelJob>

Returns: a L<Paws::MediaConvert::CancelJobResponse> instance

Permanently remove a job from a queue. Once you have canceled a job,
you can't start it again. You can't delete a running job.


=head2 CreateJob

=over

=item Role => Str

=item Settings => L<Paws::MediaConvert::JobSettings>

=item [AccelerationSettings => L<Paws::MediaConvert::AccelerationSettings>]

=item [BillingTagsSource => Str]

=item [ClientRequestToken => Str]

=item [JobTemplate => Str]

=item [Queue => Str]

=item [UserMetadata => L<Paws::MediaConvert::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::MediaConvert::CreateJob>

Returns: a L<Paws::MediaConvert::CreateJobResponse> instance

Create a new transcoding job. For information about jobs and job
settings, see the User Guide at
http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html


=head2 CreateJobTemplate

=over

=item Name => Str

=item Settings => L<Paws::MediaConvert::JobTemplateSettings>

=item [AccelerationSettings => L<Paws::MediaConvert::AccelerationSettings>]

=item [Category => Str]

=item [Description => Str]

=item [Queue => Str]

=item [Tags => L<Paws::MediaConvert::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::MediaConvert::CreateJobTemplate>

Returns: a L<Paws::MediaConvert::CreateJobTemplateResponse> instance

Create a new job template. For information about job templates see the
User Guide at
http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html


=head2 CreatePreset

=over

=item Name => Str

=item Settings => L<Paws::MediaConvert::PresetSettings>

=item [Category => Str]

=item [Description => Str]

=item [Tags => L<Paws::MediaConvert::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::MediaConvert::CreatePreset>

Returns: a L<Paws::MediaConvert::CreatePresetResponse> instance

Create a new preset. For information about job templates see the User
Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html


=head2 CreateQueue

=over

=item Name => Str

=item [Description => Str]

=item [PricingPlan => Str]

=item [ReservationPlanSettings => L<Paws::MediaConvert::ReservationPlanSettings>]

=item [Tags => L<Paws::MediaConvert::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::MediaConvert::CreateQueue>

Returns: a L<Paws::MediaConvert::CreateQueueResponse> instance

Create a new transcoding queue. For information about queues, see
Working With Queues in the User Guide at
https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html


=head2 DeleteJobTemplate

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MediaConvert::DeleteJobTemplate>

Returns: a L<Paws::MediaConvert::DeleteJobTemplateResponse> instance

Permanently delete a job template you have created.


=head2 DeletePreset

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MediaConvert::DeletePreset>

Returns: a L<Paws::MediaConvert::DeletePresetResponse> instance

Permanently delete a preset you have created.


=head2 DeleteQueue

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MediaConvert::DeleteQueue>

Returns: a L<Paws::MediaConvert::DeleteQueueResponse> instance

Permanently delete a queue you have created.


=head2 DescribeEndpoints

=over

=item [MaxResults => Int]

=item [Mode => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaConvert::DescribeEndpoints>

Returns: a L<Paws::MediaConvert::DescribeEndpointsResponse> instance

Send an request with an empty body to the regional API endpoint to get
your account API endpoint.


=head2 DisassociateCertificate

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::MediaConvert::DisassociateCertificate>

Returns: a L<Paws::MediaConvert::DisassociateCertificateResponse> instance

Removes an association between the Amazon Resource Name (ARN) of an AWS
Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert
resource.


=head2 GetJob

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MediaConvert::GetJob>

Returns: a L<Paws::MediaConvert::GetJobResponse> instance

Retrieve the JSON for a specific completed transcoding job.


=head2 GetJobTemplate

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MediaConvert::GetJobTemplate>

Returns: a L<Paws::MediaConvert::GetJobTemplateResponse> instance

Retrieve the JSON for a specific job template.


=head2 GetPreset

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MediaConvert::GetPreset>

Returns: a L<Paws::MediaConvert::GetPresetResponse> instance

Retrieve the JSON for a specific preset.


=head2 GetQueue

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MediaConvert::GetQueue>

Returns: a L<Paws::MediaConvert::GetQueueResponse> instance

Retrieve the JSON for a specific queue.


=head2 ListJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Order => Str]

=item [Queue => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::MediaConvert::ListJobs>

Returns: a L<Paws::MediaConvert::ListJobsResponse> instance

Retrieve a JSON array of up to twenty of your most recently created
jobs. This array includes in-process, completed, and errored jobs. This
will return the jobs themselves, not just a list of the jobs. To
retrieve the twenty next most recent jobs, use the nextToken string
returned with the array.


=head2 ListJobTemplates

=over

=item [Category => Str]

=item [ListBy => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Order => Str]


=back

Each argument is described in detail in: L<Paws::MediaConvert::ListJobTemplates>

Returns: a L<Paws::MediaConvert::ListJobTemplatesResponse> instance

Retrieve a JSON array of up to twenty of your job templates. This will
return the templates themselves, not just a list of them. To retrieve
the next twenty templates, use the nextToken string returned with the
array


=head2 ListPresets

=over

=item [Category => Str]

=item [ListBy => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Order => Str]


=back

Each argument is described in detail in: L<Paws::MediaConvert::ListPresets>

Returns: a L<Paws::MediaConvert::ListPresetsResponse> instance

Retrieve a JSON array of up to twenty of your presets. This will return
the presets themselves, not just a list of them. To retrieve the next
twenty presets, use the nextToken string returned with the array.


=head2 ListQueues

=over

=item [ListBy => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Order => Str]


=back

Each argument is described in detail in: L<Paws::MediaConvert::ListQueues>

Returns: a L<Paws::MediaConvert::ListQueuesResponse> instance

Retrieve a JSON array of up to twenty of your queues. This will return
the queues themselves, not just a list of them. To retrieve the next
twenty queues, use the nextToken string returned with the array.


=head2 ListTagsForResource

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::MediaConvert::ListTagsForResource>

Returns: a L<Paws::MediaConvert::ListTagsForResourceResponse> instance

Retrieve the tags for a MediaConvert resource.


=head2 TagResource

=over

=item Arn => Str

=item Tags => L<Paws::MediaConvert::__mapOf__string>


=back

Each argument is described in detail in: L<Paws::MediaConvert::TagResource>

Returns: a L<Paws::MediaConvert::TagResourceResponse> instance

Add tags to a MediaConvert queue, preset, or job template. For
information about tagging, see the User Guide at
https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html


=head2 UntagResource

=over

=item Arn => Str

=item [TagKeys => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::MediaConvert::UntagResource>

Returns: a L<Paws::MediaConvert::UntagResourceResponse> instance

Remove tags from a MediaConvert queue, preset, or job template. For
information about tagging, see the User Guide at
https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html


=head2 UpdateJobTemplate

=over

=item Name => Str

=item [AccelerationSettings => L<Paws::MediaConvert::AccelerationSettings>]

=item [Category => Str]

=item [Description => Str]

=item [Queue => Str]

=item [Settings => L<Paws::MediaConvert::JobTemplateSettings>]


=back

Each argument is described in detail in: L<Paws::MediaConvert::UpdateJobTemplate>

Returns: a L<Paws::MediaConvert::UpdateJobTemplateResponse> instance

Modify one of your existing job templates.


=head2 UpdatePreset

=over

=item Name => Str

=item [Category => Str]

=item [Description => Str]

=item [Settings => L<Paws::MediaConvert::PresetSettings>]


=back

Each argument is described in detail in: L<Paws::MediaConvert::UpdatePreset>

Returns: a L<Paws::MediaConvert::UpdatePresetResponse> instance

Modify one of your existing presets.


=head2 UpdateQueue

=over

=item Name => Str

=item [Description => Str]

=item [ReservationPlanSettings => L<Paws::MediaConvert::ReservationPlanSettings>]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::MediaConvert::UpdateQueue>

Returns: a L<Paws::MediaConvert::UpdateQueueResponse> instance

Modify one of your existing queues.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllEndpoints(sub { },[MaxResults => Int, Mode => Str, NextToken => Str])

=head2 DescribeAllEndpoints([MaxResults => Int, Mode => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Endpoints, passing the object as the first parameter, and the string 'Endpoints' as the second parameter 

If not, it will return a a L<Paws::MediaConvert::DescribeEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobs(sub { },[MaxResults => Int, NextToken => Str, Order => Str, Queue => Str, Status => Str])

=head2 ListAllJobs([MaxResults => Int, NextToken => Str, Order => Str, Queue => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Jobs, passing the object as the first parameter, and the string 'Jobs' as the second parameter 

If not, it will return a a L<Paws::MediaConvert::ListJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobTemplates(sub { },[Category => Str, ListBy => Str, MaxResults => Int, NextToken => Str, Order => Str])

=head2 ListAllJobTemplates([Category => Str, ListBy => Str, MaxResults => Int, NextToken => Str, Order => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobTemplates, passing the object as the first parameter, and the string 'JobTemplates' as the second parameter 

If not, it will return a a L<Paws::MediaConvert::ListJobTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPresets(sub { },[Category => Str, ListBy => Str, MaxResults => Int, NextToken => Str, Order => Str])

=head2 ListAllPresets([Category => Str, ListBy => Str, MaxResults => Int, NextToken => Str, Order => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Presets, passing the object as the first parameter, and the string 'Presets' as the second parameter 

If not, it will return a a L<Paws::MediaConvert::ListPresetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueues(sub { },[ListBy => Str, MaxResults => Int, NextToken => Str, Order => Str])

=head2 ListAllQueues([ListBy => Str, MaxResults => Int, NextToken => Str, Order => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Queues, passing the object as the first parameter, and the string 'Queues' as the second parameter 

If not, it will return a a L<Paws::MediaConvert::ListQueuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

