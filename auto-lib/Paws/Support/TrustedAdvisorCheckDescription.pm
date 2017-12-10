package Paws::Support::TrustedAdvisorCheckDescription;
  use Moose;
  has Category => (is => 'ro', isa => 'Str', request_name => 'category', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest'], required => 1);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Metadata => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'metadata', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::TrustedAdvisorCheckDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::TrustedAdvisorCheckDescription object:

  $service_obj->Method(Att1 => { Category => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::TrustedAdvisorCheckDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Category

=head1 DESCRIPTION

The description and metadata for a Trusted Advisor check.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Category => Str

  The category of the Trusted Advisor check.


=head2 B<REQUIRED> Description => Str

  The description of the Trusted Advisor check, which includes the alert
criteria and recommended actions (contains HTML markup).


=head2 B<REQUIRED> Id => Str

  The unique identifier for the Trusted Advisor check.


=head2 B<REQUIRED> Metadata => ArrayRef[Str|Undef]

  The column headings for the data returned by the Trusted Advisor check.
The order of the headings corresponds to the order of the data in the
B<Metadata> element of the TrustedAdvisorResourceDetail for the check.
B<Metadata> contains all the data that is shown in the Excel download,
even in those cases where the UI shows just summary data.


=head2 B<REQUIRED> Name => Str

  The display name for the Trusted Advisor check.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

