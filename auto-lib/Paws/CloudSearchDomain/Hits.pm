package Paws::CloudSearchDomain::Hits;
  use Moose;
  has Cursor => (is => 'ro', isa => 'Str', request_name => 'cursor', traits => ['NameInRequest']);
  has Found => (is => 'ro', isa => 'Int', request_name => 'found', traits => ['NameInRequest']);
  has Hit => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearchDomain::Hit]', request_name => 'hit', traits => ['NameInRequest']);
  has Start => (is => 'ro', isa => 'Int', request_name => 'start', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::Hits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::Hits object:

  $service_obj->Method(Att1 => { Cursor => $value, ..., Start => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::Hits object:

  $result = $service_obj->Method(...);
  $result->Att1->Cursor

=head1 DESCRIPTION

The collection of documents that match the search request.

=head1 ATTRIBUTES


=head2 Cursor => Str

  A cursor that can be used to retrieve the next set of matching
documents when you want to page through a large result set.


=head2 Found => Int

  The total number of documents that match the search request.


=head2 Hit => ArrayRef[L<Paws::CloudSearchDomain::Hit>]

  A document that matches the search request.


=head2 Start => Int

  The index of the first matching document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

