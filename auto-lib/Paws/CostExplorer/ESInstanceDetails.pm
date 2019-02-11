package Paws::CostExplorer::ESInstanceDetails;
  use Moose;
  has CurrentGeneration => (is => 'ro', isa => 'Bool');
  has InstanceClass => (is => 'ro', isa => 'Str');
  has InstanceSize => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has SizeFlexEligible => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ESInstanceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ESInstanceDetails object:

  $service_obj->Method(Att1 => { CurrentGeneration => $value, ..., SizeFlexEligible => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ESInstanceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentGeneration

=head1 DESCRIPTION

Details about the Amazon ES instances that AWS recommends that you
purchase.

=head1 ATTRIBUTES


=head2 CurrentGeneration => Bool

  Whether the recommendation is for a current-generation instance.


=head2 InstanceClass => Str

  The class of instance that AWS recommends.


=head2 InstanceSize => Str

  The size of instance that AWS recommends.


=head2 Region => Str

  The AWS Region of the recommended reservation.


=head2 SizeFlexEligible => Bool

  Whether the recommended reservation is size flexible.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

