package Paws::MTurk::ReviewPolicy;
  use Moose;
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::PolicyParameter]');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ReviewPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::ReviewPolicy object:

  $service_obj->Method(Att1 => { Parameters => $value, ..., PolicyName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::ReviewPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->Parameters

=head1 DESCRIPTION

HIT Review Policy data structures represent HIT review policies, which
you specify when you create a HIT.

=head1 ATTRIBUTES


=head2 Parameters => ArrayRef[L<Paws::MTurk::PolicyParameter>]

  Name of the parameter from the Review policy.


=head2 B<REQUIRED> PolicyName => Str

  Name of a Review Policy: SimplePlurality/2011-09-01 or
ScoreMyKnownAnswers/2011-09-01



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

