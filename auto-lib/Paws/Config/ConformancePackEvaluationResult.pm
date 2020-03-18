package Paws::Config::ConformancePackEvaluationResult;
  use Moose;
  has Annotation => (is => 'ro', isa => 'Str');
  has ComplianceType => (is => 'ro', isa => 'Str', required => 1);
  has ConfigRuleInvokedTime => (is => 'ro', isa => 'Str', required => 1);
  has EvaluationResultIdentifier => (is => 'ro', isa => 'Paws::Config::EvaluationResultIdentifier', required => 1);
  has ResultRecordedTime => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConformancePackEvaluationResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConformancePackEvaluationResult object:

  $service_obj->Method(Att1 => { Annotation => $value, ..., ResultRecordedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConformancePackEvaluationResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Annotation

=head1 DESCRIPTION

The details of a conformance pack evaluation. Provides AWS Config rule
and AWS resource type that was evaluated, the compliance of the
conformance pack, related time stamps, and supplementary information.

=head1 ATTRIBUTES


=head2 Annotation => Str

  Supplementary information about how the evaluation determined the
compliance.


=head2 B<REQUIRED> ComplianceType => Str

  The compliance type. The allowed values are C<COMPLIANT> and
C<NON_COMPLIANT>.


=head2 B<REQUIRED> ConfigRuleInvokedTime => Str

  The time when AWS Config rule evaluated AWS resource.


=head2 B<REQUIRED> EvaluationResultIdentifier => L<Paws::Config::EvaluationResultIdentifier>

  


=head2 B<REQUIRED> ResultRecordedTime => Str

  The time when AWS Config recorded the evaluation result.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

