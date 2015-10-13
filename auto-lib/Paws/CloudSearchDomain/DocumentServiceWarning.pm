package Paws::CloudSearchDomain::DocumentServiceWarning;
  use Moose;
  has message => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::DocumentServiceWarning

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::DocumentServiceWarning object:

  $service_obj->Method(Att1 => { message => $value, ..., message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::DocumentServiceWarning object:

  $result = $service_obj->Method(...);
  $result->Att1->message

=head1 DESCRIPTION

A warning returned by the document service when an issue is discovered
while processing an upload request.

=head1 ATTRIBUTES

=head2 message => Str

  The description for a warning returned by the document service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

