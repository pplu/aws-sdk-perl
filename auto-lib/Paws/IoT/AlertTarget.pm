package Paws::IoT::AlertTarget;
  use Moose;
  has AlertTargetArn => (is => 'ro', isa => 'Str', request_name => 'alertTargetArn', traits => ['NameInRequest'], required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AlertTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AlertTarget object:

  $service_obj->Method(Att1 => { AlertTargetArn => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AlertTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->AlertTargetArn

=head1 DESCRIPTION

A structure containing the alert target ARN and the role ARN.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlertTargetArn => Str

  The ARN of the notification target to which alerts are sent.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the role that grants permission to send alerts to the
notification target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

