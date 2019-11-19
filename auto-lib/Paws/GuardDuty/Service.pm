# Generated from default/object.tt
package Paws::GuardDuty::Service;
  use Moo;
  use Types::Standard qw/Bool Int Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_Evidence GuardDuty_Action/;
  has Action => (is => 'ro', isa => GuardDuty_Action);
  has Archived => (is => 'ro', isa => Bool);
  has Count => (is => 'ro', isa => Int);
  has DetectorId => (is => 'ro', isa => Str);
  has EventFirstSeen => (is => 'ro', isa => Str);
  has EventLastSeen => (is => 'ro', isa => Str);
  has Evidence => (is => 'ro', isa => GuardDuty_Evidence);
  has ResourceRole => (is => 'ro', isa => Str);
  has ServiceName => (is => 'ro', isa => Str);
  has UserFeedback => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'EventFirstSeen' => 'eventFirstSeen',
                       'Evidence' => 'evidence',
                       'Archived' => 'archived',
                       'Count' => 'count',
                       'ServiceName' => 'serviceName',
                       'DetectorId' => 'detectorId',
                       'UserFeedback' => 'userFeedback',
                       'Action' => 'action',
                       'ResourceRole' => 'resourceRole',
                       'EventLastSeen' => 'eventLastSeen'
                     },
  'types' => {
               'EventFirstSeen' => {
                                     'type' => 'Str'
                                   },
               'Evidence' => {
                               'class' => 'Paws::GuardDuty::Evidence',
                               'type' => 'GuardDuty_Evidence'
                             },
               'Archived' => {
                               'type' => 'Bool'
                             },
               'ResourceRole' => {
                                   'type' => 'Str'
                                 },
               'Action' => {
                             'class' => 'Paws::GuardDuty::Action',
                             'type' => 'GuardDuty_Action'
                           },
               'EventLastSeen' => {
                                    'type' => 'Str'
                                  },
               'ServiceName' => {
                                  'type' => 'Str'
                                },
               'Count' => {
                            'type' => 'Int'
                          },
               'UserFeedback' => {
                                   'type' => 'Str'
                                 },
               'DetectorId' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


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

Contains additional information about the generated finding.

=head1 ATTRIBUTES


=head2 Action => GuardDuty_Action

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


=head2 Evidence => GuardDuty_Evidence

  An evidence object associated with the service.


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

