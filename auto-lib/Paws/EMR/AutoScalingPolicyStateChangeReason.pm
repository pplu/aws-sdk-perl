package Paws::EMR::AutoScalingPolicyStateChangeReason;
  use Moose;
  has Code => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::AutoScalingPolicyStateChangeReason

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::AutoScalingPolicyStateChangeReason object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::AutoScalingPolicyStateChangeReason object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

The reason for an AutoScalingPolicyStatus change.

=head1 ATTRIBUTES


=head2 Code => Str

  The code indicating the reason for the change in status.C<USER_REQUEST>
indicates that the scaling policy status was changed by a user.
C<PROVISION_FAILURE> indicates that the status change was because the
policy failed to provision. C<CLEANUP_FAILURE> indicates something
unclean happened.--E<gt>


=head2 Message => Str

  A friendly, more verbose message that accompanies an automatic scaling
policy state change.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

