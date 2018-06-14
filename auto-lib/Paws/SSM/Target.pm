package Paws::SSM::Target;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::Target

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::Target object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::Target object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

An array of search criteria that targets instances using a Key,Value
combination that you specify. C<Targets> is required if you don't
provide one or more instance IDs in the call.

=head1 ATTRIBUTES


=head2 Key => Str

  User-defined criteria for sending commands that target instances that
meet the criteria. Key can be tag:E<lt>Amazon EC2 tagE<gt> or
InstanceIds. For more information about how to send commands that
target instances using Key,Value parameters, see Targeting Multiple
Instances
(http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-targeting)
in the I<AWS Systems Manager User Guide>.


=head2 Values => ArrayRef[Str|Undef]

  User-defined criteria that maps to Key. For example, if you specified
tag:ServerRole, you could specify value:WebServer to execute a command
on instances that include Amazon EC2 tags of ServerRole,WebServer. For
more information about how to send commands that target instances using
Key,Value parameters, see Sending Commands to a Fleet
(http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html)
in the I<AWS Systems Manager User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

