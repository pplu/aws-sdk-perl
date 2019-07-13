package Paws::IoT::AuditNotificationTarget;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', request_name => 'enabled', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
  has TargetArn => (is => 'ro', isa => 'Str', request_name => 'targetArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AuditNotificationTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AuditNotificationTarget object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., TargetArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AuditNotificationTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Information about the targets to which audit notifications are sent.

=head1 ATTRIBUTES


=head2 Enabled => Bool

  True if notifications to the target are enabled.


=head2 RoleArn => Str

  The ARN of the role that grants permission to send notifications to the
target.


=head2 TargetArn => Str

  The ARN of the target (SNS topic) to which audit notifications are
sent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

