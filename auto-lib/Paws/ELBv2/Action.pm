package Paws::ELBv2::Action;
  use Moose;
  has TargetGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::Action

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::Action object:

  $service_obj->Method(Att1 => { TargetGroupArn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::Action object:

  $result = $service_obj->Method(...);
  $result->Att1->TargetGroupArn

=head1 DESCRIPTION

Information about an action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetGroupArn => Str

  The Amazon Resource Name (ARN) of the target group.


=head2 B<REQUIRED> Type => Str

  The type of action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

