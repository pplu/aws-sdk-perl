package Paws::EC2::ClientConnectResponseOptions;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', request_name => 'enabled', traits => ['NameInRequest']);
  has LambdaFunctionArn => (is => 'ro', isa => 'Str', request_name => 'lambdaFunctionArn', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::EC2::ClientVpnEndpointAttributeStatus', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ClientConnectResponseOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ClientConnectResponseOptions object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ClientConnectResponseOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Enabled => Bool

Indicates whether client connect options are enabled.


=head2 LambdaFunctionArn => Str

The Amazon Resource Name (ARN) of the AWS Lambda function used for
connection authorization.


=head2 Status => L<Paws::EC2::ClientVpnEndpointAttributeStatus>

The status of any updates to the client connect options.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
