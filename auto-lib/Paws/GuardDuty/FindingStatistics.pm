package Paws::GuardDuty::FindingStatistics;
  use Moose;
  has CountBySeverity => (is => 'ro', isa => 'Paws::GuardDuty::__mapOfCountBySeverityFindingStatistic', request_name => 'countBySeverity', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::FindingStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::FindingStatistics object:

  $service_obj->Method(Att1 => { CountBySeverity => $value, ..., CountBySeverity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::FindingStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->CountBySeverity

=head1 DESCRIPTION

Finding statistics object.

=head1 ATTRIBUTES


=head2 CountBySeverity => L<Paws::GuardDuty::__mapOfCountBySeverityFindingStatistic>

  Represents a map of severity to count statistic for a set of findings



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

