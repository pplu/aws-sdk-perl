package Paws::Pinpoint::EndpointResponse;
  use Moose;
  has Address => (is => 'ro', isa => 'Str');
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
  has ChannelType => (is => 'ro', isa => 'Str');
  has CohortId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Demographic => (is => 'ro', isa => 'Paws::Pinpoint::EndpointDemographic');
  has EffectiveDate => (is => 'ro', isa => 'Str');
  has EndpointStatus => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Paws::Pinpoint::EndpointLocation');
  has Metrics => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__double');
  has OptOut => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has ShardId => (is => 'ro', isa => 'Str');
  has User => (is => 'ro', isa => 'Paws::Pinpoint::EndpointUser');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EndpointResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EndpointResponse object:

  $service_obj->Method(Att1 => { Address => $value, ..., User => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EndpointResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Address => Str

  The address or token of the endpoint.


=head2 ApplicationId => Str

  The ID of the application associated with the endpoint.


=head2 Attributes => L<Paws::Pinpoint::MapOfListOf__string>

  Custom attributes that your app reports to Amazon Pinpoint. You can use
these attributes as selection criteria when you create a segment.


=head2 ChannelType => Str

  The channel type. Valid values: APNS, GCM


=head2 CohortId => Str

  A number from 0 - 99 that represents the cohort the endpoint is
assigned to. Endpoints are grouped into cohorts randomly, and each
cohort contains approximately 1 percent of the endpoints for an app.
Amazon Pinpoint assigns cohorts to the holdout or treatment allocations
for a campaign.


=head2 CreationDate => Str

  The last time the endpoint was created. Provided in ISO 8601 format.


=head2 Demographic => L<Paws::Pinpoint::EndpointDemographic>

  The endpoint demographic attributes.


=head2 EffectiveDate => Str

  The last time the endpoint was updated. Provided in ISO 8601 format.


=head2 EndpointStatus => Str

  The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to
INACTIVE if a delivery fails. Will be set to ACTIVE if the address is
updated.


=head2 Id => Str

  The unique ID that you assigned to the endpoint. The ID should be a
globally unique identifier (GUID) to ensure that it is unique compared
to all other endpoints for the application.


=head2 Location => L<Paws::Pinpoint::EndpointLocation>

  The endpoint location attributes.


=head2 Metrics => L<Paws::Pinpoint::MapOf__double>

  Custom metrics that your app reports to Amazon Pinpoint.


=head2 OptOut => Str

  Indicates whether a user has opted out of receiving messages with one
of the following values: ALL E<ndash> User receives all messages. NONE
E<ndash> User receives no messages.


=head2 RequestId => Str

  The unique ID for the most recent request to update the endpoint.


=head2 ShardId => Str

  The ShardId of endpoint


=head2 User => L<Paws::Pinpoint::EndpointUser>

  Custom user-specific attributes that your app reports to Amazon
Pinpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

