
package Paws::AlexaForBusiness::SendAnnouncement;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has Content => (is => 'ro', isa => 'Paws::AlexaForBusiness::Content', required => 1);
  has RoomFilters => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::Filter]', required => 1);
  has TimeToLiveInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendAnnouncement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::SendAnnouncementResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SendAnnouncement - Arguments for method SendAnnouncement on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendAnnouncement on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method SendAnnouncement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendAnnouncement.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $SendAnnouncementResponse = $a4b->SendAnnouncement(
      ClientRequestToken => 'MyClientRequestToken',
      Content            => {
        AudioList => [
          {
            Locale   => 'en-US',              # values: en-US
            Location => 'MyAudioLocation',    # max: 1200

          },
          ...
        ],                                    # max: 1; OPTIONAL
        SsmlList => [
          {
            Locale => 'en-US',                # values: en-US
            Value  => 'MySsmlValue',          # max: 4096

          },
          ...
        ],                                    # max: 1; OPTIONAL
        TextList => [
          {
            Locale => 'en-US',                # values: en-US
            Value  => 'MyTextValue',          # max: 4096

          },
          ...
        ],                                    # max: 1; OPTIONAL
      },
      RoomFilters => [
        {
          Key    => 'MyFilterKey',            # min: 1, max: 500
          Values => [
            'MyFilterValue', ...              # min: 1, max: 500
          ],                                  # max: 50

        },
        ...
      ],
      TimeToLiveInSeconds => 1,               # OPTIONAL
    );

    # Results:
    my $AnnouncementArn = $SendAnnouncementResponse->AnnouncementArn;

    # Returns a L<Paws::AlexaForBusiness::SendAnnouncementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/SendAnnouncement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

The unique, user-specified identifier for the request that ensures
idempotency.



=head2 B<REQUIRED> Content => L<Paws::AlexaForBusiness::Content>

The announcement content. This can contain only one of the three
possible announcement types (text, SSML or audio).



=head2 B<REQUIRED> RoomFilters => ArrayRef[L<Paws::AlexaForBusiness::Filter>]

The filters to use to send an announcement to a specified list of
rooms. The supported filter keys are RoomName, ProfileName, RoomArn,
and ProfileArn. To send to all rooms, specify an empty RoomFilters
list.



=head2 TimeToLiveInSeconds => Int

The time to live for an announcement. Default is 300. If delivery
doesn't occur within this time, the announcement is not delivered.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendAnnouncement in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

