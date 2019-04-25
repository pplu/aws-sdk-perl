package Paws::SSM::ComplianceItemEntry;
  use Moose;
  has Details => (is => 'ro', isa => 'Paws::SSM::ComplianceItemDetails');
  has Id => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Title => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ComplianceItemEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ComplianceItemEntry object:

  $service_obj->Method(Att1 => { Details => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ComplianceItemEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

Information about a compliance item.

=head1 ATTRIBUTES


=head2 Details => L<Paws::SSM::ComplianceItemDetails>

  A "Key": "Value" tag combination for the compliance item.


=head2 Id => Str

  The compliance item ID. For example, if the compliance item is a
Windows patch, the ID could be the number of the KB article.


=head2 B<REQUIRED> Severity => Str

  The severity of the compliance status. Severity can be one of the
following: Critical, High, Medium, Low, Informational, Unspecified.


=head2 B<REQUIRED> Status => Str

  The status of the compliance item. An item is either COMPLIANT or
NON_COMPLIANT.


=head2 Title => Str

  The title of the compliance item. For example, if the compliance item
is a Windows patch, the title could be the title of the KB article for
the patch; for example: Security Update for Active Directory Federation
Services.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

