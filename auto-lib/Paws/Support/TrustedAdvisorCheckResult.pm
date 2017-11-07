package Paws::Support::TrustedAdvisorCheckResult;
  use Moose;
  has CategorySpecificSummary => (is => 'ro', isa => 'Paws::Support::TrustedAdvisorCategorySpecificSummary', request_name => 'categorySpecificSummary', traits => ['NameInRequest'], required => 1);
  has CheckId => (is => 'ro', isa => 'Str', request_name => 'checkId', traits => ['NameInRequest'], required => 1);
  has FlaggedResources => (is => 'ro', isa => 'ArrayRef[Paws::Support::TrustedAdvisorResourceDetail]', request_name => 'flaggedResources', traits => ['NameInRequest'], required => 1);
  has ResourcesSummary => (is => 'ro', isa => 'Paws::Support::TrustedAdvisorResourcesSummary', request_name => 'resourcesSummary', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', request_name => 'timestamp', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::TrustedAdvisorCheckResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::TrustedAdvisorCheckResult object:

  $service_obj->Method(Att1 => { CategorySpecificSummary => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::TrustedAdvisorCheckResult object:

  $result = $service_obj->Method(...);
  $result->Att1->CategorySpecificSummary

=head1 DESCRIPTION

The results of a Trusted Advisor check returned by
DescribeTrustedAdvisorCheckResult.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CategorySpecificSummary => L<Paws::Support::TrustedAdvisorCategorySpecificSummary>

  Summary information that relates to the category of the check. Cost
Optimizing is the only category that is currently supported.


=head2 B<REQUIRED> CheckId => Str

  The unique identifier for the Trusted Advisor check.


=head2 B<REQUIRED> FlaggedResources => ArrayRef[L<Paws::Support::TrustedAdvisorResourceDetail>]

  The details about each resource listed in the check result.


=head2 B<REQUIRED> ResourcesSummary => L<Paws::Support::TrustedAdvisorResourcesSummary>

  


=head2 B<REQUIRED> Status => Str

  The alert status of the check: "ok" (green), "warning" (yellow),
"error" (red), or "not_available".


=head2 B<REQUIRED> Timestamp => Str

  The time of the last refresh of the check.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

