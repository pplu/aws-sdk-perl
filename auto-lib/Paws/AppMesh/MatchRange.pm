package Paws::AppMesh::MatchRange;
  use Moose;
  has End => (is => 'ro', isa => 'Int', request_name => 'end', traits => ['NameInRequest'], required => 1);
  has Start => (is => 'ro', isa => 'Int', request_name => 'start', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::MatchRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::MatchRange object:

  $service_obj->Method(Att1 => { End => $value, ..., Start => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::MatchRange object:

  $result = $service_obj->Method(...);
  $result->Att1->End

=head1 DESCRIPTION

An object that represents the range of values to match on. The first
character of the range is included in the range, though the last
character is not. For example, if the range specified were 1-100, only
values 1-99 would be matched.

=head1 ATTRIBUTES


=head2 B<REQUIRED> End => Int

  The end of the range.


=head2 B<REQUIRED> Start => Int

  The start of the range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

