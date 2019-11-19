# Generated from default/object.tt
package Paws::IoT::AuditFinding;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_NonCompliantResource IoT_RelatedResource/;
  has CheckName => (is => 'ro', isa => Str);
  has FindingId => (is => 'ro', isa => Str);
  has FindingTime => (is => 'ro', isa => Str);
  has NonCompliantResource => (is => 'ro', isa => IoT_NonCompliantResource);
  has ReasonForNonCompliance => (is => 'ro', isa => Str);
  has ReasonForNonComplianceCode => (is => 'ro', isa => Str);
  has RelatedResources => (is => 'ro', isa => ArrayRef[IoT_RelatedResource]);
  has Severity => (is => 'ro', isa => Str);
  has TaskId => (is => 'ro', isa => Str);
  has TaskStartTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RelatedResources' => {
                                       'type' => 'ArrayRef[IoT_RelatedResource]',
                                       'class' => 'Paws::IoT::RelatedResource'
                                     },
               'CheckName' => {
                                'type' => 'Str'
                              },
               'Severity' => {
                               'type' => 'Str'
                             },
               'NonCompliantResource' => {
                                           'class' => 'Paws::IoT::NonCompliantResource',
                                           'type' => 'IoT_NonCompliantResource'
                                         },
               'TaskStartTime' => {
                                    'type' => 'Str'
                                  },
               'FindingId' => {
                                'type' => 'Str'
                              },
               'FindingTime' => {
                                  'type' => 'Str'
                                },
               'ReasonForNonComplianceCode' => {
                                                 'type' => 'Str'
                                               },
               'TaskId' => {
                             'type' => 'Str'
                           },
               'ReasonForNonCompliance' => {
                                             'type' => 'Str'
                                           }
             },
  'NameInRequest' => {
                       'CheckName' => 'checkName',
                       'Severity' => 'severity',
                       'RelatedResources' => 'relatedResources',
                       'NonCompliantResource' => 'nonCompliantResource',
                       'FindingId' => 'findingId',
                       'TaskStartTime' => 'taskStartTime',
                       'ReasonForNonCompliance' => 'reasonForNonCompliance',
                       'TaskId' => 'taskId',
                       'ReasonForNonComplianceCode' => 'reasonForNonComplianceCode',
                       'FindingTime' => 'findingTime'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AuditFinding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AuditFinding object:

  $service_obj->Method(Att1 => { CheckName => $value, ..., TaskStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AuditFinding object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckName

=head1 DESCRIPTION

The findings (results) of the audit.

=head1 ATTRIBUTES


=head2 CheckName => Str

  The audit check that generated this result.


=head2 FindingId => Str

  A unique identifier for this set of audit findings. This identifier is
used to apply mitigation tasks to one or more sets of findings.


=head2 FindingTime => Str

  The time the result (finding) was discovered.


=head2 NonCompliantResource => IoT_NonCompliantResource

  The resource that was found to be noncompliant with the audit check.


=head2 ReasonForNonCompliance => Str

  The reason the resource was noncompliant.


=head2 ReasonForNonComplianceCode => Str

  A code that indicates the reason that the resource was noncompliant.


=head2 RelatedResources => ArrayRef[IoT_RelatedResource]

  The list of related resources.


=head2 Severity => Str

  The severity of the result (finding).


=head2 TaskId => Str

  The ID of the audit that generated this result (finding).


=head2 TaskStartTime => Str

  The time the audit started.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

