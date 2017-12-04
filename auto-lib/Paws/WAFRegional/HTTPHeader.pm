package Paws::WAFRegional::HTTPHeader;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::HTTPHeader

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::HTTPHeader object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::HTTPHeader object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The response from a GetSampledRequests request includes an
C<HTTPHeader> complex type that appears as C<Headers> in the response
syntax. C<HTTPHeader> contains the names and values of all of the
headers that appear in one of the web requests that were returned by
C<GetSampledRequests>.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of one of the headers in the sampled web request.


=head2 Value => Str

  The value of one of the headers in the sampled web request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

