package Paws::WorkMail::OrganizationSummary;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::OrganizationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkMail::OrganizationSummary object:

  $service_obj->Method(Att1 => { Alias => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkMail::OrganizationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Alias

=head1 DESCRIPTION

The brief overview associated with an organization.

=head1 ATTRIBUTES


=head2 Alias => Str

  The alias associated with the organization.


=head2 ErrorMessage => Str

  The error message associated with the organization. It is only present
if unexpected behavior has occurred with regards to the organization.
It provides insight or solutions regarding unexpected behavior.


=head2 OrganizationId => Str

  The identifier associated with the organization.


=head2 State => Str

  The state associated with the organization.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

