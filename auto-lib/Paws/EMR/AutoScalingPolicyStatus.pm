package Paws::EMR::AutoScalingPolicyStatus;
  use Moose;
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Paws::EMR::AutoScalingPolicyStateChangeReason');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::AutoScalingPolicyStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::AutoScalingPolicyStatus object:

  $service_obj->Method(Att1 => { State => $value, ..., StateChangeReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::AutoScalingPolicyStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->State

=head1 DESCRIPTION

The status of an automatic scaling policy.

=head1 ATTRIBUTES


=head2 State => Str

  


=head2 StateChangeReason => L<Paws::EMR::AutoScalingPolicyStateChangeReason>

  The reason for a change in status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

