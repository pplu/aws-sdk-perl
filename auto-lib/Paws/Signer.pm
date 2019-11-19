package Paws::Signer;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'signer' }
  sub signing_name { 'signer' }
  sub version { '2017-08-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelSigningProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signer::CancelSigningProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSigningJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signer::DescribeSigningJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSigningPlatform {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signer::GetSigningPlatform', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSigningProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signer::GetSigningProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSigningJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signer::ListSigningJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSigningPlatforms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signer::ListSigningPlatforms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSigningProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signer::ListSigningProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signer::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSigningProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signer::PutSigningProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSigningJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signer::StartSigningJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signer::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signer::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllSigningJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSigningJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSigningJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobs }, @{ $next_result->jobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobs') foreach (@{ $result->jobs });
        $result = $self->ListSigningJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobs') foreach (@{ $result->jobs });
    }

    return undef
  }
  sub ListAllSigningPlatforms {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSigningPlatforms(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSigningPlatforms(@_, nextToken => $next_result->nextToken);
        push @{ $result->platforms }, @{ $next_result->platforms };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'platforms') foreach (@{ $result->platforms });
        $result = $self->ListSigningPlatforms(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'platforms') foreach (@{ $result->platforms });
    }

    return undef
  }
  sub ListAllSigningProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSigningProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSigningProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->profiles }, @{ $next_result->profiles };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'profiles') foreach (@{ $result->profiles });
        $result = $self->ListSigningProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'profiles') foreach (@{ $result->profiles });
    }

    return undef
  }


  sub operations { qw/CancelSigningProfile DescribeSigningJob GetSigningPlatform GetSigningProfile ListSigningJobs ListSigningPlatforms ListSigningProfiles ListTagsForResource PutSigningProfile StartSigningJob TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer - Perl Interface to AWS AWS Signer

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Signer');
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

With code signing for IoT, you can sign code that you create for any
IoT device that is supported by Amazon Web Services (AWS). Code signing
is available through Amazon FreeRTOS
(http://docs.aws.amazon.com/freertos/latest/userguide/) and AWS IoT
Device Management
(http://docs.aws.amazon.com/iot/latest/developerguide/), and integrated
with AWS Certificate Manager (ACM)
(http://docs.aws.amazon.com/acm/latest/userguide/). In order to sign
code, you import a third-party code signing certificate with ACM that
is used to sign updates in Amazon FreeRTOS and AWS IoT Device
Management. For general information about using code signing, see the
Code Signing for IoT Developer Guide
(http://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25>


=head1 METHODS

=head2 CancelSigningProfile

=over

=item ProfileName => Str


=back

Each argument is described in detail in: L<Paws::Signer::CancelSigningProfile>

Returns: nothing

Changes the state of an C<ACTIVE> signing profile to C<CANCELED>. A
canceled profile is still viewable with the C<ListSigningProfiles>
operation, but it cannot perform new signing jobs, and is deleted two
years after cancelation.


=head2 DescribeSigningJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Signer::DescribeSigningJob>

Returns: a L<Paws::Signer::DescribeSigningJobResponse> instance

Returns information about a specific code signing job. You specify the
job by using the C<jobId> value that is returned by the StartSigningJob
operation.


=head2 GetSigningPlatform

=over

=item PlatformId => Str


=back

Each argument is described in detail in: L<Paws::Signer::GetSigningPlatform>

Returns: a L<Paws::Signer::GetSigningPlatformResponse> instance

Returns information on a specific signing platform.


=head2 GetSigningProfile

=over

=item ProfileName => Str


=back

Each argument is described in detail in: L<Paws::Signer::GetSigningProfile>

Returns: a L<Paws::Signer::GetSigningProfileResponse> instance

Returns information on a specific signing profile.


=head2 ListSigningJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PlatformId => Str]

=item [RequestedBy => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Signer::ListSigningJobs>

Returns: a L<Paws::Signer::ListSigningJobsResponse> instance

Lists all your signing jobs. You can use the C<maxResults> parameter to
limit the number of signing jobs that are returned in the response. If
additional jobs remain to be listed, code signing returns a
C<nextToken> value. Use this value in subsequent calls to
C<ListSigningJobs> to fetch the remaining values. You can continue
calling C<ListSigningJobs> with your C<maxResults> parameter and with
new values that code signing returns in the C<nextToken> parameter
until all of your signing jobs have been returned.


=head2 ListSigningPlatforms

=over

=item [Category => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Partner => Str]

=item [Target => Str]


=back

Each argument is described in detail in: L<Paws::Signer::ListSigningPlatforms>

Returns: a L<Paws::Signer::ListSigningPlatformsResponse> instance

Lists all signing platforms available in code signing that match the
request parameters. If additional jobs remain to be listed, code
signing returns a C<nextToken> value. Use this value in subsequent
calls to C<ListSigningJobs> to fetch the remaining values. You can
continue calling C<ListSigningJobs> with your C<maxResults> parameter
and with new values that code signing returns in the C<nextToken>
parameter until all of your signing jobs have been returned.


=head2 ListSigningProfiles

=over

=item [IncludeCanceled => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Signer::ListSigningProfiles>

Returns: a L<Paws::Signer::ListSigningProfilesResponse> instance

Lists all available signing profiles in your AWS account. Returns only
profiles with an C<ACTIVE> status unless the C<includeCanceled> request
field is set to C<true>. If additional jobs remain to be listed, code
signing returns a C<nextToken> value. Use this value in subsequent
calls to C<ListSigningJobs> to fetch the remaining values. You can
continue calling C<ListSigningJobs> with your C<maxResults> parameter
and with new values that code signing returns in the C<nextToken>
parameter until all of your signing jobs have been returned.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Signer::ListTagsForResource>

Returns: a L<Paws::Signer::ListTagsForResourceResponse> instance

Returns a list of the tags associated with a signing profile resource.


=head2 PutSigningProfile

=over

=item PlatformId => Str

=item ProfileName => Str

=item SigningMaterial => Signer_SigningMaterial

=item [Overrides => Signer_SigningPlatformOverrides]

=item [SigningParameters => Signer_SigningParameters]

=item [Tags => Signer_TagMap]


=back

Each argument is described in detail in: L<Paws::Signer::PutSigningProfile>

Returns: a L<Paws::Signer::PutSigningProfileResponse> instance

Creates a signing profile. A signing profile is a code signing template
that can be used to carry out a pre-defined signing job. For more
information, see
http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html
(http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html)


=head2 StartSigningJob

=over

=item ClientRequestToken => Str

=item Destination => Signer_Destination

=item Source => Signer_Source

=item [ProfileName => Str]


=back

Each argument is described in detail in: L<Paws::Signer::StartSigningJob>

Returns: a L<Paws::Signer::StartSigningJobResponse> instance

Initiates a signing job to be performed on the code provided. Signing
jobs are viewable by the C<ListSigningJobs> operation for two years
after they are performed. Note the following requirements:

=over

=item *

You must create an Amazon S3 source bucket. For more information, see
Create a Bucket
(http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html)
in the I<Amazon S3 Getting Started Guide>.

=item *

Your S3 source bucket must be version enabled.

=item *

You must create an S3 destination bucket. Code signing uses your S3
destination bucket to write your signed code.

=item *

You specify the name of the source and destination buckets when calling
the C<StartSigningJob> operation.

=item *

You must also specify a request token that identifies your request to
code signing.

=back

You can call the DescribeSigningJob and the ListSigningJobs actions
after you call C<StartSigningJob>.

For a Java example that shows how to use this action, see
http://docs.aws.amazon.com/acm/latest/userguide/
(http://docs.aws.amazon.com/acm/latest/userguide/)


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => Signer_TagMap


=back

Each argument is described in detail in: L<Paws::Signer::TagResource>

Returns: a L<Paws::Signer::TagResourceResponse> instance

Adds one or more tags to a signing profile. Tags are labels that you
can use to identify and organize your AWS resources. Each tag consists
of a key and an optional value. You specify the signing profile using
its Amazon Resource Name (ARN). You specify the tag by using a
key-value pair.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Signer::UntagResource>

Returns: a L<Paws::Signer::UntagResourceResponse> instance

Remove one or more tags from a signing profile. Specify a list of tag
keys to remove the tags.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllSigningJobs(sub { },[MaxResults => Int, NextToken => Str, PlatformId => Str, RequestedBy => Str, Status => Str])

=head2 ListAllSigningJobs([MaxResults => Int, NextToken => Str, PlatformId => Str, RequestedBy => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobs, passing the object as the first parameter, and the string 'jobs' as the second parameter 

If not, it will return a a L<Paws::Signer::ListSigningJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSigningPlatforms(sub { },[Category => Str, MaxResults => Int, NextToken => Str, Partner => Str, Target => Str])

=head2 ListAllSigningPlatforms([Category => Str, MaxResults => Int, NextToken => Str, Partner => Str, Target => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - platforms, passing the object as the first parameter, and the string 'platforms' as the second parameter 

If not, it will return a a L<Paws::Signer::ListSigningPlatformsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSigningProfiles(sub { },[IncludeCanceled => Bool, MaxResults => Int, NextToken => Str])

=head2 ListAllSigningProfiles([IncludeCanceled => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - profiles, passing the object as the first parameter, and the string 'profiles' as the second parameter 

If not, it will return a a L<Paws::Signer::ListSigningProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

