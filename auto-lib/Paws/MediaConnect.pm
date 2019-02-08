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

  
  sub AddFlowOutputs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::AddFlowOutputs', @_);
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
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFlowOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RemoveFlowOutput', @_);
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
  sub UpdateFlowEntitlement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateFlowEntitlement', @_);
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


  sub operations { qw/AddFlowOutputs CreateFlow DeleteFlow DescribeFlow GrantFlowEntitlements ListEntitlements ListFlows ListTagsForResource RemoveFlowOutput RevokeFlowEntitlement StartFlow StopFlow TagResource UntagResource UpdateFlowEntitlement UpdateFlowOutput UpdateFlowSource / }

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

=head2 AddFlowOutputs

=over

=item FlowArn => Str

=item Outputs => ArrayRef[L<Paws::MediaConnect::AddOutputRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::AddFlowOutputs>

Returns: a L<Paws::MediaConnect::AddFlowOutputsResponse> instance

Adds outputs to an existing flow. You can create up to 20 outputs per
flow.


=head2 CreateFlow

=over

=item Name => Str

=item Source => L<Paws::MediaConnect::SetSourceRequest>

=item [AvailabilityZone => Str]

=item [Entitlements => ArrayRef[L<Paws::MediaConnect::GrantEntitlementRequest>]]

=item [Outputs => ArrayRef[L<Paws::MediaConnect::AddOutputRequest>]]


=back

Each argument is described in detail in: L<Paws::MediaConnect::CreateFlow>

Returns: a L<Paws::MediaConnect::CreateFlowResponse> instance

Creates a new flow. The request must include one source. The request
optionally can include outputs (up to 20) and entitlements (up to 50).


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


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListTagsForResource>

Returns: a L<Paws::MediaConnect::ListTagsForResourceResponse> instance

Lists all tags associated with the resource.


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

Associates the specified tags to a resource. If the request does not
mention an existing tag associated with the resource, that tag is not
changed.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UntagResource>

Returns: nothing

Deletes the specified tags from a resource.


=head2 UpdateFlowEntitlement

=over

=item EntitlementArn => Str

=item FlowArn => Str

=item [Description => Str]

=item [Encryption => L<Paws::MediaConnect::UpdateEncryption>]

=item [Subscribers => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateFlowEntitlement>

Returns: a L<Paws::MediaConnect::UpdateFlowEntitlementResponse> instance

You can change an entitlement's description, subscribers, and
encryption. If you change the subscribers, the service will remove the
outputs that are are used by the subscribers that are removed.


=head2 UpdateFlowOutput

=over

=item FlowArn => Str

=item OutputArn => Str

=item [Description => Str]

=item [Destination => Str]

=item [Encryption => L<Paws::MediaConnect::UpdateEncryption>]

=item [MaxLatency => Int]

=item [Port => Int]

=item [Protocol => Str]

=item [SmoothingLatency => Int]

=item [StreamId => Str]


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

=item [Protocol => Str]

=item [StreamId => Str]

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





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

