package Paws::MTurk::BonusPayment;
  use Moose;
  has AssignmentId => (is => 'ro', isa => 'Str');
  has BonusAmount => (is => 'ro', isa => 'Str');
  has GrantTime => (is => 'ro', isa => 'Str');
  has Reason => (is => 'ro', isa => 'Str');
  has WorkerId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::BonusPayment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::BonusPayment object:

  $service_obj->Method(Att1 => { AssignmentId => $value, ..., WorkerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::BonusPayment object:

  $result = $service_obj->Method(...);
  $result->Att1->AssignmentId

=head1 DESCRIPTION

An object representing a Bonus payment paid to a Worker.

=head1 ATTRIBUTES


=head2 AssignmentId => Str

  The ID of the assignment associated with this bonus payment.


=head2 BonusAmount => Str

  


=head2 GrantTime => Str

  The date and time of when the bonus was granted.


=head2 Reason => Str

  The Reason text given when the bonus was granted, if any.


=head2 WorkerId => Str

  The ID of the Worker to whom the bonus was paid.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

