package Paws::CloudSearchDomain::SuggestStatus;
  use Moose;
  has Rid => (is => 'ro', isa => 'Str', request_name => 'rid', traits => ['NameInRequest']);
  has Timems => (is => 'ro', isa => 'Int', request_name => 'timems', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::SuggestStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::SuggestStatus object:

  $service_obj->Method(Att1 => { Rid => $value, ..., Timems => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::SuggestStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Rid

=head1 DESCRIPTION

Contains the resource id (C<rid>) and the time it took to process the
request (C<timems>).

=head1 ATTRIBUTES


=head2 Rid => Str

  The encrypted resource ID for the request.


=head2 Timems => Int

  How long it took to process the request, in milliseconds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

