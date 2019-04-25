package Paws::Config::ComplianceByConfigRule;
  use Moose;
  has Compliance => (is => 'ro', isa => 'Paws::Config::Compliance');
  has ConfigRuleName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ComplianceByConfigRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ComplianceByConfigRule object:

  $service_obj->Method(Att1 => { Compliance => $value, ..., ConfigRuleName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ComplianceByConfigRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Compliance

=head1 DESCRIPTION

Indicates whether an AWS Config rule is compliant. A rule is compliant
if all of the resources that the rule evaluated comply with it. A rule
is noncompliant if any of these resources do not comply.

=head1 ATTRIBUTES


=head2 Compliance => L<Paws::Config::Compliance>

  Indicates whether the AWS Config rule is compliant.


=head2 ConfigRuleName => Str

  The name of the AWS Config rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

