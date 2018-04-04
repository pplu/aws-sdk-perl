package Paws::Config::AggregateComplianceCount;
  use Moose;
  has ComplianceSummary => (is => 'ro', isa => 'Paws::Config::ComplianceSummary');
  has GroupName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::AggregateComplianceCount

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::AggregateComplianceCount object:

  $service_obj->Method(Att1 => { ComplianceSummary => $value, ..., GroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::AggregateComplianceCount object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceSummary

=head1 DESCRIPTION

Returns the number of compliant and noncompliant rules for one or more
accounts and regions in an aggregator.

=head1 ATTRIBUTES


=head2 ComplianceSummary => L<Paws::Config::ComplianceSummary>

  The number of compliant and noncompliant AWS Config rules.


=head2 GroupName => Str

  The 12-digit account ID or region based on the GroupByKey value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

