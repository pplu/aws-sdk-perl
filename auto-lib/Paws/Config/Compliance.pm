package Paws::Config::Compliance;
  use Moose;
  has ComplianceContributorCount => (is => 'ro', isa => 'Paws::Config::ComplianceContributorCount');
  has ComplianceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::Compliance

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::Compliance object:

  $service_obj->Method(Att1 => { ComplianceContributorCount => $value, ..., ComplianceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::Compliance object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceContributorCount

=head1 ATTRIBUTES

=head2 ComplianceContributorCount => Paws::Config::ComplianceContributorCount

  The number of AWS resources or AWS Config rules that cause a result of
C<NON_COMPLIANT>, up to a maximum of 25.

=head2 ComplianceType => Str

  Indicates whether an AWS resource or AWS Config rule is compliant.

A resource is compliant if it complies with all of the AWS Config rules
that evaluate it, and it is noncompliant if it does not comply with one
or more of these rules.

A rule is compliant if all of the resources that the rule evaluates
comply with it, and it is noncompliant if any of these resources do not
comply.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

