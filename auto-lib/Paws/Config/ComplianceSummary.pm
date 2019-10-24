# Generated from default/object.tt
package Paws::Config::ComplianceSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw/Config_ComplianceContributorCount/;
  has ComplianceSummaryTimestamp => (is => 'ro', isa => Str);
  has CompliantResourceCount => (is => 'ro', isa => Config_ComplianceContributorCount);
  has NonCompliantResourceCount => (is => 'ro', isa => Config_ComplianceContributorCount);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NonCompliantResourceCount' => {
                                                'class' => 'Paws::Config::ComplianceContributorCount',
                                                'type' => 'Config_ComplianceContributorCount'
                                              },
               'ComplianceSummaryTimestamp' => {
                                                 'type' => 'Str'
                                               },
               'CompliantResourceCount' => {
                                             'class' => 'Paws::Config::ComplianceContributorCount',
                                             'type' => 'Config_ComplianceContributorCount'
                                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ComplianceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ComplianceSummary object:

  $service_obj->Method(Att1 => { ComplianceSummaryTimestamp => $value, ..., NonCompliantResourceCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ComplianceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceSummaryTimestamp

=head1 DESCRIPTION

The number of AWS Config rules or AWS resources that are compliant and
noncompliant.

=head1 ATTRIBUTES


=head2 ComplianceSummaryTimestamp => Str

  The time that AWS Config created the compliance summary.


=head2 CompliantResourceCount => Config_ComplianceContributorCount

  The number of AWS Config rules or AWS resources that are compliant, up
to a maximum of 25 for rules and 100 for resources.


=head2 NonCompliantResourceCount => Config_ComplianceContributorCount

  The number of AWS Config rules or AWS resources that are noncompliant,
up to a maximum of 25 for rules and 100 for resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

