package Paws::FraudDetector::Rule;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', request_name => 'detectorId', traits => ['NameInRequest'], required => 1);
  has RuleId => (is => 'ro', isa => 'Str', request_name => 'ruleId', traits => ['NameInRequest'], required => 1);
  has RuleVersion => (is => 'ro', isa => 'Str', request_name => 'ruleVersion', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::Rule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::Rule object:

  $service_obj->Method(Att1 => { DetectorId => $value, ..., RuleVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->DetectorId

=head1 DESCRIPTION

A rule.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

  The detector for which the rule is associated.


=head2 B<REQUIRED> RuleId => Str

  The rule ID.


=head2 B<REQUIRED> RuleVersion => Str

  The rule version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

