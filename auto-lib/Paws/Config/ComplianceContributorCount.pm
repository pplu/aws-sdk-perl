package Paws::Config::ComplianceContributorCount;
  use Moose;
  has CapExceeded => (is => 'ro', isa => 'Bool');
  has CappedCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ComplianceContributorCount

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ComplianceContributorCount object:

  $service_obj->Method(Att1 => { CapExceeded => $value, ..., CappedCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ComplianceContributorCount object:

  $result = $service_obj->Method(...);
  $result->Att1->CapExceeded

=head1 DESCRIPTION

The number of AWS resources or AWS Config rules responsible for the
current compliance of the item, up to a maximum number.

=head1 ATTRIBUTES


=head2 CapExceeded => Bool

  Indicates whether the maximum count is reached.


=head2 CappedCount => Int

  The number of AWS resources or AWS Config rules responsible for the
current compliance of the item.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

