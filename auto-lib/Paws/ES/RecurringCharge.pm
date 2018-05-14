package Paws::ES::RecurringCharge;
  use Moose;
  has RecurringChargeAmount => (is => 'ro', isa => 'Num');
  has RecurringChargeFrequency => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::RecurringCharge

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::RecurringCharge object:

  $service_obj->Method(Att1 => { RecurringChargeAmount => $value, ..., RecurringChargeFrequency => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::RecurringCharge object:

  $result = $service_obj->Method(...);
  $result->Att1->RecurringChargeAmount

=head1 DESCRIPTION

Contains the specific price and frequency of a recurring charges for a
reserved Elasticsearch instance, or for a reserved Elasticsearch
instance offering.

=head1 ATTRIBUTES


=head2 RecurringChargeAmount => Num

  The monetary amount of the recurring charge.


=head2 RecurringChargeFrequency => Str

  The frequency of the recurring charge.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

