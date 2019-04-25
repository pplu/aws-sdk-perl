package Paws::SageMaker::PublicWorkforceTaskPrice;
  use Moose;
  has AmountInUsd => (is => 'ro', isa => 'Paws::SageMaker::USD');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::PublicWorkforceTaskPrice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::PublicWorkforceTaskPrice object:

  $service_obj->Method(Att1 => { AmountInUsd => $value, ..., AmountInUsd => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::PublicWorkforceTaskPrice object:

  $result = $service_obj->Method(...);
  $result->Att1->AmountInUsd

=head1 DESCRIPTION

Defines the amount of money paid to an Amazon Mechanical Turk worker
for each task performed.

Use one of the following prices for bounding box tasks. Prices are in
US dollars.

=over

=item *

0.036

=item *

0.048

=item *

0.060

=item *

0.072

=item *

0.120

=item *

0.240

=item *

0.360

=item *

0.480

=item *

0.600

=item *

0.720

=item *

0.840

=item *

0.960

=item *

1.080

=item *

1.200

=back

Use one of the following prices for image classification, text
classification, and custom tasks. Prices are in US dollars.

=over

=item *

0.012

=item *

0.024

=item *

0.036

=item *

0.048

=item *

0.060

=item *

0.072

=item *

0.120

=item *

0.240

=item *

0.360

=item *

0.480

=item *

0.600

=item *

0.720

=item *

0.840

=item *

0.960

=item *

1.080

=item *

1.200

=back

Use one of the following prices for semantic segmentation tasks. Prices
are in US dollars.

=over

=item *

0.840

=item *

0.960

=item *

1.080

=item *

1.200

=back


=head1 ATTRIBUTES


=head2 AmountInUsd => L<Paws::SageMaker::USD>

  Defines the amount of money paid to a worker in United States dollars.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

