
package Paws::IoTWireless::CreateDestination;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Expression => (is => 'ro', isa => 'Str', required => 1);
  has ExpressionType => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/destinations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::CreateDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateDestination - Arguments for method CreateDestination on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDestination on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method CreateDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDestination.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $CreateDestinationResponse = $api . iotwireless->CreateDestination(
      Expression         => 'MyExpression',
      ExpressionType     => 'RuleName',
      Name               => 'MyDestinationName',
      RoleArn            => 'MyRoleArn',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Description        => 'MyDescription',           # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',                         # min: 1, max: 128
          Value => 'MyTagValue',                       # max: 256

        },
        ...
      ],                                               # OPTIONAL
    );

    # Results:
    my $Arn  = $CreateDestinationResponse->Arn;
    my $Name = $CreateDestinationResponse->Name;

    # Returns a L<Paws::IoTWireless::CreateDestinationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/CreateDestination>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Each resource must have a unique client request token. If you try to
create a new resource with the same token as a resource that already
exists, an exception occurs. If you omit this value, AWS SDKs will
automatically generate a unique client request.



=head2 Description => Str

The description of the new resource.



=head2 B<REQUIRED> Expression => Str

The rule name or topic rule to send messages to.



=head2 B<REQUIRED> ExpressionType => Str

The type of value in C<Expression>.

Valid values are: C<"RuleName">, C<"MqttTopic">

=head2 B<REQUIRED> Name => Str

The name of the new resource.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM Role that authorizes the destination.



=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]

The tags to attach to the new destination. Tags are metadata that you
can use to manage a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDestination in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

