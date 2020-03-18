package Paws::CodeStarNotifications::TargetSummary;
  use Moose;
  has TargetAddress => (is => 'ro', isa => 'Str');
  has TargetStatus => (is => 'ro', isa => 'Str');
  has TargetType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::TargetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStarNotifications::TargetSummary object:

  $service_obj->Method(Att1 => { TargetAddress => $value, ..., TargetType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStarNotifications::TargetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->TargetAddress

=head1 DESCRIPTION

Information about the targets specified for a notification rule.

=head1 ATTRIBUTES


=head2 TargetAddress => Str

  The Amazon Resource Name (ARN) of the SNS topic.


=head2 TargetStatus => Str

  The status of the target.


=head2 TargetType => Str

  The type of the target (for example, SNS).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

