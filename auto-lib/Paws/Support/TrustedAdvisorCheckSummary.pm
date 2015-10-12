package Paws::Support::TrustedAdvisorCheckSummary;
  use Moose;
  has categorySpecificSummary => (is => 'ro', isa => 'Paws::Support::TrustedAdvisorCategorySpecificSummary', required => 1);
  has checkId => (is => 'ro', isa => 'Str', required => 1);
  has hasFlaggedResources => (is => 'ro', isa => 'Bool');
  has resourcesSummary => (is => 'ro', isa => 'Paws::Support::TrustedAdvisorResourcesSummary', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);
  has timestamp => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::TrustedAdvisorCheckSummary

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::TrustedAdvisorCheckSummary object:

  $service_obj->Method(Att1 => { categorySpecificSummary => $value, ..., timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::TrustedAdvisorCheckSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->categorySpecificSummary

=head1 ATTRIBUTES

=head2 B<REQUIRED> categorySpecificSummary => Paws::Support::TrustedAdvisorCategorySpecificSummary

  Summary information that relates to the category of the check. Cost
Optimizing is the only category that is currently supported.

=head2 B<REQUIRED> checkId => Str

  The unique identifier for the Trusted Advisor check.

=head2 hasFlaggedResources => Bool

  Specifies whether the Trusted Advisor check has flagged resources.

=head2 B<REQUIRED> resourcesSummary => Paws::Support::TrustedAdvisorResourcesSummary

  

=head2 B<REQUIRED> status => Str

  The alert status of the check: "ok" (green), "warning" (yellow),
"error" (red), or "not_available".

=head2 B<REQUIRED> timestamp => Str

  The time of the last refresh of the check.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

