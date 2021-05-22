
package Paws::IoTWireless::UpdateDestination;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Expression => (is => 'ro', isa => 'Str');
  has ExpressionType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/destinations/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::UpdateDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::UpdateDestination - Arguments for method UpdateDestination on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDestination on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method UpdateDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDestination.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $UpdateDestinationResponse = $api . iotwireless->UpdateDestination(
      Name           => 'MyDestinationName',
      Description    => 'MyDescription',       # OPTIONAL
      Expression     => 'MyExpression',        # OPTIONAL
      ExpressionType => 'RuleName',            # OPTIONAL
      RoleArn        => 'MyRoleArn',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/UpdateDestination>

=head1 ATTRIBUTES


=head2 Description => Str

A new description of the resource.



=head2 Expression => Str

The new rule name or topic rule to send messages to.



=head2 ExpressionType => Str

The type of value in C<Expression>.

Valid values are: C<"RuleName">, C<"MqttTopic">

=head2 B<REQUIRED> Name => Str

The new name of the resource.



=head2 RoleArn => Str

The ARN of the IAM Role that authorizes the destination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDestination in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

