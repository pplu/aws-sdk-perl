# Generated from default/object.tt
package Paws::Config::AggregateEvaluationResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw/Config_EvaluationResultIdentifier/;
  has AccountId => (is => 'ro', isa => Str);
  has Annotation => (is => 'ro', isa => Str);
  has AwsRegion => (is => 'ro', isa => Str);
  has ComplianceType => (is => 'ro', isa => Str);
  has ConfigRuleInvokedTime => (is => 'ro', isa => Str);
  has EvaluationResultIdentifier => (is => 'ro', isa => Config_EvaluationResultIdentifier);
  has ResultRecordedTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ComplianceType' => {
                                     'type' => 'Str'
                                   },
               'AwsRegion' => {
                                'type' => 'Str'
                              },
               'ConfigRuleInvokedTime' => {
                                            'type' => 'Str'
                                          },
               'Annotation' => {
                                 'type' => 'Str'
                               },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'ResultRecordedTime' => {
                                         'type' => 'Str'
                                       },
               'EvaluationResultIdentifier' => {
                                                 'class' => 'Paws::Config::EvaluationResultIdentifier',
                                                 'type' => 'Config_EvaluationResultIdentifier'
                                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::AggregateEvaluationResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::AggregateEvaluationResult object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., ResultRecordedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::AggregateEvaluationResult object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The details of an AWS Config evaluation for an account ID and region in
an aggregator. Provides the AWS resource that was evaluated, the
compliance of the resource, related time stamps, and supplementary
information.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The 12-digit account ID of the source account.


=head2 Annotation => Str

  Supplementary information about how the agrregate evaluation determined
the compliance.


=head2 AwsRegion => Str

  The source region from where the data is aggregated.


=head2 ComplianceType => Str

  The resource compliance status.

For the C<AggregationEvaluationResult> data type, AWS Config supports
only the C<COMPLIANT> and C<NON_COMPLIANT>. AWS Config does not support
the C<NOT_APPLICABLE> and C<INSUFFICIENT_DATA> value.


=head2 ConfigRuleInvokedTime => Str

  The time when the AWS Config rule evaluated the AWS resource.


=head2 EvaluationResultIdentifier => Config_EvaluationResultIdentifier

  Uniquely identifies the evaluation result.


=head2 ResultRecordedTime => Str

  The time when AWS Config recorded the aggregate evaluation result.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

