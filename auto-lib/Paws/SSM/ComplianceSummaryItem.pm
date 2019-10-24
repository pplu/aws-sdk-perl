# Generated from default/object.tt
package Paws::SSM::ComplianceSummaryItem;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_NonCompliantSummary SSM_CompliantSummary/;
  has ComplianceType => (is => 'ro', isa => Str);
  has CompliantSummary => (is => 'ro', isa => SSM_CompliantSummary);
  has NonCompliantSummary => (is => 'ro', isa => SSM_NonCompliantSummary);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ComplianceType' => {
                                     'type' => 'Str'
                                   },
               'NonCompliantSummary' => {
                                          'class' => 'Paws::SSM::NonCompliantSummary',
                                          'type' => 'SSM_NonCompliantSummary'
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

Paws::SSM::ComplianceSummaryItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ComplianceSummaryItem object:

  $service_obj->Method(Att1 => { ComplianceType => $value, ..., NonCompliantSummary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ComplianceSummaryItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceType

=head1 DESCRIPTION

A summary of compliance information by compliance type.

=head1 ATTRIBUTES


=head2 ComplianceType => Str

  The type of compliance item. For example, the compliance type can be
Association, Patch, or Custom:string.


=head2 CompliantSummary => SSM_CompliantSummary

  A list of COMPLIANT items for the specified compliance type.


=head2 NonCompliantSummary => SSM_NonCompliantSummary

  A list of NON_COMPLIANT items for the specified compliance type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

