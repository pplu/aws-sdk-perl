package Paws::MediaLive;
  use Moose;
  sub service { 'medialive' }
  sub signing_name { 'medialive' }
  sub version { '2017-10-14' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchUpdateSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::BatchUpdateSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::CreateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::CreateInput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInputSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::CreateInputSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::CreateTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::DeleteChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::DeleteInput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInputSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::DeleteInputSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::DeleteReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::DescribeChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::DescribeInput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInputSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::DescribeInputSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::DescribeOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::DescribeReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::DescribeSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::ListChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInputs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::ListInputs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInputSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::ListInputSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::ListOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReservations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::ListReservations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::PurchaseOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::StartChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::StopChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::UpdateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::UpdateInput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInputSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaLive::UpdateInputSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllSchedule {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSchedule(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSchedule(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScheduleActions }, @{ $next_result->ScheduleActions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScheduleActions') foreach (@{ $result->ScheduleActions });
        $result = $self->DescribeSchedule(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScheduleActions') foreach (@{ $result->ScheduleActions });
    }

    return undef
  }
  sub ListAllChannels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChannels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListChannels(@_, NextToken => $next_result->NextToken);
        push @{ $result->Channels }, @{ $next_result->Channels };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Channels') foreach (@{ $result->Channels });
        $result = $self->ListChannels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Channels') foreach (@{ $result->Channels });
    }

    return undef
  }
  sub ListAllInputs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInputs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInputs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Inputs }, @{ $next_result->Inputs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Inputs') foreach (@{ $result->Inputs });
        $result = $self->ListInputs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Inputs') foreach (@{ $result->Inputs });
    }

    return undef
  }
  sub ListAllInputSecurityGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInputSecurityGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInputSecurityGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->InputSecurityGroups }, @{ $next_result->InputSecurityGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InputSecurityGroups') foreach (@{ $result->InputSecurityGroups });
        $result = $self->ListInputSecurityGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InputSecurityGroups') foreach (@{ $result->InputSecurityGroups });
    }

    return undef
  }
  sub ListAllOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOfferings(@_, NextToken => $next_result->NextToken);
        push @{ $result->Offerings }, @{ $next_result->Offerings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Offerings') foreach (@{ $result->Offerings });
        $result = $self->ListOfferings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Offerings') foreach (@{ $result->Offerings });
    }

    return undef
  }
  sub ListAllReservations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReservations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListReservations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Reservations }, @{ $next_result->Reservations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Reservations') foreach (@{ $result->Reservations });
        $result = $self->ListReservations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Reservations') foreach (@{ $result->Reservations });
    }

    return undef
  }


  sub operations { qw/BatchUpdateSchedule CreateChannel CreateInput CreateInputSecurityGroup CreateTags DeleteChannel DeleteInput DeleteInputSecurityGroup DeleteReservation DeleteTags DescribeChannel DescribeInput DescribeInputSecurityGroup DescribeOffering DescribeReservation DescribeSchedule ListChannels ListInputs ListInputSecurityGroups ListOfferings ListReservations ListTagsForResource PurchaseOffering StartChannel StopChannel UpdateChannel UpdateInput UpdateInputSecurityGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive - Perl Interface to AWS AWS Elemental MediaLive

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MediaLive');
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

API for AWS Elemental MediaLive

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14>


=head1 METHODS

=head2 BatchUpdateSchedule

=over

=item ChannelId => Str

=item [Creates => L<Paws::MediaLive::BatchScheduleActionCreateRequest>]

=item [Deletes => L<Paws::MediaLive::BatchScheduleActionDeleteRequest>]


=back

Each argument is described in detail in: L<Paws::MediaLive::BatchUpdateSchedule>

Returns: a L<Paws::MediaLive::BatchUpdateScheduleResponse> instance

Update a channel schedule


=head2 CreateChannel

=over

=item [Destinations => ArrayRef[L<Paws::MediaLive::OutputDestination>]]

=item [EncoderSettings => L<Paws::MediaLive::EncoderSettings>]

=item [InputAttachments => ArrayRef[L<Paws::MediaLive::InputAttachment>]]

=item [InputSpecification => L<Paws::MediaLive::InputSpecification>]

=item [LogLevel => Str]

=item [Name => Str]

=item [RequestId => Str]

=item [Reserved => Str]

=item [RoleArn => Str]

=item [Tags => L<Paws::MediaLive::Tags>]


=back

Each argument is described in detail in: L<Paws::MediaLive::CreateChannel>

Returns: a L<Paws::MediaLive::CreateChannelResponse> instance

Creates a new channel


=head2 CreateInput

=over

=item [Destinations => ArrayRef[L<Paws::MediaLive::InputDestinationRequest>]]

=item [InputSecurityGroups => ArrayRef[Str|Undef]]

=item [MediaConnectFlows => ArrayRef[L<Paws::MediaLive::MediaConnectFlowRequest>]]

=item [Name => Str]

=item [RequestId => Str]

=item [RoleArn => Str]

=item [Sources => ArrayRef[L<Paws::MediaLive::InputSourceRequest>]]

=item [Tags => L<Paws::MediaLive::Tags>]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::MediaLive::CreateInput>

Returns: a L<Paws::MediaLive::CreateInputResponse> instance

Create an input


=head2 CreateInputSecurityGroup

=over

=item [Tags => L<Paws::MediaLive::Tags>]

=item [WhitelistRules => ArrayRef[L<Paws::MediaLive::InputWhitelistRuleCidr>]]


=back

Each argument is described in detail in: L<Paws::MediaLive::CreateInputSecurityGroup>

Returns: a L<Paws::MediaLive::CreateInputSecurityGroupResponse> instance

Creates a Input Security Group


=head2 CreateTags

=over

=item ResourceArn => Str

=item [Tags => L<Paws::MediaLive::Tags>]


=back

Each argument is described in detail in: L<Paws::MediaLive::CreateTags>

Returns: nothing

Create tags for a resource


=head2 DeleteChannel

=over

=item ChannelId => Str


=back

Each argument is described in detail in: L<Paws::MediaLive::DeleteChannel>

Returns: a L<Paws::MediaLive::DeleteChannelResponse> instance

Starts deletion of channel. The associated outputs are also deleted.


=head2 DeleteInput

=over

=item InputId => Str


=back

Each argument is described in detail in: L<Paws::MediaLive::DeleteInput>

Returns: a L<Paws::MediaLive::DeleteInputResponse> instance

Deletes the input end point


=head2 DeleteInputSecurityGroup

=over

=item InputSecurityGroupId => Str


=back

Each argument is described in detail in: L<Paws::MediaLive::DeleteInputSecurityGroup>

Returns: a L<Paws::MediaLive::DeleteInputSecurityGroupResponse> instance

Deletes an Input Security Group


=head2 DeleteReservation

=over

=item ReservationId => Str


=back

Each argument is described in detail in: L<Paws::MediaLive::DeleteReservation>

Returns: a L<Paws::MediaLive::DeleteReservationResponse> instance

Delete an expired reservation.


=head2 DeleteTags

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MediaLive::DeleteTags>

Returns: nothing

Removes tags for a resource


=head2 DescribeChannel

=over

=item ChannelId => Str


=back

Each argument is described in detail in: L<Paws::MediaLive::DescribeChannel>

Returns: a L<Paws::MediaLive::DescribeChannelResponse> instance

Gets details about a channel


=head2 DescribeInput

=over

=item InputId => Str


=back

Each argument is described in detail in: L<Paws::MediaLive::DescribeInput>

Returns: a L<Paws::MediaLive::DescribeInputResponse> instance

Produces details about an input


=head2 DescribeInputSecurityGroup

=over

=item InputSecurityGroupId => Str


=back

Each argument is described in detail in: L<Paws::MediaLive::DescribeInputSecurityGroup>

Returns: a L<Paws::MediaLive::DescribeInputSecurityGroupResponse> instance

Produces a summary of an Input Security Group


=head2 DescribeOffering

=over

=item OfferingId => Str


=back

Each argument is described in detail in: L<Paws::MediaLive::DescribeOffering>

Returns: a L<Paws::MediaLive::DescribeOfferingResponse> instance

Get details for an offering.


=head2 DescribeReservation

=over

=item ReservationId => Str


=back

Each argument is described in detail in: L<Paws::MediaLive::DescribeReservation>

Returns: a L<Paws::MediaLive::DescribeReservationResponse> instance

Get details for a reservation.


=head2 DescribeSchedule

=over

=item ChannelId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaLive::DescribeSchedule>

Returns: a L<Paws::MediaLive::DescribeScheduleResponse> instance

Get a channel schedule


=head2 ListChannels

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaLive::ListChannels>

Returns: a L<Paws::MediaLive::ListChannelsResponse> instance

Produces list of channels that have been created


=head2 ListInputs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaLive::ListInputs>

Returns: a L<Paws::MediaLive::ListInputsResponse> instance

Produces list of inputs that have been created


=head2 ListInputSecurityGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaLive::ListInputSecurityGroups>

Returns: a L<Paws::MediaLive::ListInputSecurityGroupsResponse> instance

Produces a list of Input Security Groups for an account


=head2 ListOfferings

=over

=item [ChannelConfiguration => Str]

=item [Codec => Str]

=item [MaximumBitrate => Str]

=item [MaximumFramerate => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Resolution => Str]

=item [ResourceType => Str]

=item [SpecialFeature => Str]

=item [VideoQuality => Str]


=back

Each argument is described in detail in: L<Paws::MediaLive::ListOfferings>

Returns: a L<Paws::MediaLive::ListOfferingsResponse> instance

List offerings available for purchase.


=head2 ListReservations

=over

=item [Codec => Str]

=item [MaximumBitrate => Str]

=item [MaximumFramerate => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Resolution => Str]

=item [ResourceType => Str]

=item [SpecialFeature => Str]

=item [VideoQuality => Str]


=back

Each argument is described in detail in: L<Paws::MediaLive::ListReservations>

Returns: a L<Paws::MediaLive::ListReservationsResponse> instance

List purchased reservations.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MediaLive::ListTagsForResource>

Returns: a L<Paws::MediaLive::ListTagsForResourceResponse> instance

Produces list of tags that have been created for a resource


=head2 PurchaseOffering

=over

=item Count => Int

=item OfferingId => Str

=item [Name => Str]

=item [RequestId => Str]

=item [Start => Str]


=back

Each argument is described in detail in: L<Paws::MediaLive::PurchaseOffering>

Returns: a L<Paws::MediaLive::PurchaseOfferingResponse> instance

Purchase an offering and create a reservation.


=head2 StartChannel

=over

=item ChannelId => Str


=back

Each argument is described in detail in: L<Paws::MediaLive::StartChannel>

Returns: a L<Paws::MediaLive::StartChannelResponse> instance

Starts an existing channel


=head2 StopChannel

=over

=item ChannelId => Str


=back

Each argument is described in detail in: L<Paws::MediaLive::StopChannel>

Returns: a L<Paws::MediaLive::StopChannelResponse> instance

Stops a running channel


=head2 UpdateChannel

=over

=item ChannelId => Str

=item [Destinations => ArrayRef[L<Paws::MediaLive::OutputDestination>]]

=item [EncoderSettings => L<Paws::MediaLive::EncoderSettings>]

=item [InputAttachments => ArrayRef[L<Paws::MediaLive::InputAttachment>]]

=item [InputSpecification => L<Paws::MediaLive::InputSpecification>]

=item [LogLevel => Str]

=item [Name => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::MediaLive::UpdateChannel>

Returns: a L<Paws::MediaLive::UpdateChannelResponse> instance

Updates a channel.


=head2 UpdateInput

=over

=item [Destinations => ArrayRef[L<Paws::MediaLive::InputDestinationRequest>]]

=item [InputSecurityGroups => ArrayRef[Str|Undef]]

=item [MediaConnectFlows => ArrayRef[L<Paws::MediaLive::MediaConnectFlowRequest>]]

=item [Name => Str]

=item [RoleArn => Str]

=item [Sources => ArrayRef[L<Paws::MediaLive::InputSourceRequest>]]


=back

Each argument is described in detail in: L<Paws::MediaLive::UpdateInput>

Returns: a L<Paws::MediaLive::UpdateInputResponse> instance

Updates an input.


=head2 UpdateInputSecurityGroup

=over

=item InputSecurityGroupId => Str

=item [Tags => L<Paws::MediaLive::Tags>]

=item [WhitelistRules => ArrayRef[L<Paws::MediaLive::InputWhitelistRuleCidr>]]


=back

Each argument is described in detail in: L<Paws::MediaLive::UpdateInputSecurityGroup>

Returns: a L<Paws::MediaLive::UpdateInputSecurityGroupResponse> instance

Update an Input Security Group's Whilelists.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllSchedule(sub { },ChannelId => Str, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllSchedule(ChannelId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScheduleActions, passing the object as the first parameter, and the string 'ScheduleActions' as the second parameter 

If not, it will return a a L<Paws::MediaLive::DescribeScheduleResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllChannels(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllChannels([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Channels, passing the object as the first parameter, and the string 'Channels' as the second parameter 

If not, it will return a a L<Paws::MediaLive::ListChannelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInputs(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllInputs([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Inputs, passing the object as the first parameter, and the string 'Inputs' as the second parameter 

If not, it will return a a L<Paws::MediaLive::ListInputsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInputSecurityGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllInputSecurityGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InputSecurityGroups, passing the object as the first parameter, and the string 'InputSecurityGroups' as the second parameter 

If not, it will return a a L<Paws::MediaLive::ListInputSecurityGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOfferings(sub { },[ChannelConfiguration => Str, Codec => Str, MaximumBitrate => Str, MaximumFramerate => Str, MaxResults => Int, NextToken => Str, Resolution => Str, ResourceType => Str, SpecialFeature => Str, VideoQuality => Str])

=head2 ListAllOfferings([ChannelConfiguration => Str, Codec => Str, MaximumBitrate => Str, MaximumFramerate => Str, MaxResults => Int, NextToken => Str, Resolution => Str, ResourceType => Str, SpecialFeature => Str, VideoQuality => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Offerings, passing the object as the first parameter, and the string 'Offerings' as the second parameter 

If not, it will return a a L<Paws::MediaLive::ListOfferingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReservations(sub { },[Codec => Str, MaximumBitrate => Str, MaximumFramerate => Str, MaxResults => Int, NextToken => Str, Resolution => Str, ResourceType => Str, SpecialFeature => Str, VideoQuality => Str])

=head2 ListAllReservations([Codec => Str, MaximumBitrate => Str, MaximumFramerate => Str, MaxResults => Int, NextToken => Str, Resolution => Str, ResourceType => Str, SpecialFeature => Str, VideoQuality => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Reservations, passing the object as the first parameter, and the string 'Reservations' as the second parameter 

If not, it will return a a L<Paws::MediaLive::ListReservationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

