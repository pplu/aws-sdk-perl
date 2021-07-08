package Paws::NimbleStudio;
  use Moose;
  sub service { 'nimble' }
  sub signing_name { 'nimble' }
  sub version { '2020-08-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptEulas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::AcceptEulas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLaunchProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::CreateLaunchProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamingImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::CreateStreamingImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamingSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::CreateStreamingSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamingSessionStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::CreateStreamingSessionStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStudio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::CreateStudio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStudioComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::CreateStudioComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLaunchProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::DeleteLaunchProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLaunchProfileMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::DeleteLaunchProfileMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStreamingImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::DeleteStreamingImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStreamingSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::DeleteStreamingSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStudio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::DeleteStudio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStudioComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::DeleteStudioComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStudioMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::DeleteStudioMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEula {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::GetEula', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLaunchProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::GetLaunchProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLaunchProfileDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::GetLaunchProfileDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLaunchProfileInitialization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::GetLaunchProfileInitialization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLaunchProfileMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::GetLaunchProfileMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamingImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::GetStreamingImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamingSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::GetStreamingSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamingSessionStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::GetStreamingSessionStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStudio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::GetStudio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStudioComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::GetStudioComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStudioMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::GetStudioMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEulaAcceptances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::ListEulaAcceptances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEulas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::ListEulas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLaunchProfileMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::ListLaunchProfileMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLaunchProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::ListLaunchProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreamingImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::ListStreamingImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreamingSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::ListStreamingSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStudioComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::ListStudioComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStudioMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::ListStudioMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStudios {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::ListStudios', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLaunchProfileMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::PutLaunchProfileMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutStudioMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::PutStudioMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartStudioSSOConfigurationRepair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::StartStudioSSOConfigurationRepair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLaunchProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::UpdateLaunchProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLaunchProfileMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::UpdateLaunchProfileMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStreamingImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::UpdateStreamingImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStudio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::UpdateStudio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStudioComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NimbleStudio::UpdateStudioComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllEulaAcceptances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEulaAcceptances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEulaAcceptances(@_, nextToken => $next_result->nextToken);
        push @{ $result->eulaAcceptances }, @{ $next_result->eulaAcceptances };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'eulaAcceptances') foreach (@{ $result->eulaAcceptances });
        $result = $self->ListEulaAcceptances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'eulaAcceptances') foreach (@{ $result->eulaAcceptances });
    }

    return undef
  }
  sub ListAllEulas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEulas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEulas(@_, nextToken => $next_result->nextToken);
        push @{ $result->eulas }, @{ $next_result->eulas };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'eulas') foreach (@{ $result->eulas });
        $result = $self->ListEulas(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'eulas') foreach (@{ $result->eulas });
    }

    return undef
  }
  sub ListAllLaunchProfileMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLaunchProfileMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLaunchProfileMembers(@_, nextToken => $next_result->nextToken);
        push @{ $result->members }, @{ $next_result->members };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'members') foreach (@{ $result->members });
        $result = $self->ListLaunchProfileMembers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'members') foreach (@{ $result->members });
    }

    return undef
  }
  sub ListAllLaunchProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLaunchProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLaunchProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->launchProfiles }, @{ $next_result->launchProfiles };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'launchProfiles') foreach (@{ $result->launchProfiles });
        $result = $self->ListLaunchProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'launchProfiles') foreach (@{ $result->launchProfiles });
    }

    return undef
  }
  sub ListAllStreamingImages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreamingImages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStreamingImages(@_, nextToken => $next_result->nextToken);
        push @{ $result->streamingImages }, @{ $next_result->streamingImages };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'streamingImages') foreach (@{ $result->streamingImages });
        $result = $self->ListStreamingImages(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'streamingImages') foreach (@{ $result->streamingImages });
    }

    return undef
  }
  sub ListAllStreamingSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreamingSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStreamingSessions(@_, nextToken => $next_result->nextToken);
        push @{ $result->sessions }, @{ $next_result->sessions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'sessions') foreach (@{ $result->sessions });
        $result = $self->ListStreamingSessions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'sessions') foreach (@{ $result->sessions });
    }

    return undef
  }
  sub ListAllStudioComponents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStudioComponents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStudioComponents(@_, nextToken => $next_result->nextToken);
        push @{ $result->studioComponents }, @{ $next_result->studioComponents };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'studioComponents') foreach (@{ $result->studioComponents });
        $result = $self->ListStudioComponents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'studioComponents') foreach (@{ $result->studioComponents });
    }

    return undef
  }
  sub ListAllStudioMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStudioMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStudioMembers(@_, nextToken => $next_result->nextToken);
        push @{ $result->members }, @{ $next_result->members };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'members') foreach (@{ $result->members });
        $result = $self->ListStudioMembers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'members') foreach (@{ $result->members });
    }

    return undef
  }
  sub ListAllStudios {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStudios(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStudios(@_, nextToken => $next_result->nextToken);
        push @{ $result->studios }, @{ $next_result->studios };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'studios') foreach (@{ $result->studios });
        $result = $self->ListStudios(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'studios') foreach (@{ $result->studios });
    }

    return undef
  }


  sub operations { qw/AcceptEulas CreateLaunchProfile CreateStreamingImage CreateStreamingSession CreateStreamingSessionStream CreateStudio CreateStudioComponent DeleteLaunchProfile DeleteLaunchProfileMember DeleteStreamingImage DeleteStreamingSession DeleteStudio DeleteStudioComponent DeleteStudioMember GetEula GetLaunchProfile GetLaunchProfileDetails GetLaunchProfileInitialization GetLaunchProfileMember GetStreamingImage GetStreamingSession GetStreamingSessionStream GetStudio GetStudioComponent GetStudioMember ListEulaAcceptances ListEulas ListLaunchProfileMembers ListLaunchProfiles ListStreamingImages ListStreamingSessions ListStudioComponents ListStudioMembers ListStudios ListTagsForResource PutLaunchProfileMembers PutStudioMembers StartStudioSSOConfigurationRepair TagResource UntagResource UpdateLaunchProfile UpdateLaunchProfileMember UpdateStreamingImage UpdateStudio UpdateStudioComponent / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio - Perl Interface to AWS AmazonNimbleStudio

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('NimbleStudio');
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



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01>


=head1 METHODS

=head2 AcceptEulas

=over

=item StudioId => Str

=item [ClientToken => Str]

=item [EulaIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::AcceptEulas>

Returns: a L<Paws::NimbleStudio::AcceptEulasResponse> instance

Accept EULAs.


=head2 CreateLaunchProfile

=over

=item Ec2SubnetIds => ArrayRef[Str|Undef]

=item LaunchProfileProtocolVersions => ArrayRef[Str|Undef]

=item Name => Str

=item StreamConfiguration => L<Paws::NimbleStudio::StreamConfigurationCreate>

=item StudioComponentIds => ArrayRef[Str|Undef]

=item StudioId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::NimbleStudio::Tags>]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::CreateLaunchProfile>

Returns: a L<Paws::NimbleStudio::CreateLaunchProfileResponse> instance

Create a launch profile.


=head2 CreateStreamingImage

=over

=item Ec2ImageId => Str

=item Name => Str

=item StudioId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::NimbleStudio::Tags>]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::CreateStreamingImage>

Returns: a L<Paws::NimbleStudio::CreateStreamingImageResponse> instance

Creates a streaming image resource in a studio.


=head2 CreateStreamingSession

=over

=item StudioId => Str

=item [ClientToken => Str]

=item [Ec2InstanceType => Str]

=item [LaunchProfileId => Str]

=item [StreamingImageId => Str]

=item [Tags => L<Paws::NimbleStudio::Tags>]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::CreateStreamingSession>

Returns: a L<Paws::NimbleStudio::CreateStreamingSessionResponse> instance

Creates a streaming session in a studio.

After invoking this operation, you must poll GetStreamingSession until
the streaming session is in state READY.


=head2 CreateStreamingSessionStream

=over

=item SessionId => Str

=item StudioId => Str

=item [ClientToken => Str]

=item [ExpirationInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::CreateStreamingSessionStream>

Returns: a L<Paws::NimbleStudio::CreateStreamingSessionStreamResponse> instance

Creates a streaming session stream for a streaming session.

After invoking this API, invoke GetStreamingSessionStream with the
returned streamId to poll the resource until it is in state READY.


=head2 CreateStudio

=over

=item AdminRoleArn => Str

=item DisplayName => Str

=item StudioName => Str

=item UserRoleArn => Str

=item [ClientToken => Str]

=item [StudioEncryptionConfiguration => L<Paws::NimbleStudio::StudioEncryptionConfiguration>]

=item [Tags => L<Paws::NimbleStudio::Tags>]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::CreateStudio>

Returns: a L<Paws::NimbleStudio::CreateStudioResponse> instance

Create a new Studio.

When creating a Studio, two IAM roles must be provided: the admin role
and the user Role. These roles are assumed by your users when they log
in to the Nimble Studio portal.

The user role must have the AmazonNimbleStudio-StudioUser managed
policy attached for the portal to function properly.

The Admin Role must have the AmazonNimbleStudio-StudioAdmin managed
policy attached for the portal to function properly.

You may optionally specify a KMS key in the
StudioEncryptionConfiguration.

In Nimble Studio, resource names, descriptions, initialization scripts,
and other data you provide are always encrypted at rest using an AWS
KMS key. By default, this key is owned by AWS and managed on your
behalf. You may provide your own AWS KMS key when calling CreateStudio
to encrypt this data using a key you own and manage.

When providing an AWS KMS key during studio creation, Nimble Studio
creates KMS grants in your account to provide your studio user and
admin roles access to these KMS keys.

If you delete this grant, the studio will no longer be accessible to
your portal users.

If you delete the studio KMS key, your studio will no longer be
accessible.


=head2 CreateStudioComponent

=over

=item Name => Str

=item StudioId => Str

=item Type => Str

=item [ClientToken => Str]

=item [Configuration => L<Paws::NimbleStudio::StudioComponentConfiguration>]

=item [Description => Str]

=item [Ec2SecurityGroupIds => ArrayRef[Str|Undef]]

=item [InitializationScripts => ArrayRef[L<Paws::NimbleStudio::StudioComponentInitializationScript>]]

=item [ScriptParameters => ArrayRef[L<Paws::NimbleStudio::ScriptParameterKeyValue>]]

=item [Subtype => Str]

=item [Tags => L<Paws::NimbleStudio::Tags>]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::CreateStudioComponent>

Returns: a L<Paws::NimbleStudio::CreateStudioComponentResponse> instance

Creates a studio component resource.


=head2 DeleteLaunchProfile

=over

=item LaunchProfileId => Str

=item StudioId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::DeleteLaunchProfile>

Returns: a L<Paws::NimbleStudio::DeleteLaunchProfileResponse> instance

Permanently delete a launch profile.


=head2 DeleteLaunchProfileMember

=over

=item LaunchProfileId => Str

=item PrincipalId => Str

=item StudioId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::DeleteLaunchProfileMember>

Returns: a L<Paws::NimbleStudio::DeleteLaunchProfileMemberResponse> instance

Delete a user from launch profile membership.


=head2 DeleteStreamingImage

=over

=item StreamingImageId => Str

=item StudioId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::DeleteStreamingImage>

Returns: a L<Paws::NimbleStudio::DeleteStreamingImageResponse> instance

Delete streaming image.


=head2 DeleteStreamingSession

=over

=item SessionId => Str

=item StudioId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::DeleteStreamingSession>

Returns: a L<Paws::NimbleStudio::DeleteStreamingSessionResponse> instance

Deletes streaming session resource.

After invoking this operation, use GetStreamingSession to poll the
resource until it transitions to a DELETED state.

A streaming session will count against your streaming session quota
until it is marked DELETED.


=head2 DeleteStudio

=over

=item StudioId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::DeleteStudio>

Returns: a L<Paws::NimbleStudio::DeleteStudioResponse> instance

Delete a studio resource.


=head2 DeleteStudioComponent

=over

=item StudioComponentId => Str

=item StudioId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::DeleteStudioComponent>

Returns: a L<Paws::NimbleStudio::DeleteStudioComponentResponse> instance

Deletes a studio component resource.


=head2 DeleteStudioMember

=over

=item PrincipalId => Str

=item StudioId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::DeleteStudioMember>

Returns: a L<Paws::NimbleStudio::DeleteStudioMemberResponse> instance

Delete a user from studio membership.


=head2 GetEula

=over

=item EulaId => Str


=back

Each argument is described in detail in: L<Paws::NimbleStudio::GetEula>

Returns: a L<Paws::NimbleStudio::GetEulaResponse> instance

Get Eula.


=head2 GetLaunchProfile

=over

=item LaunchProfileId => Str

=item StudioId => Str


=back

Each argument is described in detail in: L<Paws::NimbleStudio::GetLaunchProfile>

Returns: a L<Paws::NimbleStudio::GetLaunchProfileResponse> instance

Get a launch profile.


=head2 GetLaunchProfileDetails

=over

=item LaunchProfileId => Str

=item StudioId => Str


=back

Each argument is described in detail in: L<Paws::NimbleStudio::GetLaunchProfileDetails>

Returns: a L<Paws::NimbleStudio::GetLaunchProfileDetailsResponse> instance

Launch profile details include the launch profile resource and summary
information of resources that are used by, or available to, the launch
profile. This includes the name and description of all studio
components used by the launch profiles, and the name and description of
streaming images that can be used with this launch profile.


=head2 GetLaunchProfileInitialization

=over

=item LaunchProfileId => Str

=item LaunchProfileProtocolVersions => ArrayRef[Str|Undef]

=item LaunchPurpose => Str

=item Platform => Str

=item StudioId => Str


=back

Each argument is described in detail in: L<Paws::NimbleStudio::GetLaunchProfileInitialization>

Returns: a L<Paws::NimbleStudio::GetLaunchProfileInitializationResponse> instance

Get a launch profile initialization.


=head2 GetLaunchProfileMember

=over

=item LaunchProfileId => Str

=item PrincipalId => Str

=item StudioId => Str


=back

Each argument is described in detail in: L<Paws::NimbleStudio::GetLaunchProfileMember>

Returns: a L<Paws::NimbleStudio::GetLaunchProfileMemberResponse> instance

Get a user persona in launch profile membership.


=head2 GetStreamingImage

=over

=item StreamingImageId => Str

=item StudioId => Str


=back

Each argument is described in detail in: L<Paws::NimbleStudio::GetStreamingImage>

Returns: a L<Paws::NimbleStudio::GetStreamingImageResponse> instance

Get streaming image.


=head2 GetStreamingSession

=over

=item SessionId => Str

=item StudioId => Str


=back

Each argument is described in detail in: L<Paws::NimbleStudio::GetStreamingSession>

Returns: a L<Paws::NimbleStudio::GetStreamingSessionResponse> instance

Gets StreamingSession resource.

Invoke this operation to poll for a streaming session state while
creating or deleting a session.


=head2 GetStreamingSessionStream

=over

=item SessionId => Str

=item StreamId => Str

=item StudioId => Str


=back

Each argument is described in detail in: L<Paws::NimbleStudio::GetStreamingSessionStream>

Returns: a L<Paws::NimbleStudio::GetStreamingSessionStreamResponse> instance

Gets a StreamingSessionStream for a streaming session.

Invoke this operation to poll the resource after invoking
CreateStreamingSessionStream.

After the StreamingSessionStream changes to the state READY, the url
property will contain a stream to be used with the DCV streaming
client.


=head2 GetStudio

=over

=item StudioId => Str


=back

Each argument is described in detail in: L<Paws::NimbleStudio::GetStudio>

Returns: a L<Paws::NimbleStudio::GetStudioResponse> instance

Get a Studio resource.


=head2 GetStudioComponent

=over

=item StudioComponentId => Str

=item StudioId => Str


=back

Each argument is described in detail in: L<Paws::NimbleStudio::GetStudioComponent>

Returns: a L<Paws::NimbleStudio::GetStudioComponentResponse> instance

Gets a studio component resource.


=head2 GetStudioMember

=over

=item PrincipalId => Str

=item StudioId => Str


=back

Each argument is described in detail in: L<Paws::NimbleStudio::GetStudioMember>

Returns: a L<Paws::NimbleStudio::GetStudioMemberResponse> instance

Get a user's membership in a studio.


=head2 ListEulaAcceptances

=over

=item StudioId => Str

=item [EulaIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::ListEulaAcceptances>

Returns: a L<Paws::NimbleStudio::ListEulaAcceptancesResponse> instance

List Eula Acceptances.


=head2 ListEulas

=over

=item [EulaIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::ListEulas>

Returns: a L<Paws::NimbleStudio::ListEulasResponse> instance

List Eulas.


=head2 ListLaunchProfileMembers

=over

=item LaunchProfileId => Str

=item StudioId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::ListLaunchProfileMembers>

Returns: a L<Paws::NimbleStudio::ListLaunchProfileMembersResponse> instance

Get all users in a given launch profile membership.


=head2 ListLaunchProfiles

=over

=item StudioId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PrincipalId => Str]

=item [States => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::ListLaunchProfiles>

Returns: a L<Paws::NimbleStudio::ListLaunchProfilesResponse> instance

List all the launch profiles a studio.


=head2 ListStreamingImages

=over

=item StudioId => Str

=item [NextToken => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::ListStreamingImages>

Returns: a L<Paws::NimbleStudio::ListStreamingImagesResponse> instance

List the streaming image resources available to this studio.

This list will contain both images provided by AWS, as well as
streaming images that you have created in your studio.


=head2 ListStreamingSessions

=over

=item StudioId => Str

=item [CreatedBy => Str]

=item [NextToken => Str]

=item [SessionIds => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::ListStreamingSessions>

Returns: a L<Paws::NimbleStudio::ListStreamingSessionsResponse> instance

Lists the streaming image resources in a studio.


=head2 ListStudioComponents

=over

=item StudioId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [States => ArrayRef[Str|Undef]]

=item [Types => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::ListStudioComponents>

Returns: a L<Paws::NimbleStudio::ListStudioComponentsResponse> instance

Lists the StudioComponents in a studio.


=head2 ListStudioMembers

=over

=item StudioId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::ListStudioMembers>

Returns: a L<Paws::NimbleStudio::ListStudioMembersResponse> instance

Get all users in a given studio membership.


=head2 ListStudios

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::ListStudios>

Returns: a L<Paws::NimbleStudio::ListStudiosResponse> instance

List studios in your AWS account in the requested AWS Region.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NimbleStudio::ListTagsForResource>

Returns: a L<Paws::NimbleStudio::ListTagsForResourceResponse> instance

Gets the tags for a resource, given its Amazon Resource Names (ARN).

This operation supports ARNs for all resource types in Nimble Studio
that support tags, including studio, studio component, launch profile,
streaming image, and streaming session. All resources that can be
tagged will contain an ARN property, so you do not have to create this
ARN yourself.


=head2 PutLaunchProfileMembers

=over

=item IdentityStoreId => Str

=item LaunchProfileId => Str

=item Members => ArrayRef[L<Paws::NimbleStudio::NewLaunchProfileMember>]

=item StudioId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::PutLaunchProfileMembers>

Returns: a L<Paws::NimbleStudio::PutLaunchProfileMembersResponse> instance

Add/update users with given persona to launch profile membership.


=head2 PutStudioMembers

=over

=item IdentityStoreId => Str

=item Members => ArrayRef[L<Paws::NimbleStudio::NewStudioMember>]

=item StudioId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::PutStudioMembers>

Returns: a L<Paws::NimbleStudio::PutStudioMembersResponse> instance

Add/update users with given persona to studio membership.


=head2 StartStudioSSOConfigurationRepair

=over

=item StudioId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::StartStudioSSOConfigurationRepair>

Returns: a L<Paws::NimbleStudio::StartStudioSSOConfigurationRepairResponse> instance

Repairs the SSO configuration for a given studio.

If the studio has a valid AWS SSO configuration currently associated
with it, this operation will fail with a validation error.

If the studio does not have a valid AWS SSO configuration currently
associated with it, then a new AWS SSO application is created for the
studio and the studio is changed to the READY state.

After the AWS SSO application is repaired, you must use the Amazon
Nimble Studio console to add administrators and users to your studio.


=head2 TagResource

=over

=item ResourceArn => Str

=item [Tags => L<Paws::NimbleStudio::Tags>]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::TagResource>

Returns: a L<Paws::NimbleStudio::TagResourceResponse> instance

Creates tags for a resource, given its ARN.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::UntagResource>

Returns: a L<Paws::NimbleStudio::UntagResourceResponse> instance

Deletes the tags for a resource.


=head2 UpdateLaunchProfile

=over

=item LaunchProfileId => Str

=item StudioId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [LaunchProfileProtocolVersions => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [StreamConfiguration => L<Paws::NimbleStudio::StreamConfigurationCreate>]

=item [StudioComponentIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::UpdateLaunchProfile>

Returns: a L<Paws::NimbleStudio::UpdateLaunchProfileResponse> instance

Update a launch profile.


=head2 UpdateLaunchProfileMember

=over

=item LaunchProfileId => Str

=item Persona => Str

=item PrincipalId => Str

=item StudioId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::UpdateLaunchProfileMember>

Returns: a L<Paws::NimbleStudio::UpdateLaunchProfileMemberResponse> instance

Update a user persona in launch profile membership.


=head2 UpdateStreamingImage

=over

=item StreamingImageId => Str

=item StudioId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::UpdateStreamingImage>

Returns: a L<Paws::NimbleStudio::UpdateStreamingImageResponse> instance

Update streaming image.


=head2 UpdateStudio

=over

=item StudioId => Str

=item [AdminRoleArn => Str]

=item [ClientToken => Str]

=item [DisplayName => Str]

=item [UserRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::UpdateStudio>

Returns: a L<Paws::NimbleStudio::UpdateStudioResponse> instance

Update a Studio resource.

Currently, this operation only supports updating the displayName of
your studio.


=head2 UpdateStudioComponent

=over

=item StudioComponentId => Str

=item StudioId => Str

=item [ClientToken => Str]

=item [Configuration => L<Paws::NimbleStudio::StudioComponentConfiguration>]

=item [Description => Str]

=item [Ec2SecurityGroupIds => ArrayRef[Str|Undef]]

=item [InitializationScripts => ArrayRef[L<Paws::NimbleStudio::StudioComponentInitializationScript>]]

=item [Name => Str]

=item [ScriptParameters => ArrayRef[L<Paws::NimbleStudio::ScriptParameterKeyValue>]]

=item [Subtype => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::NimbleStudio::UpdateStudioComponent>

Returns: a L<Paws::NimbleStudio::UpdateStudioComponentResponse> instance

Updates a studio component resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEulaAcceptances(sub { },StudioId => Str, [EulaIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 ListAllEulaAcceptances(StudioId => Str, [EulaIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - eulaAcceptances, passing the object as the first parameter, and the string 'eulaAcceptances' as the second parameter 

If not, it will return a a L<Paws::NimbleStudio::ListEulaAcceptancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEulas(sub { },[EulaIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 ListAllEulas([EulaIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - eulas, passing the object as the first parameter, and the string 'eulas' as the second parameter 

If not, it will return a a L<Paws::NimbleStudio::ListEulasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLaunchProfileMembers(sub { },LaunchProfileId => Str, StudioId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllLaunchProfileMembers(LaunchProfileId => Str, StudioId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - members, passing the object as the first parameter, and the string 'members' as the second parameter 

If not, it will return a a L<Paws::NimbleStudio::ListLaunchProfileMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLaunchProfiles(sub { },StudioId => Str, [MaxResults => Int, NextToken => Str, PrincipalId => Str, States => ArrayRef[Str|Undef]])

=head2 ListAllLaunchProfiles(StudioId => Str, [MaxResults => Int, NextToken => Str, PrincipalId => Str, States => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - launchProfiles, passing the object as the first parameter, and the string 'launchProfiles' as the second parameter 

If not, it will return a a L<Paws::NimbleStudio::ListLaunchProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreamingImages(sub { },StudioId => Str, [NextToken => Str, Owner => Str])

=head2 ListAllStreamingImages(StudioId => Str, [NextToken => Str, Owner => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - streamingImages, passing the object as the first parameter, and the string 'streamingImages' as the second parameter 

If not, it will return a a L<Paws::NimbleStudio::ListStreamingImagesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreamingSessions(sub { },StudioId => Str, [CreatedBy => Str, NextToken => Str, SessionIds => Str])

=head2 ListAllStreamingSessions(StudioId => Str, [CreatedBy => Str, NextToken => Str, SessionIds => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - sessions, passing the object as the first parameter, and the string 'sessions' as the second parameter 

If not, it will return a a L<Paws::NimbleStudio::ListStreamingSessionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStudioComponents(sub { },StudioId => Str, [MaxResults => Int, NextToken => Str, States => ArrayRef[Str|Undef], Types => ArrayRef[Str|Undef]])

=head2 ListAllStudioComponents(StudioId => Str, [MaxResults => Int, NextToken => Str, States => ArrayRef[Str|Undef], Types => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - studioComponents, passing the object as the first parameter, and the string 'studioComponents' as the second parameter 

If not, it will return a a L<Paws::NimbleStudio::ListStudioComponentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStudioMembers(sub { },StudioId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllStudioMembers(StudioId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - members, passing the object as the first parameter, and the string 'members' as the second parameter 

If not, it will return a a L<Paws::NimbleStudio::ListStudioMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStudios(sub { },[NextToken => Str])

=head2 ListAllStudios([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - studios, passing the object as the first parameter, and the string 'studios' as the second parameter 

If not, it will return a a L<Paws::NimbleStudio::ListStudiosResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

