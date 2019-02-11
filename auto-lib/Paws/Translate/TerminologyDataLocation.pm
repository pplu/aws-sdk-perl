package Paws::Translate::TerminologyDataLocation;
  use Moose;
  has Location => (is => 'ro', isa => 'Str', required => 1);
  has RepositoryType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TerminologyDataLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Translate::TerminologyDataLocation object:

  $service_obj->Method(Att1 => { Location => $value, ..., RepositoryType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Translate::TerminologyDataLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->Location

=head1 DESCRIPTION

The location of the custom terminology data.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Location => Str

  The location of the custom terminology data.


=head2 B<REQUIRED> RepositoryType => Str

  The repository type for the custom terminology data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

