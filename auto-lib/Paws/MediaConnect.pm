package Paws::MediaConnect;
  use Moose;
  sub service { 'mediaconnect' }
  sub signing_name { 'mediaconnect' }
  sub version { '2018-11-14' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddFlowMediaStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::AddFlowMediaStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddFlowOutputs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::AddFlowOutputs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddFlowSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::AddFlowSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddFlowVpcInterfaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::AddFlowVpcInterfaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::CreateFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DeleteFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DescribeFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DescribeOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DescribeReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GrantFlowEntitlements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::GrantFlowEntitlements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntitlements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListEntitlements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListFlows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReservations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListReservations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::PurchaseOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFlowMediaStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RemoveFlowMediaStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFlowOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RemoveFlowOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFlowSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RemoveFlowSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFlowVpcInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RemoveFlowVpcInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeFlowEntitlement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RevokeFlowEntitlement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::StartFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::StopFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlowEntitlement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateFlowEntitlement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlowMediaStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateFlowMediaStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlowOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateFlowOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlowSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateFlowSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllEntitlements {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEntitlements(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEntitlements(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entitlements }, @{ $next_result->Entitlements };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entitlements') foreach (@{ $result->Entitlements });
        $result = $self->ListEntitlements(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entitlements') foreach (@{ $result->Entitlements });
    }

    return undef
  }
  sub ListAllFlows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFlows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFlows(@_, NextToken => $next_result->NextToken);
        push @{ $result->Flows }, @{ $next_result->Flows };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Flows') foreach (@{ $result->Flows });
        $result = $self->ListFlows(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Flows') foreach (@{ $result->Flows });
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


  sub operations { qw/AddFlowMediaStreams AddFlowOutputs AddFlowSources AddFlowVpcInterfaces CreateFlow DeleteFlow DescribeFlow DescribeOffering DescribeReservation GrantFlowEntitlements ListEntitlements ListFlows ListOfferings ListReservations ListTagsForResource PurchaseOffering RemoveFlowMediaStream RemoveFlowOutput RemoveFlowSource RemoveFlowVpcInterface RevokeFlowEntitlement StartFlow StopFlow TagResource UntagResource UpdateFlow UpdateFlowEntitlement UpdateFlowMediaStream UpdateFlowOutput UpdateFlowSource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect - Perl Interface to AWS AWS MediaConnect

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MediaConnect');
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

API for AWS Elemental MediaConnect

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14>


=head1 METHODS

=head2 AddFlowMediaStreams

=over

=item FlowArn => Str

=item MediaStreams => ArrayRef[L<Paws::MediaConnect::AddMediaStreamRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::AddFlowMediaStreams>

Returns: a L<Paws::MediaConnect::AddFlowMediaStreamsResponse> instance

Adds media streams to an existing flow. After you add a media stream to
a flow, you can associate it with a source and/or an output that uses
the ST 2110 JPEG XS or CDI protocol.


=head2 AddFlowOutputs

=over

=item FlowArn => Str

=item Outputs => ArrayRef[L<Paws::MediaConnect::AddOutputRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::AddFlowOutputs>

Returns: a L<Paws::MediaConnect::AddFlowOutputsResponse> instance

Adds outputs to an existing flow. You can create up to 50 outputs per
flow.


=head2 AddFlowSources

=over

=item FlowArn => Str

=item Sources => ArrayRef[L<Paws::MediaConnect::SetSourceRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::AddFlowSources>

Returns: a L<Paws::MediaConnect::AddFlowSourcesResponse> instance

Adds Sources to flow


=head2 AddFlowVpcInterfaces

=over

=item FlowArn => Str

=item VpcInterfaces => ArrayRef[L<Paws::MediaConnect::VpcInterfaceRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::AddFlowVpcInterfaces>

Returns: a L<Paws::MediaConnect::AddFlowVpcInterfacesResponse> instance

Adds VPC interfaces to flow


=head2 CreateFlow

=over

=item Name => Str

=item [AvailabilityZone => Str]

=item [Entitlements => ArrayRef[L<Paws::MediaConnect::GrantEntitlementRequest>]]

=item [MediaStreams => ArrayRef[L<Paws::MediaConnect::AddMediaStreamRequest>]]

=item [Outputs => ArrayRef[L<Paws::MediaConnect::AddOutputRequest>]]

=item [Source => L<Paws::MediaConnect::SetSourceRequest>]

=item [SourceFailoverConfig => L<Paws::MediaConnect::FailoverConfig>]

=item [Sources => ArrayRef[L<Paws::MediaConnect::SetSourceRequest>]]

=item [VpcInterfaces => ArrayRef[L<Paws::MediaConnect::VpcInterfaceRequest>]]


=back

Each argument is described in detail in: L<Paws::MediaConnect::CreateFlow>

Returns: a L<Paws::MediaConnect::CreateFlowResponse> instance

Creates a new flow. The request must include one source. The request
optionally can include outputs (up to 50) and entitlements (up to 50).


=head2 DeleteFlow

=over

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DeleteFlow>

Returns: a L<Paws::MediaConnect::DeleteFlowResponse> instance

Deletes a flow. Before you can delete a flow, you must stop the flow.


=head2 DescribeFlow

=over

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DescribeFlow>

Returns: a L<Paws::MediaConnect::DescribeFlowResponse> instance

Displays the details of a flow. The response includes the flow ARN,
name, and Availability Zone, as well as details about the source,
outputs, and entitlements.


=head2 DescribeOffering

=over

=item OfferingArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DescribeOffering>

Returns: a L<Paws::MediaConnect::DescribeOfferingResponse> instance

Displays the details of an offering. The response includes the offering
description, duration, outbound bandwidth, price, and Amazon Resource
Name (ARN).


=head2 DescribeReservation

=over

=item ReservationArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DescribeReservation>

Returns: a L<Paws::MediaConnect::DescribeReservationResponse> instance

Displays the details of a reservation. The response includes the
reservation name, state, start date and time, and the details of the
offering that make up the rest of the reservation (such as price,
duration, and outbound bandwidth).


=head2 GrantFlowEntitlements

=over

=item Entitlements => ArrayRef[L<Paws::MediaConnect::GrantEntitlementRequest>]

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::GrantFlowEntitlements>

Returns: a L<Paws::MediaConnect::GrantFlowEntitlementsResponse> instance

Grants entitlements to an existing flow.


=head2 ListEntitlements

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListEntitlements>

Returns: a L<Paws::MediaConnect::ListEntitlementsResponse> instance

Displays a list of all entitlements that have been granted to this
account. This request returns 20 results per page.


=head2 ListFlows

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListFlows>

Returns: a L<Paws::MediaConnect::ListFlowsResponse> instance

Displays a list of flows that are associated with this account. This
request returns a paginated result.


=head2 ListOfferings

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListOfferings>

Returns: a L<Paws::MediaConnect::ListOfferingsResponse> instance

Displays a list of all offerings that are available to this account in
the current AWS Region. If you have an active reservation (which means
you've purchased an offering that has already started and hasn't
expired yet), your account isn't eligible for other offerings.


=head2 ListReservations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListReservations>

Returns: a L<Paws::MediaConnect::ListReservationsResponse> instance

Displays a list of all reservations that have been purchased by this
account in the current AWS Region. This list includes all reservations
in all states (such as active and expired).


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListTagsForResource>

Returns: a L<Paws::MediaConnect::ListTagsForResourceResponse> instance

List all tags on an AWS Elemental MediaConnect resource


=head2 PurchaseOffering

=over

=item OfferingArn => Str

=item ReservationName => Str

=item Start => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::PurchaseOffering>

Returns: a L<Paws::MediaConnect::PurchaseOfferingResponse> instance

Submits a request to purchase an offering. If you already have an
active reservation, you can't purchase another offering.


=head2 RemoveFlowMediaStream

=over

=item FlowArn => Str

=item MediaStreamName => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::RemoveFlowMediaStream>

Returns: a L<Paws::MediaConnect::RemoveFlowMediaStreamResponse> instance

Removes a media stream from a flow. This action is only available if
the media stream is not associated with a source or output.


=head2 RemoveFlowOutput

=over

=item FlowArn => Str

=item OutputArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::RemoveFlowOutput>

Returns: a L<Paws::MediaConnect::RemoveFlowOutputResponse> instance

Removes an output from an existing flow. This request can be made only
on an output that does not have an entitlement associated with it. If
the output has an entitlement, you must revoke the entitlement instead.
When an entitlement is revoked from a flow, the service automatically
removes the associated output.


=head2 RemoveFlowSource

=over

=item FlowArn => Str

=item SourceArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::RemoveFlowSource>

Returns: a L<Paws::MediaConnect::RemoveFlowSourceResponse> instance

Removes a source from an existing flow. This request can be made only
if there is more than one source on the flow.


=head2 RemoveFlowVpcInterface

=over

=item FlowArn => Str

=item VpcInterfaceName => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::RemoveFlowVpcInterface>

Returns: a L<Paws::MediaConnect::RemoveFlowVpcInterfaceResponse> instance

Removes a VPC Interface from an existing flow. This request can be made
only on a VPC interface that does not have a Source or Output
associated with it. If the VPC interface is referenced by a Source or
Output, you must first delete or update the Source or Output to no
longer reference the VPC interface.


=head2 RevokeFlowEntitlement

=over

=item EntitlementArn => Str

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::RevokeFlowEntitlement>

Returns: a L<Paws::MediaConnect::RevokeFlowEntitlementResponse> instance

Revokes an entitlement from a flow. Once an entitlement is revoked, the
content becomes unavailable to the subscriber and the associated output
is removed.


=head2 StartFlow

=over

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::StartFlow>

Returns: a L<Paws::MediaConnect::StartFlowResponse> instance

Starts a flow.


=head2 StopFlow

=over

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::StopFlow>

Returns: a L<Paws::MediaConnect::StopFlowResponse> instance

Stops a flow.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::MediaConnect::__mapOf__string>


=back

Each argument is described in detail in: L<Paws::MediaConnect::TagResource>

Returns: nothing

Associates the specified tags to a resource with the specified
resourceArn. If existing tags on a resource are not specified in the
request parameters, they are not changed. When a resource is deleted,
the tags associated with that resource are deleted as well.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UntagResource>

Returns: nothing

Deletes specified tags from a resource.


=head2 UpdateFlow

=over

=item FlowArn => Str

=item [SourceFailoverConfig => L<Paws::MediaConnect::UpdateFailoverConfig>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateFlow>

Returns: a L<Paws::MediaConnect::UpdateFlowResponse> instance

Updates flow


=head2 UpdateFlowEntitlement

=over

=item EntitlementArn => Str

=item FlowArn => Str

=item [Description => Str]

=item [Encryption => L<Paws::MediaConnect::UpdateEncryption>]

=item [EntitlementStatus => Str]

=item [Subscribers => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateFlowEntitlement>

Returns: a L<Paws::MediaConnect::UpdateFlowEntitlementResponse> instance

You can change an entitlement's description, subscribers, and
encryption. If you change the subscribers, the service will remove the
outputs that are are used by the subscribers that are removed.


=head2 UpdateFlowMediaStream

=over

=item FlowArn => Str

=item MediaStreamName => Str

=item [Attributes => L<Paws::MediaConnect::MediaStreamAttributesRequest>]

=item [ClockRate => Int]

=item [Description => Str]

=item [MediaStreamType => Str]

=item [VideoFormat => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateFlowMediaStream>

Returns: a L<Paws::MediaConnect::UpdateFlowMediaStreamResponse> instance

Updates an existing media stream.


=head2 UpdateFlowOutput

=over

=item FlowArn => Str

=item OutputArn => Str

=item [CidrAllowList => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [Destination => Str]

=item [Encryption => L<Paws::MediaConnect::UpdateEncryption>]

=item [MaxLatency => Int]

=item [MediaStreamOutputConfigurations => ArrayRef[L<Paws::MediaConnect::MediaStreamOutputConfigurationRequest>]]

=item [MinLatency => Int]

=item [Port => Int]

=item [Protocol => Str]

=item [RemoteId => Str]

=item [SmoothingLatency => Int]

=item [StreamId => Str]

=item [VpcInterfaceAttachment => L<Paws::MediaConnect::VpcInterfaceAttachment>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateFlowOutput>

Returns: a L<Paws::MediaConnect::UpdateFlowOutputResponse> instance

Updates an existing flow output.


=head2 UpdateFlowSource

=over

=item FlowArn => Str

=item SourceArn => Str

=item [Decryption => L<Paws::MediaConnect::UpdateEncryption>]

=item [Description => Str]

=item [EntitlementArn => Str]

=item [IngestPort => Int]

=item [MaxBitrate => Int]

=item [MaxLatency => Int]

=item [MaxSyncBuffer => Int]

=item [MediaStreamSourceConfigurations => ArrayRef[L<Paws::MediaConnect::MediaStreamSourceConfigurationRequest>]]

=item [MinLatency => Int]

=item [Protocol => Str]

=item [StreamId => Str]

=item [VpcInterfaceName => Str]

=item [WhitelistCidr => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateFlowSource>

Returns: a L<Paws::MediaConnect::UpdateFlowSourceResponse> instance

Updates the source of a flow.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEntitlements(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEntitlements([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entitlements, passing the object as the first parameter, and the string 'Entitlements' as the second parameter 

If not, it will return a a L<Paws::MediaConnect::ListEntitlementsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFlows(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllFlows([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Flows, passing the object as the first parameter, and the string 'Flows' as the second parameter 

If not, it will return a a L<Paws::MediaConnect::ListFlowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOfferings(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllOfferings([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Offerings, passing the object as the first parameter, and the string 'Offerings' as the second parameter 

If not, it will return a a L<Paws::MediaConnect::ListOfferingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReservations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllReservations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Reservations, passing the object as the first parameter, and the string 'Reservations' as the second parameter 

If not, it will return a a L<Paws::MediaConnect::ListReservationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

