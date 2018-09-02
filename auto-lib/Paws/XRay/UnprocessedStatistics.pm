package Paws::XRay::UnprocessedStatistics;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has RuleName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::UnprocessedStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::UnprocessedStatistics object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., RuleName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::UnprocessedStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Sampling statistics from a call to GetSamplingTargets that X-Ray could
not process.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code.


=head2 Message => Str

  The error message.


=head2 RuleName => Str

  The name of the sampling rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

