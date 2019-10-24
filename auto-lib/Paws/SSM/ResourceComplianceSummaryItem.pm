# Generated from default/object.tt
package Paws::SSM::ResourceComplianceSummaryItem;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_ComplianceExecutionSummary SSM_NonCompliantSummary SSM_CompliantSummary/;
  has ComplianceType => (is => 'ro', isa => Str);
  has CompliantSummary => (is => 'ro', isa => SSM_CompliantSummary);
  has ExecutionSummary => (is => 'ro', isa => SSM_ComplianceExecutionSummary);
  has NonCompliantSummary => (is => 'ro', isa => SSM_NonCompliantSummary);
  has OverallSeverity => (is => 'ro', isa => Str);
  has ResourceId => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'Status' => {
                             'type' => 'Str'
                           },
               'ExecutionSummary' => {
                                       'class' => 'Paws::SSM::ComplianceExecutionSummary',
                                       'type' => 'SSM_ComplianceExecutionSummary'
                                     },
               'ComplianceType' => {
                                     'type' => 'Str'
                                   },
               'NonCompliantSummary' => {
                                          'class' => 'Paws::SSM::NonCompliantSummary',
                                          'type' => 'SSM_NonCompliantSummary'
                                        },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'OverallSeverity' => {
                                      'type' => 'Str'
                                    },
               'CompliantSummary' => {
                                       'class' => 'Paws::SSM::CompliantSummary',
                                       'type' => 'SSM_CompliantSummary'
                                     }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ResourceComplianceSummaryItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ResourceComplianceSummaryItem object:

  $service_obj->Method(Att1 => { ComplianceType => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ResourceComplianceSummaryItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceType

=head1 DESCRIPTION

Compliance summary information for a specific resource.

=head1 ATTRIBUTES


=head2 ComplianceType => Str

  The compliance type.


=head2 CompliantSummary => SSM_CompliantSummary

  A list of items that are compliant for the resource.


=head2 ExecutionSummary => SSM_ComplianceExecutionSummary

  Information about the execution.


=head2 NonCompliantSummary => SSM_NonCompliantSummary

  A list of items that aren't compliant for the resource.


=head2 OverallSeverity => Str

  The highest severity item found for the resource. The resource is
compliant for this item.


=head2 ResourceId => Str

  The resource ID.


=head2 ResourceType => Str

  The resource type.


=head2 Status => Str

  The compliance status for the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

