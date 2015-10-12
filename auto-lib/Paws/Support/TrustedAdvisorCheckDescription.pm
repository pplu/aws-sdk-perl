package Paws::Support::TrustedAdvisorCheckDescription;
  use Moose;
  has category => (is => 'ro', isa => 'Str', required => 1);
  has description => (is => 'ro', isa => 'Str', required => 1);
  has id => (is => 'ro', isa => 'Str', required => 1);
  has metadata => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::TrustedAdvisorCheckDescription

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::TrustedAdvisorCheckDescription object:

  $service_obj->Method(Att1 => { category => $value, ..., name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::TrustedAdvisorCheckDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->category

=head1 ATTRIBUTES

=head2 B<REQUIRED> category => Str

  The category of the Trusted Advisor check.

=head2 B<REQUIRED> description => Str

  The description of the Trusted Advisor check, which includes the alert
criteria and recommended actions (contains HTML markup).

=head2 B<REQUIRED> id => Str

  The unique identifier for the Trusted Advisor check.

=head2 B<REQUIRED> metadata => ArrayRef[Str]

  The column headings for the data returned by the Trusted Advisor check.
The order of the headings corresponds to the order of the data in the
B<Metadata> element of the TrustedAdvisorResourceDetail for the check.
B<Metadata> contains all the data that is shown in the Excel download,
even in those cases where the UI shows just summary data.

=head2 B<REQUIRED> name => Str

  The display name for the Trusted Advisor check.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

