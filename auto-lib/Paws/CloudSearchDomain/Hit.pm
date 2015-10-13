package Paws::CloudSearchDomain::Hit;
  use Moose;
  has exprs => (is => 'ro', isa => 'Paws::CloudSearchDomain::Exprs');
  has fields => (is => 'ro', isa => 'Paws::CloudSearchDomain::Fields');
  has highlights => (is => 'ro', isa => 'Paws::CloudSearchDomain::Highlights');
  has id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::Hit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::Hit object:

  $service_obj->Method(Att1 => { exprs => $value, ..., id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::Hit object:

  $result = $service_obj->Method(...);
  $result->Att1->exprs

=head1 DESCRIPTION

Information about a document that matches the search request.

=head1 ATTRIBUTES

=head2 exprs => L<Paws::CloudSearchDomain::Exprs>

  The expressions returned from a document that matches the search
request.

=head2 fields => L<Paws::CloudSearchDomain::Fields>

  The fields returned from a document that matches the search request.

=head2 highlights => L<Paws::CloudSearchDomain::Highlights>

  The highlights returned from a document that matches the search
request.

=head2 id => Str

  The document ID of a document that matches the search request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

