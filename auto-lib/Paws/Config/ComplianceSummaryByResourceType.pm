package Paws::Config::ComplianceSummaryByResourceType;
  use Moose;
  has ComplianceSummary => (is => 'ro', isa => 'Paws::Config::ComplianceSummary');
  has ResourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ComplianceSummaryByResourceType

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ComplianceSummaryByResourceType object:

  $service_obj->Method(Att1 => { ComplianceSummary => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ComplianceSummaryByResourceType object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceSummary

=head1 ATTRIBUTES

=head2 ComplianceSummary => Paws::Config::ComplianceSummary

  The number of AWS resources that are compliant or noncompliant, up to a
maximum of 100 for each compliance.

=head2 ResourceType => Str

  The type of AWS resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

