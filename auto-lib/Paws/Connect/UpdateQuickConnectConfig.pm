
package Paws::Connect::UpdateQuickConnectConfig;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has QuickConnectConfig => (is => 'ro', isa => 'Paws::Connect::QuickConnectConfig', required => 1);
  has QuickConnectId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'QuickConnectId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQuickConnectConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/quick-connects/{InstanceId}/{QuickConnectId}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateQuickConnectConfig - Arguments for method UpdateQuickConnectConfig on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQuickConnectConfig on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateQuickConnectConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQuickConnectConfig.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateQuickConnectConfig(
      InstanceId         => 'MyInstanceId',
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
      QuickConnectId => 'MyQuickConnectId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateQuickConnectConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 B<REQUIRED> QuickConnectConfig => L<Paws::Connect::QuickConnectConfig>

Information about the configuration settings for the quick connect.



=head2 B<REQUIRED> QuickConnectId => Str

The identifier for the quick connect.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQuickConnectConfig in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

