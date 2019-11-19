
package Paws::EC2::CreateVpcEndpointConnectionNotification;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Bool/;
  use Paws::EC2::Types qw//;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has ConnectionEvents => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has ConnectionNotificationArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has ServiceId => (is => 'ro', isa => Str, predicate => 1);
  has VpcEndpointId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateVpcEndpointConnectionNotification');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::CreateVpcEndpointConnectionNotificationResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceId' => {
                                'type' => 'Str'
                              },
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'VpcEndpointId' => {
                                    'type' => 'Str'
                                  },
               'ConnectionNotificationArn' => {
                                                'type' => 'Str'
                                              },
               'ConnectionEvents' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     }
             },
  'IsRequired' => {
                    'ConnectionEvents' => 1,
                    'ConnectionNotificationArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcEndpointConnectionNotification - Arguments for method CreateVpcEndpointConnectionNotification on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcEndpointConnectionNotification on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVpcEndpointConnectionNotification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcEndpointConnectionNotification.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateVpcEndpointConnectionNotificationResult =
      $ec2->CreateVpcEndpointConnectionNotification(
      ConnectionEvents          => [ 'MyString', ... ],
      ConnectionNotificationArn => 'MyString',
      ClientToken               => 'MyString',            # OPTIONAL
      DryRun                    => 1,                     # OPTIONAL
      ServiceId                 => 'MyServiceId',         # OPTIONAL
      VpcEndpointId             => 'MyVpcEndpointId',     # OPTIONAL
      );

    # Results:
    my $ClientToken =
      $CreateVpcEndpointConnectionNotificationResult->ClientToken;
    my $ConnectionNotification =
      $CreateVpcEndpointConnectionNotificationResult->ConnectionNotification;

 # Returns a L<Paws::EC2::CreateVpcEndpointConnectionNotificationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVpcEndpointConnectionNotification>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see How to Ensure Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> ConnectionEvents => ArrayRef[Str|Undef]

One or more endpoint events for which to receive notifications. Valid
values are C<Accept>, C<Connect>, C<Delete>, and C<Reject>.



=head2 B<REQUIRED> ConnectionNotificationArn => Str

The ARN of the SNS topic for the notifications.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 ServiceId => Str

The ID of the endpoint service.



=head2 VpcEndpointId => Str

The ID of the endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcEndpointConnectionNotification in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

