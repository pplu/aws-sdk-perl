# Generated from default/object.tt
package Paws::IoT::AuditFinding;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_NonCompliantResource IoT_RelatedResource/;
  has CheckName => (is => 'ro', isa => Str);
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
                                       'class' => 'Paws::IoT::RelatedResource',
                                       'type' => 'ArrayRef[IoT_RelatedResource]'
                                     },
               'TaskStartTime' => {
                                    'type' => 'Str'
                                  },
               'CheckName' => {
                                'type' => 'Str'
                              },
               'ReasonForNonCompliance' => {
                                             'type' => 'Str'
                                           },
               'TaskId' => {
                             'type' => 'Str'
                           },
               'ReasonForNonComplianceCode' => {
                                                 'type' => 'Str'
                                               },
               'FindingTime' => {
                                  'type' => 'Str'
                                },
               'NonCompliantResource' => {
                                           'class' => 'Paws::IoT::NonCompliantResource',
                                           'type' => 'IoT_NonCompliantResource'
                                         },
               'Severity' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'RelatedResources' => 'relatedResources',
                       'TaskStartTime' => 'taskStartTime',
                       'CheckName' => 'checkName',
                       'ReasonForNonCompliance' => 'reasonForNonCompliance',
                       'TaskId' => 'taskId',
                       'ReasonForNonComplianceCode' => 'reasonForNonComplianceCode',
                       'FindingTime' => 'findingTime',
                       'NonCompliantResource' => 'nonCompliantResource',
                       'Severity' => 'severity'
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


=head2 FindingTime => Str

  The time the result (finding) was discovered.


=head2 NonCompliantResource => IoT_NonCompliantResource

  The resource that was found to be non-compliant with the audit check.


=head2 ReasonForNonCompliance => Str

  The reason the resource was non-compliant.


=head2 ReasonForNonComplianceCode => Str

  A code which indicates the reason that the resource was non-compliant.


=head2 RelatedResources => ArrayRef[IoT_RelatedResource]

  The list of related resources.


=head2 Severity => Str

  The severity of the result (finding).


=head2 TaskId => Str

  The ID of the audit that generated this result (finding)


=head2 TaskStartTime => Str

  The time the audit started.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

