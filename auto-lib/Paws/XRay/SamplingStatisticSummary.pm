package Paws::XRay::SamplingStatisticSummary;
  use Moose;
  has BorrowCount => (is => 'ro', isa => 'Int');
  has RequestCount => (is => 'ro', isa => 'Int');
  has RuleName => (is => 'ro', isa => 'Str');
  has SampledCount => (is => 'ro', isa => 'Int');
  has Timestamp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::SamplingStatisticSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::SamplingStatisticSummary object:

  $service_obj->Method(Att1 => { BorrowCount => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::SamplingStatisticSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->BorrowCount

=head1 DESCRIPTION

Aggregated request sampling data for a sampling rule across all
services for a 10 second window.

=head1 ATTRIBUTES


=head2 BorrowCount => Int

  The number of requests recorded with borrowed reservoir quota.


=head2 RequestCount => Int

  The number of requests that matched the rule.


=head2 RuleName => Str

  The name of the sampling rule.


=head2 SampledCount => Int

  The number of requests recorded.


=head2 Timestamp => Str

  The start time of the reporting window.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

