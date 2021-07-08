
package Paws::Connect::CreateQuickConnect;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has QuickConnectConfig => (is => 'ro', isa => 'Paws::Connect::QuickConnectConfig', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQuickConnect');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/quick-connects/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateQuickConnectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateQuickConnect - Arguments for method CreateQuickConnect on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQuickConnect on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateQuickConnect.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQuickConnect.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateQuickConnectResponse = $connect->CreateQuickConnect(
      InstanceId         => 'MyInstanceId',
      Name               => 'MyQuickConnectName',
      QuickConnectConfig => {
        QuickConnectType => 'USER',    # values: USER, QUEUE, PHONE_NUMBER
        PhoneConfig      => {
          PhoneNumber => 'MyPhoneNumber',

        },                             # OPTIONAL
        QueueConfig => {
          ContactFlowId => 'MyContactFlowId',    # max: 500
          QueueId       => 'MyQueueId',

        },    # OPTIONAL
        UserConfig => {
          ContactFlowId => 'MyContactFlowId',    # max: 500
          UserId        => 'MyUserId',

        },    # OPTIONAL
      },
      Description => 'MyQuickConnectDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $QuickConnectARN = $CreateQuickConnectResponse->QuickConnectARN;
    my $QuickConnectId  = $CreateQuickConnectResponse->QuickConnectId;

    # Returns a L<Paws::Connect::CreateQuickConnectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateQuickConnect>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the quick connect.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 B<REQUIRED> Name => Str

The name of the quick connect.



=head2 B<REQUIRED> QuickConnectConfig => L<Paws::Connect::QuickConnectConfig>

Configuration settings for the quick connect.



=head2 Tags => L<Paws::Connect::TagMap>

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQuickConnect in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

