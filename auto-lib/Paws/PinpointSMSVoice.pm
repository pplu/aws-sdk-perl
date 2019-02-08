package Paws::PinpointSMSVoice;
  use Moose;
  sub service { 'sms-voice.pinpoint' }
  sub signing_name { 'sms-voice' }
  sub version { '2018-09-05' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoice::CreateConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoice::CreateConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoice::DeleteConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoice::DeleteConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfigurationSetEventDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoice::GetConfigurationSetEventDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoice::ListConfigurationSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendVoiceMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoice::SendVoiceMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoice::UpdateConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateConfigurationSet CreateConfigurationSetEventDestination DeleteConfigurationSet DeleteConfigurationSetEventDestination GetConfigurationSetEventDestinations ListConfigurationSets SendVoiceMessage UpdateConfigurationSetEventDestination / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice - Perl Interface to AWS Amazon Pinpoint SMS and Voice Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PinpointSMSVoice');
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

Pinpoint SMS and Voice Messaging public facing APIs

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice.pinpoint-2018-09-05>


=head1 METHODS

=head2 CreateConfigurationSet

=over

=item [ConfigurationSetName => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoice::CreateConfigurationSet>

Returns: a L<Paws::PinpointSMSVoice::CreateConfigurationSetResponse> instance

Create a new configuration set. After you create the configuration set,
you can add one or more event destinations to it.


=head2 CreateConfigurationSetEventDestination

=over

=item ConfigurationSetName => Str

=item [EventDestination => L<Paws::PinpointSMSVoice::EventDestinationDefinition>]

=item [EventDestinationName => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoice::CreateConfigurationSetEventDestination>

Returns: a L<Paws::PinpointSMSVoice::CreateConfigurationSetEventDestinationResponse> instance

Create a new event destination in a configuration set.


=head2 DeleteConfigurationSet

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoice::DeleteConfigurationSet>

Returns: a L<Paws::PinpointSMSVoice::DeleteConfigurationSetResponse> instance

Deletes an existing configuration set.


=head2 DeleteConfigurationSetEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestinationName => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoice::DeleteConfigurationSetEventDestination>

Returns: a L<Paws::PinpointSMSVoice::DeleteConfigurationSetEventDestinationResponse> instance

Deletes an event destination in a configuration set.


=head2 GetConfigurationSetEventDestinations

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoice::GetConfigurationSetEventDestinations>

Returns: a L<Paws::PinpointSMSVoice::GetConfigurationSetEventDestinationsResponse> instance

Obtain information about an event destination, including the types of
events it reports, the Amazon Resource Name (ARN) of the destination,
and the name of the event destination.


=head2 ListConfigurationSets

=over

=item [NextToken => Str]

=item [PageSize => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoice::ListConfigurationSets>

Returns: a L<Paws::PinpointSMSVoice::ListConfigurationSetsResponse> instance

List all of the configuration sets associated with your Amazon Pinpoint
account in the current region.


=head2 SendVoiceMessage

=over

=item [CallerId => Str]

=item [ConfigurationSetName => Str]

=item [Content => L<Paws::PinpointSMSVoice::VoiceMessageContent>]

=item [DestinationPhoneNumber => Str]

=item [OriginationPhoneNumber => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoice::SendVoiceMessage>

Returns: a L<Paws::PinpointSMSVoice::SendVoiceMessageResponse> instance

Create a new voice message and send it to a recipient's phone number.


=head2 UpdateConfigurationSetEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestinationName => Str

=item [EventDestination => L<Paws::PinpointSMSVoice::EventDestinationDefinition>]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoice::UpdateConfigurationSetEventDestination>

Returns: a L<Paws::PinpointSMSVoice::UpdateConfigurationSetEventDestinationResponse> instance

Update an event destination in a configuration set. An event
destination is a location that you publish information about your voice
calls to. For example, you can log an event to an Amazon CloudWatch
destination when a call fails.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

