package Paws::GuardDuty::Evidence;
  use Moose;
  has ThreatIntelligenceDetails => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::ThreatIntelligenceDetail]', request_name => 'threatIntelligenceDetails', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Evidence

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Evidence object:

  $service_obj->Method(Att1 => { ThreatIntelligenceDetails => $value, ..., ThreatIntelligenceDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Evidence object:

  $result = $service_obj->Method(...);
  $result->Att1->ThreatIntelligenceDetails

=head1 DESCRIPTION

Contains information about the reason that the finding was generated.

=head1 ATTRIBUTES


=head2 ThreatIntelligenceDetails => ArrayRef[L<Paws::GuardDuty::ThreatIntelligenceDetail>]

  A list of threat intelligence details related to the evidence.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

