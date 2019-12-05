package Paws::Config::ConformancePackRuleCompliance;
  use Moose;
  has ComplianceType => (is => 'ro', isa => 'Str');
  has ConfigRuleName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConformancePackRuleCompliance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConformancePackRuleCompliance object:

  $service_obj->Method(Att1 => { ComplianceType => $value, ..., ConfigRuleName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConformancePackRuleCompliance object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceType

=head1 DESCRIPTION

Compliance information of one or more AWS Config rules within a
conformance pack. You can filter using AWS Config rule names and
compliance types.

=head1 ATTRIBUTES


=head2 ComplianceType => Str

  Compliance of the AWS Config rule

The allowed values are C<COMPLIANT> and C<NON_COMPLIANT>.


=head2 ConfigRuleName => Str

  Name of the config rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

