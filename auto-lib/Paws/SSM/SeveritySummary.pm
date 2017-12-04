package Paws::SSM::SeveritySummary;
  use Moose;
  has CriticalCount => (is => 'ro', isa => 'Int');
  has HighCount => (is => 'ro', isa => 'Int');
  has InformationalCount => (is => 'ro', isa => 'Int');
  has LowCount => (is => 'ro', isa => 'Int');
  has MediumCount => (is => 'ro', isa => 'Int');
  has UnspecifiedCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::SeveritySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::SeveritySummary object:

  $service_obj->Method(Att1 => { CriticalCount => $value, ..., UnspecifiedCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::SeveritySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CriticalCount

=head1 DESCRIPTION

The number of managed instances found for each patch severity level
defined in the request filter.

=head1 ATTRIBUTES


=head2 CriticalCount => Int

  The total number of resources or compliance items that have a severity
level of critical. Critical severity is determined by the organization
that published the compliance items.


=head2 HighCount => Int

  The total number of resources or compliance items that have a severity
level of high. High severity is determined by the organization that
published the compliance items.


=head2 InformationalCount => Int

  The total number of resources or compliance items that have a severity
level of informational. Informational severity is determined by the
organization that published the compliance items.


=head2 LowCount => Int

  The total number of resources or compliance items that have a severity
level of low. Low severity is determined by the organization that
published the compliance items.


=head2 MediumCount => Int

  The total number of resources or compliance items that have a severity
level of medium. Medium severity is determined by the organization that
published the compliance items.


=head2 UnspecifiedCount => Int

  The total number of resources or compliance items that have a severity
level of unspecified. Unspecified severity is determined by the
organization that published the compliance items.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

