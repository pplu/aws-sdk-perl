package Paws::GuardDuty::Service;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::GuardDuty::Action', request_name => 'action', traits => ['NameInRequest']);
  has Archived => (is => 'ro', isa => 'Bool', request_name => 'archived', traits => ['NameInRequest']);
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
  has DetectorId => (is => 'ro', isa => 'Str', request_name => 'detectorId', traits => ['NameInRequest']);
  has EventFirstSeen => (is => 'ro', isa => 'Str', request_name => 'eventFirstSeen', traits => ['NameInRequest']);
  has EventLastSeen => (is => 'ro', isa => 'Str', request_name => 'eventLastSeen', traits => ['NameInRequest']);
  has ResourceRole => (is => 'ro', isa => 'Str', request_name => 'resourceRole', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
  has UserFeedback => (is => 'ro', isa => 'Str', request_name => 'userFeedback', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Service

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Service object:

  $service_obj->Method(Att1 => { Action => $value, ..., UserFeedback => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Service object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Additional information assigned to the generated finding by GuardDuty.

=head1 ATTRIBUTES


=head2 Action => L<Paws::GuardDuty::Action>

  Information about the activity described in a finding.


=head2 Archived => Bool

  Indicates whether this finding is archived.


=head2 Count => Int

  Total count of the occurrences of this finding type.


=head2 DetectorId => Str

  Detector ID for the GuardDuty service.


=head2 EventFirstSeen => Str

  First seen timestamp of the activity that prompted GuardDuty to
generate this finding.


=head2 EventLastSeen => Str

  Last seen timestamp of the activity that prompted GuardDuty to generate
this finding.


=head2 ResourceRole => Str

  Resource role information for this finding.


=head2 ServiceName => Str

  The name of the AWS service (GuardDuty) that generated a finding.


=head2 UserFeedback => Str

  Feedback left about the finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

