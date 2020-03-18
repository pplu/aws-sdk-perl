package Paws::FraudDetector::RuleDetail;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str', request_name => 'createdTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DetectorId => (is => 'ro', isa => 'Str', request_name => 'detectorId', traits => ['NameInRequest']);
  has Expression => (is => 'ro', isa => 'Str', request_name => 'expression', traits => ['NameInRequest']);
  has Language => (is => 'ro', isa => 'Str', request_name => 'language', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has Outcomes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'outcomes', traits => ['NameInRequest']);
  has RuleId => (is => 'ro', isa => 'Str', request_name => 'ruleId', traits => ['NameInRequest']);
  has RuleVersion => (is => 'ro', isa => 'Str', request_name => 'ruleVersion', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::RuleDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::RuleDetail object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., RuleVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::RuleDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

The details of the rule.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  The timestamp of when the rule was created.


=head2 Description => Str

  The rule description.


=head2 DetectorId => Str

  The detector for which the rule is associated.


=head2 Expression => Str

  The rule expression.


=head2 Language => Str

  The rule language.


=head2 LastUpdatedTime => Str

  Timestamp of the last time the rule was updated.


=head2 Outcomes => ArrayRef[Str|Undef]

  The rule outcomes.


=head2 RuleId => Str

  The rule ID.


=head2 RuleVersion => Str

  The rule version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

