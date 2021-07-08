package Paws::AppIntegrations;
  use Moose;
  sub service { 'app-integrations' }
  sub signing_name { 'app-integrations' }
  sub version { '2020-07-29' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateEventIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::CreateEventIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::DeleteEventIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::GetEventIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventIntegrationAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::ListEventIntegrationAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventIntegrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::ListEventIntegrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::UpdateEventIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateEventIntegration DeleteEventIntegration GetEventIntegration ListEventIntegrationAssociations ListEventIntegrations ListTagsForResource TagResource UntagResource UpdateEventIntegration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations - Perl Interface to AWS Amazon AppIntegrations Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppIntegrations');
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

The Amazon AppIntegrations APIs are in preview release and are subject
to change.

The Amazon AppIntegrations service enables you to configure and reuse
connections to external applications.

For information about how you can use external applications with Amazon
Connect, see Set up pre-built integrations
(https://docs.aws.amazon.com/connect/latest/adminguide/crm.html) in the
I<Amazon Connect Administrator Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations-2020-07-29>


=head1 METHODS

=head2 CreateEventIntegration

=over

=item EventBridgeBus => Str

=item EventFilter => L<Paws::AppIntegrations::EventFilter>

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::AppIntegrations::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::CreateEventIntegration>

Returns: a L<Paws::AppIntegrations::CreateEventIntegrationResponse> instance

The Amazon AppIntegrations APIs are in preview release and are subject
to change.

Creates an EventIntegration, given a specified name, description, and a
reference to an Amazon Eventbridge bus in your account and a partner
event source that will push events to that bus. No objects are created
in the your account, only metadata that is persisted on the
EventIntegration control plane.


=head2 DeleteEventIntegration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppIntegrations::DeleteEventIntegration>

Returns: a L<Paws::AppIntegrations::DeleteEventIntegrationResponse> instance

The Amazon AppIntegrations APIs are in preview release and are subject
to change.

Deletes the specified existing event integration. If the event
integration is associated with clients, the request is rejected.


=head2 GetEventIntegration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppIntegrations::GetEventIntegration>

Returns: a L<Paws::AppIntegrations::GetEventIntegrationResponse> instance

The Amazon AppIntegrations APIs are in preview release and are subject
to change.

Return information about the event integration.


=head2 ListEventIntegrationAssociations

=over

=item EventIntegrationName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::ListEventIntegrationAssociations>

Returns: a L<Paws::AppIntegrations::ListEventIntegrationAssociationsResponse> instance

The Amazon AppIntegrations APIs are in preview release and are subject
to change.

Returns a paginated list of event integration associations in the
account.


=head2 ListEventIntegrations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::ListEventIntegrations>

Returns: a L<Paws::AppIntegrations::ListEventIntegrationsResponse> instance

The Amazon AppIntegrations APIs are in preview release and are subject
to change.

Returns a paginated list of event integrations in the account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AppIntegrations::ListTagsForResource>

Returns: a L<Paws::AppIntegrations::ListTagsForResourceResponse> instance

The Amazon AppIntegrations APIs are in preview release and are subject
to change.

Lists the tags for the specified resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::AppIntegrations::TagMap>


=back

Each argument is described in detail in: L<Paws::AppIntegrations::TagResource>

Returns: a L<Paws::AppIntegrations::TagResourceResponse> instance

The Amazon AppIntegrations APIs are in preview release and are subject
to change.

Adds the specified tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::UntagResource>

Returns: a L<Paws::AppIntegrations::UntagResourceResponse> instance

The Amazon AppIntegrations APIs are in preview release and are subject
to change.

Removes the specified tags from the specified resource.


=head2 UpdateEventIntegration

=over

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::UpdateEventIntegration>

Returns: a L<Paws::AppIntegrations::UpdateEventIntegrationResponse> instance

The Amazon AppIntegrations APIs are in preview release and are subject
to change.

Updates the description of an event integration.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

