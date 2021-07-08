package Paws::IVS;
  use Moose;
  sub service { 'ivs' }
  sub signing_name { 'ivs' }
  sub version { '2020-07-14' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchGetChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::BatchGetChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetStreamKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::BatchGetStreamKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::CreateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRecordingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::CreateRecordingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::CreateStreamKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::DeleteChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePlaybackKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::DeletePlaybackKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRecordingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::DeleteRecordingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStreamKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::DeleteStreamKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::GetChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPlaybackKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::GetPlaybackKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecordingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::GetRecordingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::GetStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::GetStreamKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportPlaybackKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::ImportPlaybackKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::ListChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPlaybackKeyPairs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::ListPlaybackKeyPairs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecordingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::ListRecordingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreamKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::ListStreamKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::ListStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::PutMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::StopStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVS::UpdateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllChannels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChannels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListChannels(@_, nextToken => $next_result->nextToken);
        push @{ $result->channels }, @{ $next_result->channels };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'channels') foreach (@{ $result->channels });
        $result = $self->ListChannels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'channels') foreach (@{ $result->channels });
    }

    return undef
  }
  sub ListAllPlaybackKeyPairs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPlaybackKeyPairs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPlaybackKeyPairs(@_, nextToken => $next_result->nextToken);
        push @{ $result->keyPairs }, @{ $next_result->keyPairs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'keyPairs') foreach (@{ $result->keyPairs });
        $result = $self->ListPlaybackKeyPairs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'keyPairs') foreach (@{ $result->keyPairs });
    }

    return undef
  }
  sub ListAllRecordingConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecordingConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRecordingConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->recordingConfigurations }, @{ $next_result->recordingConfigurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'recordingConfigurations') foreach (@{ $result->recordingConfigurations });
        $result = $self->ListRecordingConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'recordingConfigurations') foreach (@{ $result->recordingConfigurations });
    }

    return undef
  }
  sub ListAllStreamKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreamKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStreamKeys(@_, nextToken => $next_result->nextToken);
        push @{ $result->streamKeys }, @{ $next_result->streamKeys };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'streamKeys') foreach (@{ $result->streamKeys });
        $result = $self->ListStreamKeys(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'streamKeys') foreach (@{ $result->streamKeys });
    }

    return undef
  }
  sub ListAllStreams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreams(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStreams(@_, nextToken => $next_result->nextToken);
        push @{ $result->streams }, @{ $next_result->streams };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'streams') foreach (@{ $result->streams });
        $result = $self->ListStreams(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'streams') foreach (@{ $result->streams });
    }

    return undef
  }


  sub operations { qw/BatchGetChannel BatchGetStreamKey CreateChannel CreateRecordingConfiguration CreateStreamKey DeleteChannel DeletePlaybackKeyPair DeleteRecordingConfiguration DeleteStreamKey GetChannel GetPlaybackKeyPair GetRecordingConfiguration GetStream GetStreamKey ImportPlaybackKeyPair ListChannels ListPlaybackKeyPairs ListRecordingConfigurations ListStreamKeys ListStreams ListTagsForResource PutMetadata StopStream TagResource UntagResource UpdateChannel / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS - Perl Interface to AWS Amazon Interactive Video Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IVS');
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

B<Introduction>

The Amazon Interactive Video Service (IVS) API is REST compatible,
using a standard HTTP API and an AWS EventBridge event stream for
responses. JSON is used for both requests and responses, including
errors.

The API is an AWS regional service, currently in these regions:
us-west-2, us-east-1, and eu-west-1.

I<B<All API request parameters and URLs are case sensitive. >>

For a summary of notable documentation changes in each release, see
Document History
(https://docs.aws.amazon.com/ivs/latest/userguide/doc-history.html).

B<Service Endpoints>

The following are the Amazon IVS service endpoints (all HTTPS):

Region name: US West (Oregon)

=over

=item *

Region: C<us-west-2>

=item *

Endpoint: C<ivs.us-west-2.amazonaws.com>

=back

Region name: US East (Virginia)

=over

=item *

Region: C<us-east-1>

=item *

Endpoint: C<ivs.us-east-1.amazonaws.com>

=back

Region name: EU West (Dublin)

=over

=item *

Region: C<eu-west-1>

=item *

Endpoint: C<ivs.eu-west-1.amazonaws.com>

=back

B<Allowed Header Values>

=over

=item *

C<B<Accept:> > application/json

=item *

C<B<Accept-Encoding:> > gzip, deflate

=item *

C<B<Content-Type:> >application/json

=back

B<Resources>

The following resources contain information about your IVS live stream
(see Getting Started with Amazon IVS
(https://docs.aws.amazon.com/ivs/latest/userguide/getting-started.html)):

=over

=item *

Channel E<mdash> Stores configuration data related to your live stream.
You first create a channel and then use the channelE<rsquo>s stream key
to start your live stream. See the Channel endpoints for more
information.

=item *

Stream key E<mdash> An identifier assigned by Amazon IVS when you
create a channel, which is then used to authorize streaming. See the
StreamKey endpoints for more information. I< B<Treat the stream key
like a secret, since it allows anyone to stream to the channel.>>

=item *

Playback key pair E<mdash> Video playback may be restricted using
playback-authorization tokens, which use public-key encryption. A
playback key pair is the public-private pair of keys used to sign and
validate the playback-authorization token. See the PlaybackKeyPair
endpoints for more information.

=item *

Recording configuration E<mdash> Stores configuration related to
recording a live stream and where to store the recorded content.
Multiple channels can reference the same recording configuration. See
the Recording Configuration endpoints for more information.

=back

B<Tagging>

A I<tag> is a metadata label that you assign to an AWS resource. A tag
comprises a I<key> and a I<value>, both set by you. For example, you
might set a tag as C<topic:nature> to label a particular video
category. See Tagging AWS Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) for
more information, including restrictions that apply to tags.

Tags can help you identify and organize your AWS resources. For
example, you can use the same tag for different resources to indicate
that they are related. You can also use tags to manage access (see
Access Tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)).

The Amazon IVS API has these tag-related endpoints: TagResource,
UntagResource, and ListTagsForResource. The following resources support
tagging: Channels, Stream Keys, Playback Key Pairs, and Recording
Configurations.

B<Authentication versus Authorization>

Note the differences between these concepts:

=over

=item *

I<Authentication> is about verifying identity. You need to be
authenticated to sign Amazon IVS API requests.

=item *

I<Authorization> is about granting permissions. You need to be
authorized to view Amazon IVS private channels
(https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html).
(Private channels are channels that are enabled for "playback
authorization.")

=back

B<Authentication>

All Amazon IVS API requests must be authenticated with a signature. The
AWS Command-Line Interface (CLI) and Amazon IVS Player SDKs take care
of signing the underlying API calls for you. However, if your
application calls the Amazon IVS API directly, itE<rsquo>s your
responsibility to sign the requests.

You generate a signature using valid AWS credentials that have
permission to perform the requested action. For example, you must sign
PutMetadata requests with a signature generated from an IAM user
account that has the C<ivs:PutMetadata> permission.

For more information:

=over

=item *

Authentication and generating signatures E<mdash> See Authenticating
Requests (AWS Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
in the I<AWS General Reference>.

=item *

Managing Amazon IVS permissions E<mdash> See Identity and Access
Management
(https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html) on
the Security page of the I<Amazon IVS User Guide>.

=back

B<Channel Endpoints>

=over

=item *

CreateChannel E<mdash> Creates a new channel and an associated stream
key to start streaming.

=item *

GetChannel E<mdash> Gets the channel configuration for the specified
channel ARN (Amazon Resource Name).

=item *

BatchGetChannel E<mdash> Performs GetChannel on multiple ARNs
simultaneously.

=item *

ListChannels E<mdash> Gets summary information about all channels in
your account, in the AWS region where the API request is processed.
This list can be filtered to match a specified name or
recording-configuration ARN. Filters are mutually exclusive and cannot
be used together. If you try to use both filters, you will get an error
(409 Conflict Exception).

=item *

UpdateChannel E<mdash> Updates a channel's configuration. This does not
affect an ongoing stream of this channel. You must stop and restart the
stream for the changes to take effect.

=item *

DeleteChannel E<mdash> Deletes the specified channel.

=back

B<StreamKey Endpoints>

=over

=item *

CreateStreamKey E<mdash> Creates a stream key, used to initiate a
stream, for the specified channel ARN.

=item *

GetStreamKey E<mdash> Gets stream key information for the specified
ARN.

=item *

BatchGetStreamKey E<mdash> Performs GetStreamKey on multiple ARNs
simultaneously.

=item *

ListStreamKeys E<mdash> Gets summary information about stream keys for
the specified channel.

=item *

DeleteStreamKey E<mdash> Deletes the stream key for the specified ARN,
so it can no longer be used to stream.

=back

B<Stream Endpoints>

=over

=item *

GetStream E<mdash> Gets information about the active (live) stream on a
specified channel.

=item *

ListStreams E<mdash> Gets summary information about live streams in
your account, in the AWS region where the API request is processed.

=item *

StopStream E<mdash> Disconnects the incoming RTMPS stream for the
specified channel. Can be used in conjunction with DeleteStreamKey to
prevent further streaming to a channel.

=item *

PutMetadata E<mdash> Inserts metadata into the active stream of the
specified channel. A maximum of 5 requests per second per channel is
allowed, each with a maximum 1 KB payload. (If 5 TPS is not sufficient
for your needs, we recommend batching your data into a single
PutMetadata call.)

=back

B<PlaybackKeyPair Endpoints>

For more information, see Setting Up Private Channels
(https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
in the I<Amazon IVS User Guide>.

=over

=item *

ImportPlaybackKeyPair E<mdash> Imports the public portion of a new key
pair and returns its C<arn> and C<fingerprint>. The C<privateKey> can
then be used to generate viewer authorization tokens, to grant viewers
access to private channels (channels enabled for playback
authorization).

=item *

GetPlaybackKeyPair E<mdash> Gets a specified playback authorization key
pair and returns the C<arn> and C<fingerprint>. The C<privateKey> held
by the caller can be used to generate viewer authorization tokens, to
grant viewers access to private channels.

=item *

ListPlaybackKeyPairs E<mdash> Gets summary information about playback
key pairs.

=item *

DeletePlaybackKeyPair E<mdash> Deletes a specified authorization key
pair. This invalidates future viewer tokens generated using the key
pairE<rsquo>s C<privateKey>.

=back

B<RecordingConfiguration Endpoints>

=over

=item *

CreateRecordingConfiguration E<mdash> Creates a new recording
configuration, used to enable recording to Amazon S3.

=item *

GetRecordingConfiguration E<mdash> Gets the recording-configuration
metadata for the specified ARN.

=item *

ListRecordingConfigurations E<mdash> Gets summary information about all
recording configurations in your account, in the AWS region where the
API request is processed.

=item *

DeleteRecordingConfiguration E<mdash> Deletes the recording
configuration for the specified ARN.

=back

B<AWS Tags Endpoints>

=over

=item *

TagResource E<mdash> Adds or updates tags for the AWS resource with the
specified ARN.

=item *

UntagResource E<mdash> Removes tags from the resource with the
specified ARN.

=item *

ListTagsForResource E<mdash> Gets information about AWS tags for the
specified ARN.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14>


=head1 METHODS

=head2 BatchGetChannel

=over

=item Arns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IVS::BatchGetChannel>

Returns: a L<Paws::IVS::BatchGetChannelResponse> instance

Performs GetChannel on multiple ARNs simultaneously.


=head2 BatchGetStreamKey

=over

=item Arns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IVS::BatchGetStreamKey>

Returns: a L<Paws::IVS::BatchGetStreamKeyResponse> instance

Performs GetStreamKey on multiple ARNs simultaneously.


=head2 CreateChannel

=over

=item [Authorized => Bool]

=item [LatencyMode => Str]

=item [Name => Str]

=item [RecordingConfigurationArn => Str]

=item [Tags => L<Paws::IVS::Tags>]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::IVS::CreateChannel>

Returns: a L<Paws::IVS::CreateChannelResponse> instance

Creates a new channel and an associated stream key to start streaming.


=head2 CreateRecordingConfiguration

=over

=item DestinationConfiguration => L<Paws::IVS::DestinationConfiguration>

=item [Name => Str]

=item [Tags => L<Paws::IVS::Tags>]


=back

Each argument is described in detail in: L<Paws::IVS::CreateRecordingConfiguration>

Returns: a L<Paws::IVS::CreateRecordingConfigurationResponse> instance

Creates a new recording configuration, used to enable recording to
Amazon S3.

B<Known issue:> In the us-east-1 region, if you use the AWS CLI to
create a recording configuration, it returns success even if the S3
bucket is in a different region. In this case, the C<state> of the
recording configuration is C<CREATE_FAILED> (instead of C<ACTIVE>). (In
other regions, the CLI correctly returns failure if the bucket is in a
different region.)

B<Workaround:> Ensure that your S3 bucket is in the same region as the
recording configuration. If you create a recording configuration in a
different region as your S3 bucket, delete that recording configuration
and create a new one with an S3 bucket from the correct region.


=head2 CreateStreamKey

=over

=item ChannelArn => Str

=item [Tags => L<Paws::IVS::Tags>]


=back

Each argument is described in detail in: L<Paws::IVS::CreateStreamKey>

Returns: a L<Paws::IVS::CreateStreamKeyResponse> instance

Creates a stream key, used to initiate a stream, for the specified
channel ARN.

Note that CreateChannel creates a stream key. If you subsequently use
CreateStreamKey on the same channel, it will fail because a stream key
already exists and there is a limit of 1 stream key per channel. To
reset the stream key on a channel, use DeleteStreamKey and then
CreateStreamKey.


=head2 DeleteChannel

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVS::DeleteChannel>

Returns: nothing

Deletes the specified channel and its associated stream keys.

If you try to delete a live channel, you will get an error (409
ConflictException). To delete a channel that is live, call StopStream,
wait for the Amazon EventBridge "Stream End" event (to verify that the
stream's state was changed from Live to Offline), then call
DeleteChannel. (See Using EventBridge with Amazon IVS
(https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html).)


=head2 DeletePlaybackKeyPair

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVS::DeletePlaybackKeyPair>

Returns: a L<Paws::IVS::DeletePlaybackKeyPairResponse> instance

Deletes a specified authorization key pair. This invalidates future
viewer tokens generated using the key pairE<rsquo>s C<privateKey>. For
more information, see Setting Up Private Channels
(https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
in the I<Amazon IVS User Guide>.


=head2 DeleteRecordingConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVS::DeleteRecordingConfiguration>

Returns: nothing

Deletes the recording configuration for the specified ARN.

If you try to delete a recording configuration that is associated with
a channel, you will get an error (409 ConflictException). To avoid
this, for all channels that reference the recording configuration,
first use UpdateChannel to set the C<recordingConfigurationArn> field
to an empty string, then use DeleteRecordingConfiguration.


=head2 DeleteStreamKey

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVS::DeleteStreamKey>

Returns: nothing

Deletes the stream key for the specified ARN, so it can no longer be
used to stream.


=head2 GetChannel

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVS::GetChannel>

Returns: a L<Paws::IVS::GetChannelResponse> instance

Gets the channel configuration for the specified channel ARN. See also
BatchGetChannel.


=head2 GetPlaybackKeyPair

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVS::GetPlaybackKeyPair>

Returns: a L<Paws::IVS::GetPlaybackKeyPairResponse> instance

Gets a specified playback authorization key pair and returns the C<arn>
and C<fingerprint>. The C<privateKey> held by the caller can be used to
generate viewer authorization tokens, to grant viewers access to
private channels. For more information, see Setting Up Private Channels
(https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
in the I<Amazon IVS User Guide>.


=head2 GetRecordingConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVS::GetRecordingConfiguration>

Returns: a L<Paws::IVS::GetRecordingConfigurationResponse> instance

Gets the recording configuration for the specified ARN.


=head2 GetStream

=over

=item ChannelArn => Str


=back

Each argument is described in detail in: L<Paws::IVS::GetStream>

Returns: a L<Paws::IVS::GetStreamResponse> instance

Gets information about the active (live) stream on a specified channel.


=head2 GetStreamKey

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVS::GetStreamKey>

Returns: a L<Paws::IVS::GetStreamKeyResponse> instance

Gets stream-key information for a specified ARN.


=head2 ImportPlaybackKeyPair

=over

=item PublicKeyMaterial => Str

=item [Name => Str]

=item [Tags => L<Paws::IVS::Tags>]


=back

Each argument is described in detail in: L<Paws::IVS::ImportPlaybackKeyPair>

Returns: a L<Paws::IVS::ImportPlaybackKeyPairResponse> instance

Imports the public portion of a new key pair and returns its C<arn> and
C<fingerprint>. The C<privateKey> can then be used to generate viewer
authorization tokens, to grant viewers access to private channels. For
more information, see Setting Up Private Channels
(https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
in the I<Amazon IVS User Guide>.


=head2 ListChannels

=over

=item [FilterByName => Str]

=item [FilterByRecordingConfigurationArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVS::ListChannels>

Returns: a L<Paws::IVS::ListChannelsResponse> instance

Gets summary information about all channels in your account, in the AWS
region where the API request is processed. This list can be filtered to
match a specified name or recording-configuration ARN. Filters are
mutually exclusive and cannot be used together. If you try to use both
filters, you will get an error (409 ConflictException).


=head2 ListPlaybackKeyPairs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVS::ListPlaybackKeyPairs>

Returns: a L<Paws::IVS::ListPlaybackKeyPairsResponse> instance

Gets summary information about playback key pairs. For more
information, see Setting Up Private Channels
(https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
in the I<Amazon IVS User Guide>.


=head2 ListRecordingConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVS::ListRecordingConfigurations>

Returns: a L<Paws::IVS::ListRecordingConfigurationsResponse> instance

Gets summary information about all recording configurations in your
account, in the AWS region where the API request is processed.


=head2 ListStreamKeys

=over

=item ChannelArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVS::ListStreamKeys>

Returns: a L<Paws::IVS::ListStreamKeysResponse> instance

Gets summary information about stream keys for the specified channel.


=head2 ListStreams

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVS::ListStreams>

Returns: a L<Paws::IVS::ListStreamsResponse> instance

Gets summary information about live streams in your account, in the AWS
region where the API request is processed.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVS::ListTagsForResource>

Returns: a L<Paws::IVS::ListTagsForResourceResponse> instance

Gets information about AWS tags for the specified ARN.


=head2 PutMetadata

=over

=item ChannelArn => Str

=item Metadata => Str


=back

Each argument is described in detail in: L<Paws::IVS::PutMetadata>

Returns: nothing

Inserts metadata into the active stream of the specified channel. A
maximum of 5 requests per second per channel is allowed, each with a
maximum 1 KB payload. (If 5 TPS is not sufficient for your needs, we
recommend batching your data into a single PutMetadata call.) Also see
Embedding Metadata within a Video Stream
(https://docs.aws.amazon.com/ivs/latest/userguide/metadata.html) in the
I<Amazon IVS User Guide>.


=head2 StopStream

=over

=item ChannelArn => Str


=back

Each argument is described in detail in: L<Paws::IVS::StopStream>

Returns: a L<Paws::IVS::StopStreamResponse> instance

Disconnects the incoming RTMPS stream for the specified channel. Can be
used in conjunction with DeleteStreamKey to prevent further streaming
to a channel.

Many streaming client-software libraries automatically reconnect a
dropped RTMPS session, so to stop the stream permanently, you may want
to first revoke the C<streamKey> attached to the channel.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::IVS::Tags>


=back

Each argument is described in detail in: L<Paws::IVS::TagResource>

Returns: a L<Paws::IVS::TagResourceResponse> instance

Adds or updates tags for the AWS resource with the specified ARN.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IVS::UntagResource>

Returns: a L<Paws::IVS::UntagResourceResponse> instance

Removes tags from the resource with the specified ARN.


=head2 UpdateChannel

=over

=item Arn => Str

=item [Authorized => Bool]

=item [LatencyMode => Str]

=item [Name => Str]

=item [RecordingConfigurationArn => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::IVS::UpdateChannel>

Returns: a L<Paws::IVS::UpdateChannelResponse> instance

Updates a channel's configuration. This does not affect an ongoing
stream of this channel. You must stop and restart the stream for the
changes to take effect.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllChannels(sub { },[FilterByName => Str, FilterByRecordingConfigurationArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllChannels([FilterByName => Str, FilterByRecordingConfigurationArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - channels, passing the object as the first parameter, and the string 'channels' as the second parameter 

If not, it will return a a L<Paws::IVS::ListChannelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPlaybackKeyPairs(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPlaybackKeyPairs([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - keyPairs, passing the object as the first parameter, and the string 'keyPairs' as the second parameter 

If not, it will return a a L<Paws::IVS::ListPlaybackKeyPairsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecordingConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllRecordingConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - recordingConfigurations, passing the object as the first parameter, and the string 'recordingConfigurations' as the second parameter 

If not, it will return a a L<Paws::IVS::ListRecordingConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreamKeys(sub { },ChannelArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllStreamKeys(ChannelArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - streamKeys, passing the object as the first parameter, and the string 'streamKeys' as the second parameter 

If not, it will return a a L<Paws::IVS::ListStreamKeysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreams(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllStreams([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - streams, passing the object as the first parameter, and the string 'streams' as the second parameter 

If not, it will return a a L<Paws::IVS::ListStreamsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

