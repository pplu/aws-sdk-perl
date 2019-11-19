# Generated from default/object.tt
package Paws::Config::EvaluationResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw/Config_EvaluationResultIdentifier/;
  has Annotation => (is => 'ro', isa => Str);
  has ComplianceType => (is => 'ro', isa => Str);
  has ConfigRuleInvokedTime => (is => 'ro', isa => Str);
  has EvaluationResultIdentifier => (is => 'ro', isa => Config_EvaluationResultIdentifier);
  has ResultRecordedTime => (is => 'ro', isa => Str);
  has ResultToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResultRecordedTime' => {
                                         'type' => 'Str'
                                       },
               'Annotation' => {
                                 'type' => 'Str'
                               },
               'ResultToken' => {
                                  'type' => 'Str'
                                },
               'ConfigRuleInvokedTime' => {
                                            'type' => 'Str'
                                          },
               'EvaluationResultIdentifier' => {
                                                 'class' => 'Paws::Config::EvaluationResultIdentifier',
                                                 'type' => 'Config_EvaluationResultIdentifier'
                                               },
               'ComplianceType' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::EvaluationResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::EvaluationResult object:

  $service_obj->Method(Att1 => { Annotation => $value, ..., ResultToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::EvaluationResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Annotation

=head1 DESCRIPTION

The details of an AWS Config evaluation. Provides the AWS resource that
was evaluated, the compliance of the resource, related time stamps, and
supplementary information.

=head1 ATTRIBUTES


=head2 Annotation => Str

  Supplementary information about how the evaluation determined the
compliance.


=head2 ComplianceType => Str

  Indicates whether the AWS resource complies with the AWS Config rule
that evaluated it.

For the C<EvaluationResult> data type, AWS Config supports only the
C<COMPLIANT>, C<NON_COMPLIANT>, and C<NOT_APPLICABLE> values. AWS
Config does not support the C<INSUFFICIENT_DATA> value for the
C<EvaluationResult> data type.


=head2 ConfigRuleInvokedTime => Str

  The time when the AWS Config rule evaluated the AWS resource.


=head2 EvaluationResultIdentifier => Config_EvaluationResultIdentifier

  Uniquely identifies the evaluation result.


=head2 ResultRecordedTime => Str

  The time when AWS Config recorded the evaluation result.


=head2 ResultToken => Str

  An encrypted token that associates an evaluation with an AWS Config
rule. The token identifies the rule, the AWS resource being evaluated,
and the event that triggered the evaluation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

