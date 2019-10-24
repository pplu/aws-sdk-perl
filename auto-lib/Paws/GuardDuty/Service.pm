# Generated from default/object.tt
package Paws::GuardDuty::Service;
  use Moo;
  use Types::Standard qw/Bool Int Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_Action/;
  has Action => (is => 'ro', isa => GuardDuty_Action);
  has Archived => (is => 'ro', isa => Bool);
  has Count => (is => 'ro', isa => Int);
  has DetectorId => (is => 'ro', isa => Str);
  has EventFirstSeen => (is => 'ro', isa => Str);
  has EventLastSeen => (is => 'ro', isa => Str);
  has ResourceRole => (is => 'ro', isa => Str);
  has ServiceName => (is => 'ro', isa => Str);
  has UserFeedback => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceName' => {
                                  'type' => 'Str'
                                },
               'DetectorId' => {
                                 'type' => 'Str'
                               },
               'Archived' => {
                               'type' => 'Bool'
                             },
               'EventLastSeen' => {
                                    'type' => 'Str'
                                  },
               'EventFirstSeen' => {
                                     'type' => 'Str'
                                   },
               'UserFeedback' => {
                                   'type' => 'Str'
                                 },
               'Action' => {
                             'class' => 'Paws::GuardDuty::Action',
                             'type' => 'GuardDuty_Action'
                           },
               'Count' => {
                            'type' => 'Int'
                          },
               'ResourceRole' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'ServiceName' => 'serviceName',
                       'DetectorId' => 'detectorId',
                       'Archived' => 'archived',
                       'EventLastSeen' => 'eventLastSeen',
                       'EventFirstSeen' => 'eventFirstSeen',
                       'UserFeedback' => 'userFeedback',
                       'Action' => 'action',
                       'Count' => 'count',
                       'ResourceRole' => 'resourceRole'
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

This class has no description

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

