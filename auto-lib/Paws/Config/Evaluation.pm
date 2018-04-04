package Paws::Config::Evaluation;
  use Moose;
  has Annotation => (is => 'ro', isa => 'Str');
  has ComplianceResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ComplianceResourceType => (is => 'ro', isa => 'Str', required => 1);
  has ComplianceType => (is => 'ro', isa => 'Str', required => 1);
  has OrderingTimestamp => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::Evaluation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::Evaluation object:

  $service_obj->Method(Att1 => { Annotation => $value, ..., OrderingTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::Evaluation object:

  $result = $service_obj->Method(...);
  $result->Att1->Annotation

=head1 DESCRIPTION

Identifies an AWS resource and indicates whether it complies with the
AWS Config rule that it was evaluated against.

=head1 ATTRIBUTES


=head2 Annotation => Str

  Supplementary information about how the evaluation determined the
compliance.


=head2 B<REQUIRED> ComplianceResourceId => Str

  The ID of the AWS resource that was evaluated.


=head2 B<REQUIRED> ComplianceResourceType => Str

  The type of AWS resource that was evaluated.


=head2 B<REQUIRED> ComplianceType => Str

  Indicates whether the AWS resource complies with the AWS Config rule
that it was evaluated against.

For the C<Evaluation> data type, AWS Config supports only the
C<COMPLIANT>, C<NON_COMPLIANT>, and C<NOT_APPLICABLE> values. AWS
Config does not support the C<INSUFFICIENT_DATA> value for this data
type.

Similarly, AWS Config does not accept C<INSUFFICIENT_DATA> as the value
for C<ComplianceType> from a C<PutEvaluations> request. For example, an
AWS Lambda function for a custom AWS Config rule cannot pass an
C<INSUFFICIENT_DATA> value to AWS Config.


=head2 B<REQUIRED> OrderingTimestamp => Str

  The time of the event in AWS Config that triggered the evaluation. For
event-based evaluations, the time indicates when AWS Config created the
configuration item that triggered the evaluation. For periodic
evaluations, the time indicates when AWS Config triggered the
evaluation at the frequency that you specified (for example, every 24
hours).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

