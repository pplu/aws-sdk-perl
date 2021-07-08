
package Paws::Connect::CreateRoutingProfile;
  use Moose;
  has DefaultOutboundQueueId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MediaConcurrencies => (is => 'ro', isa => 'ArrayRef[Paws::Connect::MediaConcurrency]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has QueueConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Connect::RoutingProfileQueueConfig]');
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoutingProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/routing-profiles/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateRoutingProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateRoutingProfile - Arguments for method CreateRoutingProfile on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRoutingProfile on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateRoutingProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRoutingProfile.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateRoutingProfileResponse = $connect->CreateRoutingProfile(
      DefaultOutboundQueueId => 'MyQueueId',
      Description            => 'MyRoutingProfileDescription',
      InstanceId             => 'MyInstanceId',
      MediaConcurrencies     => [
        {
          Channel     => 'VOICE',    # values: VOICE, CHAT, TASK
          Concurrency => 1,          # min: 1, max: 10

        },
        ...
      ],
      Name         => 'MyRoutingProfileName',
      QueueConfigs => [
        {
          Delay          => 1,       # max: 9999
          Priority       => 1,       # min: 1, max: 99
          QueueReference => {
            Channel => 'VOICE',       # values: VOICE, CHAT, TASK
            QueueId => 'MyQueueId',

          },

        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $RoutingProfileArn = $CreateRoutingProfileResponse->RoutingProfileArn;
    my $RoutingProfileId  = $CreateRoutingProfileResponse->RoutingProfileId;

    # Returns a L<Paws::Connect::CreateRoutingProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateRoutingProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DefaultOutboundQueueId => Str

The default outbound queue for the routing profile.



=head2 B<REQUIRED> Description => Str

Description of the routing profile. Must not be more than 250
characters.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 B<REQUIRED> MediaConcurrencies => ArrayRef[L<Paws::Connect::MediaConcurrency>]

The channels that agents can handle in the Contact Control Panel (CCP)
for this routing profile.



=head2 B<REQUIRED> Name => Str

The name of the routing profile. Must not be more than 127 characters.



=head2 QueueConfigs => ArrayRef[L<Paws::Connect::RoutingProfileQueueConfig>]

The inbound queues associated with the routing profile. If no queue is
added, the agent can make only outbound calls.



=head2 Tags => L<Paws::Connect::TagMap>

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRoutingProfile in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

