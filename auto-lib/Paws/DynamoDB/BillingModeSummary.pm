package Paws::DynamoDB::BillingModeSummary;
  use Moose;
  has BillingMode => (is => 'ro', isa => 'Str');
  has LastUpdateToPayPerRequestDateTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::BillingModeSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::BillingModeSummary object:

  $service_obj->Method(Att1 => { BillingMode => $value, ..., LastUpdateToPayPerRequestDateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::BillingModeSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->BillingMode

=head1 DESCRIPTION

Contains the details for the read/write capacity mode.

=head1 ATTRIBUTES


=head2 BillingMode => Str

  Controls how you are charged for read and write throughput and how you
manage capacity. This setting can be changed later.

=over

=item *

C<PROVISIONED> - Sets the read/write capacity mode to C<PROVISIONED>.
We recommend using C<PROVISIONED> for predictable workloads.

=item *

C<PAY_PER_REQUEST> - Sets the read/write capacity mode to
C<PAY_PER_REQUEST>. We recommend using C<PAY_PER_REQUEST> for
unpredictable workloads.

=back



=head2 LastUpdateToPayPerRequestDateTime => Str

  Represents the time when C<PAY_PER_REQUEST> was last set as the
read/write capacity mode.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

