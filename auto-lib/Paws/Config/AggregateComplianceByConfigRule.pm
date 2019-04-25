package Paws::Config::AggregateComplianceByConfigRule;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has AwsRegion => (is => 'ro', isa => 'Str');
  has Compliance => (is => 'ro', isa => 'Paws::Config::Compliance');
  has ConfigRuleName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::AggregateComplianceByConfigRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::AggregateComplianceByConfigRule object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., ConfigRuleName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::AggregateComplianceByConfigRule object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Indicates whether an AWS Config rule is compliant based on account ID,
region, compliance, and rule name.

A rule is compliant if all of the resources that the rule evaluated
comply with it. It is noncompliant if any of these resources do not
comply.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The 12-digit account ID of the source account.


=head2 AwsRegion => Str

  The source region from where the data is aggregated.


=head2 Compliance => L<Paws::Config::Compliance>

  Indicates whether an AWS resource or AWS Config rule is compliant and
provides the number of contributors that affect the compliance.


=head2 ConfigRuleName => Str

  The name of the AWS Config rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

