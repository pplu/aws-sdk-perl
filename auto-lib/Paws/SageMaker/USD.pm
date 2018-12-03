package Paws::SageMaker::USD;
  use Moose;
  has Cents => (is => 'ro', isa => 'Int');
  has Dollars => (is => 'ro', isa => 'Int');
  has TenthFractionsOfACent => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::USD

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::USD object:

  $service_obj->Method(Att1 => { Cents => $value, ..., TenthFractionsOfACent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::USD object:

  $result = $service_obj->Method(...);
  $result->Att1->Cents

=head1 DESCRIPTION

Represents an amount of money in United States dollars/

=head1 ATTRIBUTES


=head2 Cents => Int

  The fractional portion, in cents, of the amount.


=head2 Dollars => Int

  The whole number of dollars in the amount.


=head2 TenthFractionsOfACent => Int

  Fractions of a cent, in tenths.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

