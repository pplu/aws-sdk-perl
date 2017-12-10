package Paws::ACM::ResourceRecord;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::ResourceRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACM::ResourceRecord object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACM::ResourceRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Contains a DNS record value that you can use to can use to validate
ownership or control of a domain. This is used by the
DescribeCertificate action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the DNS record to create in your domain. This is supplied
by ACM.


=head2 B<REQUIRED> Type => Str

  The type of DNS record. Currently this can be C<CNAME>.


=head2 B<REQUIRED> Value => Str

  The value of the CNAME record to add to your DNS database. This is
supplied by ACM.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

